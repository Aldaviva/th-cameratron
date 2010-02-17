dojo.declare('Cameratron.Navigation', null, {

	constructor: function(grandparent, title_url, selectedId){

		this.grandparent = grandparent;

		this.galleryData = {};
		this.selectedPhotoIndex = 0;
		this.selectedPhoto = {};


		dojo.xhrGet({
			url: grandparent.base_url+'gallery/raw/'+title_url+'.json'
			,handleAs: 'json'
			,load: dojo.hitch(this, 'dataLoaded', selectedId)
			,error: function(errStr){
				alert(errStr);
			}
		});

	},
	dataLoaded: function(selectedId, data){
		dojo.forEach(data.photos, function(item, index){
			dojo.mixin(item, new Cameratron.Photo(this.grandparent)); //cast to Cameratron.Photo

			if(item.id == selectedId){
				this.selectedPhotoIndex = index;
				this.selectedPhoto = data.photos[index];
			}


		}, this);

		this.galleryData = data;

		/* bind keyboard event handlers */
		dojo.connect(dojo.doc, 'onkeypress', dojo.hitch(this, 'keyHandler'));

		dojo.query('#thumbs a').forEach(function(node, index){
			dojo.connect(node, 'onclick', this, function(event){
				event.preventDefault();
				this.replaceImage(index);
				return false;
			});
		}, this);
	},
	nextImage: function(){
		if(!this.isLast(this.selectedPhotoIndex)){
			this.replaceImage(this.selectedPhotoIndex + 1);
		}
	},
	prevImage: function(){
		if(!this.isFirst(this.selectedPhotoIndex)){
			this.replaceImage(this.selectedPhotoIndex - 1);
		}
	},
	firstImage: function(){
		if(!this.isFirst(this.selectedPhotoIndex)){
			this.replaceImage(0);
		}
	},
	lastImage: function(){
		if(!this.isLast(this.selectedPhotoIndex)){
			this.replaceImage(this.galleryData.photos.length - 1);
		}
	},
	replaceImage: function(newPhotoIndex){
		dojo.require('dojo.date.locale');
		this.selectedPhotoIndex = newPhotoIndex;

		this.selectedPhoto = this.galleryData.photos[this.selectedPhotoIndex];

		dojo.byId('selectedPhoto').src = this.selectedPhoto.getURL();
		dojo.query('#metadata input[name=photo_id]').value = this.selectedPhoto.id;
		dojo.forEach(['description', 'people', 'location', 'photographer'], function(item){
			var newValue = ( this.selectedPhoto[item] !== null)
					? this.selectedPhoto[item]
					: '';
			dojo.byId(item).value = newValue;
		}, this);
		dojo.byId('datetime').value = this.selectedPhoto.getDateTime();
		

		dojo.removeClass(dojo.query('#thumbs .active')[0], "active");

		dojo.addClass(dojo.query('#thumbs a')[this.selectedPhotoIndex], "active");

		/** TODO: make the thumbnail thing scroll */

		/** preload fore and aft */
		if(!this.isLast(this.selectedPhotoIndex)){
			this.galleryData.photos[this.selectedPhotoIndex + 1].preload();
		}

		if(!this.isFirst(this.selectedPhotoIndex)){
			this.galleryData.photos[this.selectedPhotoIndex - 1].preload();
		}


	},
	keyHandler: function(event){
		switch(event.keyCode){
			case dojo.keys.PAGE_UP:
			case dojo.keys.UP_ARROW:
			case dojo.keys.LEFT_ARROW:
				this.prevImage();
				break;
			case dojo.keys.PAGE_DOWN:
			case dojo.keys.DOWN_ARROW:
			case dojo.keys.RIGHT_ARROW:
				this.nextImage();
				break;
			case dojo.keys.HOME:
				this.firstImage();
				break;
			case dojo.keys.END:
				this.lastImage();
				break;
		}
	},
	isFirst: function(selectedPhotoIndex){
		return selectedPhotoIndex == 0;
	},
	isLast: function(selectedPhotoIndex){
		return selectedPhotoIndex == this.galleryData.photos.length - 1;
	}
});

dojo.declare('Cameratron.Photo', null, {
	constructor: function(grandparent){
		this.grandparent = grandparent;
	},
	getURL: function(){
		return this.grandparent.base_url + 'photo/resample/' + this.grandparent.getBigPhotoSize('width') + 'x' + this.grandparent.getBigPhotoSize('height') + '/' + this.id + '.jpg'
	},
	preload: function(){
		dojo.require('dojox.image');

		dojox.image.preload([this.getURL()]);
	},
	getDateTime: function(){
		if(this.datetime > 0){
			var timestamp = new Date(this.datetime * 1000);
			var newString = dojo.date.locale.format(timestamp, {
					datePattern: "MMMM d, yyyy,",
					timePattern: "h:mm"
				});
			/* why doesn't dojo's date formatter let me use custom AM/PM text?? */
			newString += dojo.date.locale.format(timestamp, {
				timePattern: 'a',
				selector: 'time'
			}).toLowerCase();
			return newString;
		} else {
			return '';
		}
	}
});