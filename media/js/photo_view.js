dojo.require('dojo.data.ItemFileWriteStore');
dojo.require('dojo.date.locale');
dojo.require('dojox.fx.scroll')
dojo.require('dojox.image');

dojo.declare('Cameratron.Navigation', null, {

	constructor: function(grandparent, title_url){

		this.grandparent = grandparent;
		this.gallery_title_url = title_url;

		this.selectedPhoto = null;
		this.numPhotos = -1;

		this.lastResizeTime = -1; //milliseconds since unix epoc
		this.resizeMinInterval = 1000; //milliseconds
		this.resizeTimer = null;

		dojo.addOnLoad(this, function(){
			dojo.style('submit', 'display', 'none');

			this.store = new dojo.data.ItemFileWriteStore({
				 url:	this.grandparent.base_url + '/gallery/photoList/'+title_url
				,typeMap: this.typeMap
				,urlPreventCache: true
			});

			this.store.fetch({
				 query: {}
				,onBegin: function(size){
					this.numPhotos = size;
				}
				,onItem: function(item){
					dojo.mixin(item, new Cameratron.Photo(this.grandparent));
					if(window.location.hash.length > 2
							&& this.store.getValue(item, 'basename') == window.location.hash.substr(2)){
						this.selectedPhoto = item;
					}
				}
				,onComplete: function(){
					if(this.selectedPhoto != null){
						this.replaceImage(this.selectedPhoto);
						this.resizeWindowHandler();
					} else {
						this.firstImage();
					}
					this.scrollThumbs(true);
				}
				,scope: this
			});

			dojo.connect(dojo.doc, 'onkeypress', dojo.hitch(this, 'keyHandler'));
			dojo.query('input').onkeypress(function(event){
				event.stopPropagation();
			});

			dojo.connect(window, 'onresize', dojo.hitch(this, 'resizeWindowHandler', false));

			dojo.query('#thumbs a').forEach(function(node, index){
				dojo.connect(node, 'onclick', this, function(event){
					event.preventDefault();
					this.replaceImageIndex(index);
					return false;
				});
			}, this);

			dojo.connect(dojo.doc, (!dojo.isMozilla ? "onmousewheel" : "DOMMouseScroll"), function(e){
				var scroll = e[(!dojo.isMozilla ? "wheelDelta" : "detail")] * (!dojo.isMozilla ? 1 : -1);
				dojo.byId('thumbs').scrollLeft -= scroll;
			});

		});

	},
	isValidIndex: function(index){
		return 0 <= index && index < this.numPhotos;
	},
	nextImage: function(){
		this.replaceImageOffset(1);
	},
	prevImage: function(){
		this.replaceImageOffset(-1);
	},
	firstImage: function(){
		this.replaceImageIndex(0);
	},
	lastImage: function(){
		this.replaceImageIndex(this.numPhotos - 1);
	},
	setSelectedPhoto: function(item){
		this.selectedPhoto = item;
	},
	replaceImageIndex: function(index){
		index = Math.min(Math.max(0, index), this.numPhotos-1);
		this.store.fetch({
			 query: {sort_index: index}
			,onItem: dojo.hitch(this, function(item){
				this.replaceImage(item);
			 })
		});
	},
	replaceImageOffset: function(offset){
		var newIndex = this.selectedPhoto.get('sort_index') + offset;
		this.replaceImageIndex(newIndex);
	},
	preloadOffset: function(offset){
		var newIndex = this.selectedPhoto.get('sort_index') + offset;
		this.store.fetch({
			 query: {sort_index: newIndex}
			,onItem: dojo.hitch(this, function(item){
				item.preload();
			})
		});
	},
	replaceImage: function(item){

		this.setSelectedPhoto(item);

		dojo.byId('selectedPhoto').src = this.selectedPhoto.getBigURL();
		dojo.byId('selectedPhoto').parentNode.href = this.selectedPhoto.getFullURL();

		dojo.query('#metadata input[name=photo_id]')[0].value = this.selectedPhoto.get('id');
		dojo.forEach(['description', 'people', 'location', 'photographer'], function(item){
			var newValue = this.selectedPhoto.get(item, '')
			var element = dojo.byId(item);
			element.value = '';
			setTimeout(dojo.hitch(this, function(el, newValue){ //this is to make sure that the text area is scrolled all the way to the left
				el.value = newValue;
				el.title = newValue;
			}, element, newValue), 10);
		}, this);
		dojo.byId('datetime').value = this.selectedPhoto.getDateTime();
		
		dojo.query('#thumbs .active').addClass("visited").removeClass("active");
		activeSpan = dojo.query('#thumbs span')[this.selectedPhoto.get('sort_index')];
		dojo.addClass(activeSpan, "active");

		dojo.byId('badge-permalink').href =	this.grandparent.base_url+"photo/view/"+this.gallery_title_url+"/#/"+this.selectedPhoto.get('basename');
		dojo.byId('badge-original-size').href = this.selectedPhoto.getFullURL();
		dojo.byId('badge-set-key-photo').href = this.grandparent.base_url+"gallery/setPoster/"+this.selectedPhoto.get('gallery_id')+"/"+this.selectedPhoto.get('id');

		window.location.hash = '#/'+this.selectedPhoto.get('basename');

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

			dojo.byId('selectedPhoto').src = this.selectedPhoto.getBigURL();
			//this.preloadOffset(1);
		} else {
			//alert('not resizing');
		}

		if(!isCalledFromTimer){
			this.resizeTimer = setTimeout(dojo.hitch(this, "resizeWindowHandler", true), 2000);
		} else {
			//alert('Called from timer');
		}
	},
	typeMap: {
		"unixtimestamp": {
			type: Date,
			serialize: function(value){
				return value.getTime()/1000;
			},
			deserialize: function(value){
				return new Date(value*1000);
			}
		}
	}
});

dojo.declare('Cameratron.Photo', null, {
	constructor: function(grandparent){
		this.grandparent = grandparent;
	},
	get: function(attrib, defaultVal){
		return this._S.getValue(this, attrib, defaultVal);
	},
	getBigURL: function(){
		var width = window.innerWidth - 186;
		var height = window.innerHeight - 215;
		return this.grandparent.base_url + 'photo/resample/' + width + 'x' + height + '/' + this.get('id') + '.jpg'
	},
	getFullURL: function(){
		return this.grandparent.base_url + 'photo/original/' + this.get('gallery_id') + '/' + this.get('basename');
	},
	preload: function(){
		dojox.image.preload([this.getBigURL()]);
	},
	getDateTime: function(){
		var datetime = this.get('datetime');
		if(datetime){
			return dojo.date.locale.format(datetime, {
				datePattern: "MMMM d, yyyy,",
				timePattern: "h:mma",
				am: 'am',
				pm: 'pm'
			});
		} else {
			return '';
		}
	}
	
});