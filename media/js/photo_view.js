dojo.declare('Cameratron.Navigation', null, {

	constructor: function(title_url, selectedId){

		this.galleryData = {};
		this.selectedPhotoIndex = 0;


		dojo.xhrGet({
			url: cameratron.base_url+'gallery/raw/'+title_url+'.json'
			,handleAs: 'json'
			,load: dojo.hitch(this, 'dataLoaded', selectedId)
			,error: function(errStr){
				alert(errStr);
			}
		});

	},
	dataLoaded: function(selectedId, data){
		this.galleryData = data;

		/* find out which index of data we are initially looking at */
		dojo.some(this.galleryData, function(item, index){
			if(item.id == selectedId){
				this.selectedPhotoIndex = index;
				return true;
			} else {
				return false;
			}
		}, this);

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
		if(this.selectedPhotoIndex < this.galleryData.photos.length - 1){
			this.replaceImage(this.selectedPhotoIndex + 1);
		}
	},
	prevImage: function(){
		if(this.selectedPhotoIndex > 0){
			this.replaceImage(this.selectedPhotoIndex - 1);
		}
	},
	replaceImage: function(newPhotoIndex){
		dojo.require('dojo.date.locale');
		this.selectedPhotoIndex = newPhotoIndex;

		var selectedPhoto = this.galleryData.photos[this.selectedPhotoIndex];

		dojo.byId('selectedPhoto').src = cameratron.base_url + 'photo/resample/' + cameratron.getBigPhotoSize('width') + 'x' + cameratron.getBigPhotoSize('height') + '/' + selectedPhoto.id + '.jpg';
		dojo.query('#metadata input[name=photo_id]').value = selectedPhoto.id;
		dojo.forEach(['description', 'people', 'location', 'photographer'], function(item){
			var newValue = ( selectedPhoto[item] !== null)
					? selectedPhoto[item]
					: '';
			dojo.byId(item).value = newValue;
		});
		if(selectedPhoto.datetime > 0){
			var timestamp = new Date(selectedPhoto.datetime * 1000);
			var newString = dojo.date.locale.format(timestamp, {
					datePattern: "MMMM d, yyyy,",
					timePattern: "h:mm"
				});
			/* why doesn't dojo's date formatter let me use custom AM/PM text?? */
			newString += dojo.date.locale.format(timestamp, {
				timePattern: 'a',
				selector: 'time'
			}).toLowerCase();
			dojo.byId('datetime').value = newString;
		} else {
			dojo.byId('datetime').value = '';
		}

		dojo.removeClass(dojo.query('#thumbs .active')[0], "active");

		dojo.addClass(dojo.query('#thumbs a')[this.selectedPhotoIndex], "active");

		/** TODO: make the thumbnail thing scroll */

	},
	keyHandler: function(event){
		key = event.keyCode;
		switch(key){
			case dojo.keys.LEFT_ARROW:
				this.prevImage();
				break;
			case dojo.keys.RIGHT_ARROW:
				this.nextImage();
				break;
			default:
				return;
		}
	}
});