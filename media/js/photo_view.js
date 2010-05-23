dojo.require('dojo.data.ItemFileWriteStore');
dojo.require('dojo.date.locale');
dojo.require('dojo.hash');
dojo.require('dojox.fx.scroll')
dojo.require('dojox.image');

dojo.declare('Cameratron.Navigation', null, {

	constructor: function(grandparent, title_url){

		this.grandparent = grandparent;
		this.gallery_title_url = title_url;

		this.editMetadataScript = grandparent.base_url + 'secure.php/photo/edit';

		this.selectedPhoto = null;
		this.numPhotos = -1;

		this.lastResizeTime = -1; //milliseconds since unix epoc
		this.resizeMinInterval = 1000; //milliseconds
		this.resizeTimer = null;

		dojo.addOnLoad(this, function(){
			//hide submit button
//			dojo.style('submit', 'display', 'none');
			dojo.query('.buttons', 'metadata').style('display', 'none');

			//initialize data store
			this.store = new dojo.data.ItemFileWriteStore({
				 url:	this.grandparent.base_url + '/gallery/photoList/'+title_url
				,typeMap: this.typeMap
				,urlPreventCache: true
			});
			this.store._saveCustom = dojo.hitch(this, this._flushChanges);

			//create Photo objects out of data store items
			//find initially selected photo
			this.store.fetch({
				 query: {}
				,onBegin: function(size){
					this.numPhotos = size;
				}
				,onItem: function(item){
					dojo.mixin(item, new Cameratron.Photo(this.grandparent));
					if(this.selectedPhoto == null
							&& this.store.getValue(item, 'basename') == dojo.hash().substr(1)){
						this.selectedPhoto = item;
					}
				}
				,onComplete: function(){
					if(this.selectedPhoto != null){
						this.replaceImage(this.selectedPhoto, true, true);
						this.resizeWindowHandler();
					} else {
						this.firstImage();
					}
					this.scrollThumbs(true);
				}
				,scope: this
			});

			//arrow key event handler
			dojo.connect(dojo.doc, 'onkeypress', this, 'keyHandler');
			dojo.query('input').onkeypress(function(event){
					event.stopPropagation();
			});

			//window resizing event handler
			dojo.connect(window, 'onresize', dojo.hitch(this, 'resizeWindowHandler', false));

			//clicking on thumbnails handler
			dojo.query('#thumbs a').forEach(function(node, index){
				dojo.connect(node, 'onclick', this, function(event){
					event.preventDefault();
					this.replaceImageIndex(index);
				});
			}, this);

			//scroll wheel horizontal thumb scrolling handler
			dojo.connect(dojo.doc, (!dojo.isMozilla ? "onmousewheel" : "DOMMouseScroll"), function(e){
				var scroll = e[(!dojo.isMozilla ? "wheelDelta" : "detail")] * (!dojo.isMozilla ? 1 : -1);
				dojo.byId('thumbs').scrollLeft -= scroll;
			});

			//turn text boxes into PlaceholderTextBoxes, with hints when empty
			dojo.query('input[type=text]', 'metadata').forEach(function(textbox){
				new Cameratron.PlaceholderTextBox({
					emptyText: textbox.title
				}, textbox);
			}, this);

			dojo.query('input[type=text]', 'metadata')
				.connect('onchange', this, this.metadataChanged)
				.connect('oninput', this, function(){
					dojo.query('.buttons', 'metadata').style('display', 'block');
				});

			dojo.connect(dojo.byId('metadata'), 'onsubmit', this, this.metadataSubmit);

			dojo.connect(dojo.byId('cancel'), 'onclick', this, this.metadataCancel);

			//back button changes the # part of URL, which this handles
			dojo.subscribe('/dojo/hashchange', this, this.hashHandler);

			//badge link for Edit Metadata will focus the description field
			dojo.connect(dojo.byId('badge-edit-metadata'), 'click', this, function(event){
				event.preventDefault();
				dojo.byId('description').select();
			});

			dojo.connect(dojo.byId('badge-set-key-photo'), 'onclick', this, function(event){
				event.preventDefault();
				this.selectedPhoto.setAsPoster();
			});

			dojo.connect(dojo.byId('badge-delete'), 'onclick', this, function(event){
				event.preventDefault();
				this.selectedPhoto.unlink();
			});

			dojo.connect(dojo.byId('nav_previous'), 'onclick', this, this.prevImage);

			dojo.connect(dojo.byId('nav_next'), 'onclick', this, this.nextImage);
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
	replaceImage: function(item, updateHash, skipAnimation){

		if(typeof updateHash == 'undefined'){
			updateHash = true;
		}
		if(typeof skipAnimation == 'undefined'){
			skipAnimation = false;
		}

		this.selectedPhoto = item;

		dojo.byId('selectedPhoto').src = this.selectedPhoto.getBigURL();
		dojo.byId('selectedPhoto').parentNode.href = this.selectedPhoto.getFullURL();

		dojo.query('#metadata input[name=photo_id]')[0].value = this.selectedPhoto.get('id');
		dojo.forEach(['description', 'people', 'location', 'photographer', 'datetime'], function(fieldName){
			var value;
			if(fieldName == 'datetime'){
				value = this.selectedPhoto.formatDateTime();
			} else {
				value = this.selectedPhoto.get(fieldName, '');
			}
			if(value == null){
				value = '';
			}
			dijit.byId(fieldName).attr('value', value);
		}, this);
		
		dojo.query('#thumbs .active').addClass("visited").removeClass("active");
		activeSpan = dojo.query('#thumbs span')[this.selectedPhoto.get('sort_index')];
		dojo.addClass(activeSpan, "active");

		dojo.byId('badge-permalink').href =	this.grandparent.base_url+"photo/view/"+this.gallery_title_url+"/#/"+this.selectedPhoto.get('basename');
		dojo.byId('badge-original-size').href = this.selectedPhoto.getFullURL();
		dojo.byId('badge-set-key-photo').href = this.grandparent.base_url+"gallery/setPoster/"+this.selectedPhoto.get('gallery_id')+"/"+this.selectedPhoto.get('id');
		dojo.byId('badge-delete').href = this.grandparent.base_url+"secure.php/photo/delete/"+this.selectedPhoto.get('id');


		if(updateHash){
			dojo.hash('/'+this.selectedPhoto.get('basename'));
		}

		dojo.forEach([-2, -1, 1, 2], function(offset){
			this.preloadOffset(offset);
		}, this);

		this.scrollThumbs(skipAnimation);

		var sort_index = this.selectedPhoto.get('sort_index');

		if(sort_index == 0){
//			dojo.style('nav_previous', {'backgroundImage': 'url(../img/thumbs_arrow-left_disabled.png)', 'cursor': 'default'});
			dojo.addClass('nav_previous', 'disabled');
		} else {
			dojo.removeClass('nav_previous', 'disabled');
		}

		if(sort_index == this.numPhotos - 1){
			dojo.addClass('nav_next', 'disabled');
		} else {
			dojo.removeClass('nav_next', 'disabled');
		}

	},
	keyHandler: function(event){
		switch(event.keyCode){
//			case dojo.keys.UP_ARROW:
			case dojo.keys.LEFT_ARROW:
				this.prevImage();
				break;
//			case dojo.keys.DOWN_ARROW:
			case dojo.keys.RIGHT_ARROW:
				this.nextImage();
				break;
			case dojo.keys.PAGE_UP:
//				this.replaceImageOffset(-5);
				this.prevImage();
				break;
			case dojo.keys.PAGE_DOWN:
//				this.replaceImageOffset(5);
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
	hashHandler: function(hash){
		this.store.fetch({
			query: {basename: hash.substr(1)}
			,onItem: function(item){
				this.replaceImage(item, false);
			}
			,scope: this
		});
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
		} else {
			//alert('not resizing');
		}

		if(!isCalledFromTimer){
			this.resizeTimer = setTimeout(dojo.hitch(this, "resizeWindowHandler", true), 2000);
		} else {
			//alert('Called from timer');
		}
	},
	metadataChanged: function(event){
		console.log('metadata changing');
		this.selectedPhoto.setMetadata(event.currentTarget.name, event.currentTarget.value);
	},
	metadataSubmit: function(event){
		event.preventDefault();

		console.log('metadata submitting');

		dojo.query('input[type=text]').forEach(function(inputBox){
			inputBox.blur();
		});

		setTimeout(dojo.hitch(this, function(){
			this.store.save({
				onComplete: function(){
					dojo.query('.buttons', 'metadata').style('display', 'none');
	//				alert('Save successful.');
				},
				onError: function(errorData){
					alert('Error saving metadata changes: '+errorData);
				}
			});
		}), 10);
	},
	metadataCancel: function(){
		this.store.revert();
		this.store.fetch({
			query: {}
			,onItem: function(item){
				dojo.mixin(item, new Cameratron.Photo(this.grandparent));
			}
		});
		//need to do mixins again
		this.replaceImage(this.selectedPhoto, false, true);
		dojo.query('.buttons', 'metadata').style('display', 'none');
	},
	_flushChanges: function(saveCompleteCallback, saveFailedCallback){
		var fieldsToSend = ['id', 'description', 'people', 'datetime', 'location', 'photographer'];
		var data = [];
		var dirtyItem;
		for(var cleanItem in this.store._pending._modifiedItems){
			dirtyItem = this.store._itemsByIdentity[cleanItem];
			var dataItem = {};
			dojo.forEach(fieldsToSend, function(fieldName){
				var value = this.store._flatten(dirtyItem.get(fieldName));
//				alert('value '+value+' is of type '+(typeof value));
				dataItem[fieldName] = (typeof value == 'string' && dojo.trim(value) == '') ? null : value;
			}, this);
			data.push(dataItem);
		}
//		alert(dojo.toJson(data, true));
		dojo.xhrPost({
			 url: this.editMetadataScript
			,postData: 'metadata='+dojo.toJson(data)
			,handleAs: 'json'
			,load: dojo.hitch(this, function(responseObj){
				if(responseObj.stat == 'ok'){
					saveCompleteCallback();
				} else {
					saveFailedCallback(responseObj.message);
				}
			})
			,error: dojo.hitch(this, function(error){
				saveFailedCallback('Server error.\nCheck your internet connection.');
			})
		});
	},
	typeMap: {
		"unixtimestamp": {
			type: Date,
			serialize: function(dateObj){
				return dateObj.getTime()/1000;
//				return value;
			},
			deserialize: function(timestamp){
				if(timestamp){
					return new Date(timestamp*1000);
				} else {
					return null;
				}
			}
		}
	}
});

dojo.declare('Cameratron.Photo', null, {
	constructor: function(grandparent){
		//this.grandparent = grandparent;
	},
	get: function(attrib, defaultVal){
		return this._S.getValue(this, attrib, defaultVal);
	},
	getBigURL: function(){
		var width = window.innerWidth - 186;
		var height = window.innerHeight - 220;
		return cameratron.base_url + 'photo/resample/' + width + 'x' + height + '/' + this.get('id') + '.jpg'
	},
	getFullURL: function(){
		return cameratron.base_url + 'photo/original/' + this.get('gallery_id') + '/' + this.get('basename');
	},
	preload: function(){
		dojox.image.preload([this.getBigURL()]);
	},
	formatDateTime: function(){
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
	},
	setMetadata: function(key, value){
//		alert('Changing photo '+this.get('id')+"'s "+key+" field to "+value);
		switch(key){
			case 'datetime':
				value = new Date(strtotime(value)*1000);
				break;
			default:
				break;
		}
		this._S.setValue(this, key, value);
	},
	setAsPoster: function(){
		dojo.xhrGet({
			 url: cameratron.base_url + 'secure.php/gallery/setPoster/'+this.get('gallery_id')+'/'+this.get('id')
			,handleAs: 'json'
			,load: function(response){
				if(response.stat == 'ok'){
					alert('This is now the preview photo for this gallery.');
				} else {
					alert('Error: Server refused to set the preview photo for this gallery.');
				}
			}
			,error: function(){
				alert('Error: could not set preview photo.\nCheck your network connection.');
			}
		});
	},
	unlink: function(){
		if(confirm('Are you sure you want to delete this photo?')){
			dojo.xhrGet({
				url: cameratron.base_url + 'secure.php/photo/delete/'+this.get('id'),
				handleAs: 'json',
				load: function(response){
					if(response.stat == 'ok'){
						alert('Deleting photo \u2013 photo deleted.');
						location.reload();
					} else {
						alert(response.message);
					}
				}
			});
		}
	}
	
});

