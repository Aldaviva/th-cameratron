dojo.addOnLoad(function(){
	dojo.attr('selectedPhoto', 'src', '');
	dojo.style('submit', 'display', 'none');
})

dojo.declare('Cameratron.Navigation', null, {

	constructor: function(grandparent, title_url, selectedId){

		this.grandparent = grandparent;

		this.galleryData = {};
		this.selectedPhotoIndex = 0;
		this.selectedPhoto = {};

		this.lastResizeTime = -1; //milliseconds since unix epoc
		this.resizeMinInterval = 1000; //milliseconds


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
		dojo.query('input').onkeypress(function(event){
			event.stopPropagation();
		});

		dojo.connect(dojo.doc, 'onresize', dojo.hitch(this, 'resizeWindowHandler'));
		this.resizeWindowHandler();

		dojo.query('#thumbs a').forEach(function(node, index){
			dojo.connect(node, 'onclick', this, function(event){
				event.preventDefault();
				this.replaceImage(index);
				return false;
			});
		}, this);

		dojo.connect(dojo.doc, (!dojo.isMozilla ? "onmousewheel" : "DOMMouseScroll"), function(e){
			var scroll = e[(!dojo.isMozilla ? "wheelDelta" : "detail")] * (!dojo.isMozilla ? 1 : -1);
			dojo.byId('thumbs').scrollLeft -= scroll;
		});

		this.scrollThumbs();
	},
	isValidIndex: function(index){
		return 0 <= index && index < this.galleryData.photos.length;
	},
	nextImage: function(){
		this.replaceImageOffset(1);
	},
	prevImage: function(){
		this.replaceImageOffset(-1);
	},
	firstImage: function(){
		this.replaceImage(0);
	},
	lastImage: function(){
		this.replaceImage(this.galleryData.photos.length - 1);
	},
	replaceImageOffset: function(offset){
		var newIndex = this.selectedPhotoIndex + offset;
		this.replaceImage(newIndex);
	},
	replaceImage: function(newPhotoIndex){

		if(!this.isValidIndex(newPhotoIndex)){
			return;
		}

		dojo.require('dojo.date.locale');
		this.selectedPhotoIndex = newPhotoIndex;

		this.selectedPhoto = this.galleryData.photos[this.selectedPhotoIndex];

		dojo.byId('selectedPhoto').src = this.selectedPhoto.getThumbURL();
		dojo.byId('selectedPhoto').parentNode.href = this.selectedPhoto.getFullURL();

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
		dojo.forEach([-2, -1, 1, 2], function(offset){
			this.preloadOffset(offset);
		}, this);

		this.scrollThumbs();

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
	},
	preloadOffset: function(offset){
		var newIndex = this.selectedPhotoIndex + offset;
		if(this.isValidIndex(newIndex)){
			this.galleryData.photos[newIndex].preload();
		}
	},
	scrollThumbs: function(){
		dojo.require('dojox.fx.scroll')

		var container = dojo.byId('thumbs');
		var containerWidth = container.offsetWidth;
		var scrollLeft = container.scrollLeft;
		
		var thumb = dojo.query('#thumbs .active')[0];
		var thumbWidth = thumb.offsetWidth;
		var thumbLeft = thumb.offsetLeft;
		var thumbRight = thumbLeft + thumbWidth;

		var newScrollLeft;
		if(thumbLeft < scrollLeft){ //hit left edge
			newScrollLeft = thumbRight - containerWidth + thumbWidth;
		} else if(thumbRight > scrollLeft + containerWidth){ //hit right edge
			newScrollLeft= thumbLeft - thumbWidth;
		} else {
			return;
		}
		
		dojox.fx.smoothScroll({
			win: container,
			target: {
				x: newScrollLeft,
				y: 0
			}
		}).play();
	},
	resizeWindowHandler: function(){
		var timeNow = (new Date()).getTime();
		if(timeNow >= this.lastResizeTime + this.resizeMinInterval){
			//alert('resizing');
			this.lastResize = timeNow;

			dojo.byId('selectedPhoto').src = this.selectedPhoto.getThumbURL();
			this.preloadOffset(1);
		} else {
			//alert('not resizing');
		}
	}
});

dojo.declare('Cameratron.Photo', null, {
	constructor: function(grandparent){
		this.grandparent = grandparent;
	},
	getThumbURL: function(){
		return this.grandparent.base_url + 'photo/resample/' + this.grandparent.getBigPhotoSize('width') + 'x' + this.grandparent.getBigPhotoSize('height') + '/' + this.id + '.jpg'
	},
	getFullURL: function(){
		return this.grandparent.base_url + 'photo/original/' + this.gallery_id + '/' + this.basename;
	},
	preload: function(){
		dojo.require('dojox.image');

		dojox.image.preload([this.getThumbURL()]);
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