dojo.require('dojo.date.locale');
dojo.require('dojox.fx.scroll')
dojo.require('dojox.image');

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
		this.resizeMinInterval = 3000; //milliseconds
		this.resizeTimer = null;


		dojo.xhrGet({
			url: grandparent.base_url+'gallery/photoList/'+title_url+'.json'
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
		
		this.resizeWindowHandler();
		
		this.scrollThumbs(true);

		/* bind keyboard event handlers */
		dojo.connect(dojo.doc, 'onkeypress', dojo.hitch(this, 'keyHandler'));
		dojo.query('input').onkeypress(function(event){
			event.stopPropagation();
		});

		dojo.connect(window, 'onresize', dojo.hitch(this, 'resizeWindowHandler', false));

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

		this.selectedPhotoIndex = newPhotoIndex;

		this.selectedPhoto = this.galleryData.photos[this.selectedPhotoIndex];

		dojo.byId('selectedPhoto').src = this.selectedPhoto.getThumbURL();
		dojo.byId('selectedPhoto').parentNode.href = this.selectedPhoto.getFullURL();

		dojo.query('#metadata input[name=photo_id]')[0].value = this.selectedPhoto.id;
		dojo.forEach(['description', 'people', 'location', 'photographer'], function(item){
			var newValue = ( this.selectedPhoto[item] !== null)
					? this.selectedPhoto[item]
					: '';
			var element = dojo.byId(item);
			element.value = '';
			setTimeout(dojo.hitch(this, function(el, newValue){ //this is to make sure that the text area is scrolled all the way to the left
				el.value = newValue;
				el.title = newValue;
			}, element, newValue), 10);
		}, this);
		dojo.byId('datetime').value = this.selectedPhoto.getDateTime();
		
		var activeSpan = dojo.query('#thumbs .active')[0];
		dojo.addClass(activeSpan, "visited");
		dojo.removeClass(activeSpan, "active");
		activeSpan = dojo.query('#thumbs span')[this.selectedPhotoIndex];
		dojo.addClass(activeSpan, "active");

		dojo.byId('original-size').href = this.selectedPhoto.getFullURL();

		dojo.forEach([-2, -1, 1, 2], function(offset){
			this.preloadOffset(offset);
		}, this);

		this.scrollThumbs();

	},
	keyHandler: function(event){
		switch(event.keyCode){
			case dojo.keys.UP_ARROW:
			case dojo.keys.LEFT_ARROW:
				this.prevImage();
				break;
			case dojo.keys.DOWN_ARROW:
			case dojo.keys.RIGHT_ARROW:
				this.nextImage();
				break;
			case dojo.keys.PAGE_UP:
				this.replaceImageOffset(-5);
				break;
			case dojo.keys.PAGE_DOWN:
				this.replaceImageOffset(5);
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
	scrollThumbs: function(skipAnimation){

		var container = dojo.byId('thumbs');
		var containerWidth = container.offsetWidth;
		var scrollLeft = container.scrollLeft;
		
		var thumb = dojo.query('#thumbs .active a')[0];
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

		if(skipAnimation){
			container.scrollLeft = newScrollLeft;
		} else {
			dojox.fx.smoothScroll({
				win: container,
				target: {
					x: newScrollLeft,
					y: 0
				}
			}).play();
		}
	},
	resizeWindowHandler: function(isCalledFromTimer){
		if(this.resizeTimer != null){
			clearInterval(this.resizeTimer);
			this.resizeTimer = null;
		}

		var timeNow = (new Date()).getTime();
		if(isCalledFromTimer || timeNow >= this.lastResizeTime + this.resizeMinInterval){
			//alert('resizing');
			this.lastResizeTime = timeNow;

			dojo.byId('selectedPhoto').src = this.selectedPhoto.getThumbURL();
			//this.preloadOffset(1);
		} else {
			//alert('not resizing');
		}

		if(!isCalledFromTimer){
			this.resizeTimer = setTimeout(dojo.hitch(this, "resizeWindowHandler", true), 2000);
		} else {
			//alert('Called from timer');
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