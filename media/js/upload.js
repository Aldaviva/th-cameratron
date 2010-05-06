dojo.require('dojo.data.ItemFileReadStore');
dojo.require('dojo.number');
dojo.require('dojo.string');
dojo.require('dijit.form.ComboBox');


dojo.declare('Cameratron.Uploader', null, {

	swfUrl: '/js/yui2/yui/build/uploader/assets/uploader.swf',
	ticketUrl: '/cameratron/private/getTicket.php',
	galleryCreationScript: '/cameratron/upload/createGallery',

	constructor: function(form_id, filelist_id){

		YAHOO.widget.Uploader.SWFURL = this.swfUrl;
		this.pieChartLoaded = new dojo.Deferred();

		dojo.addOnLoad(this, function(){

			this.form = dojo.byId(form_id);
			this.uploadScript = this.form.action;
			this.fileListNode = dojo.byId(filelist_id);
			this.gallery_id = -1;

			dojo.style('swfOverlay', {
				width: dojo.style('addButton', 'width')+"px",
				height: dojo.style('addButton', 'height')+"px",
				zIndex: 2,
				position: 'absolute'
			});

			this.widget = new YAHOO.widget.Uploader("swfOverlay");

			this.widget.addListener('contentReady', dojo.hitch(this, this.init));
			this.widget.addListener('fileSelect', dojo.hitch(this, this.fileSelectHandler));
			this.widget.addListener('uploadStart', dojo.hitch(this, this.uploadStartHandler));
			this.widget.addListener('uploadProgress', dojo.hitch(this, this.uploadProgressHandler));
			this.widget.addListener('uploadCompleteData', dojo.hitch(this, this.uploadCompleteHandler));
			this.widget.addListener('uploadError', dojo.hitch(this, this.uploadErrorHandler));
			this.widget.addListener('uploadCancel', dojo.hitch(this, this.uploadCancelHandler));

			dojo.connect(this.form, 'onsubmit', this, this.submit);
			dojo.connect(dojo.byId("piechart"), 'onload', this, function(){this.pieChartLoaded.callback({loaded: true})});

			var store = new dojo.data.ItemFileReadStore({
				url: '/cameratron/gallery/listAll'
			});

			this.titleSelect = new dijit.form.ComboBox({
					name: "title",
					store: store,
					searchAttr: "title",
					labelAttr: "datetitle",
					labelType: 'text',
					format: function(value, constraints){
						return value.toUpperCase();
					}},
				"title"
			);
		});
	},

	init: function(){

		this.numFiles = 0;
		this.totalBytes = 0;
		this.transferredBytes = 0;

		this.widget.setAllowMultipleFiles(true);
		this.widget.setFileFilters([{
			extensions: "*.jpg",
			description: 'JPEG (*.jpg)'
		}]);
		console.log('Uploader initialized');
	},

	submit: function(event){

		alert('submit handler running');

		event.preventDefault();

		this.setModeToActive();

		console.log("Requesting upload ticket.");

		//request ticket
		dojo.xhrGet({
			url: this.ticketUrl

			,load: dojo.hitch(this, function(data){

				this.SID = data;
				console.log('Received upload ticket: '+this.SID+'.');
				
				var gallery_id = dijit.byId('title').attr('item');
				if(null === gallery_id) {
					this.submitGalleryCreation();
				} else {
					this.submitPhotos();
				}
			
			})
			,error: function(error){
				console.error('Error requesting upload ticket: '+error);
			}
		});
	},

	submitGalleryCreation: function(){

		dojo.xhrPost({

			url: this.galleryCreationScript

			,postData: dojo.objectToQuery({SID: this.SID})

			,load: dojo.hitch(this, function(data){
				var responseObj = dojo.fromJSON(data);
				if(responseObj.stat == 'ok'){

					this.gallery_id = responseObj.gallery_id;
					console.info('Created gallery with ID = '+this.gallery_id);
					this.submitPhotos();

				} else {
					console.warning('Error creating gallery: '+responseObj.message);
				}
			})
			,error: function(error){
				console.error('Error creating gallery: '+error);
			}
		});
	},

	submitPhotos: function(){

		var postData = {
			SID: this.SID,
			gallery_id: this.gallery_id
		};
		dojo.mixin(postData, dojo.formToObject(this.form));

		this.widget.uploadAll(this.uploadScript, "POST", postData);
		console.info('Submitted upload job.');
	},

	fileSelectHandler: function(event){

		this.fileOrdering = []; //array of ids that can index into this.files
		this.files = {}; //key = id, value = {name, cDate, mDate, size, id, transferredBytes, listItem}

		var item;

		for(var key in event.fileList){
			item = event.fileList[key];

			this.fileOrdering.push(key);
			this.files[key] = item;
		}

		this.updateFileList();
	},

	uploadStartHandler: function(event){
		var file = this.getFileById(event.id);
		console.log('Starting upload of '+file.name);

		this.transferredBytes = 0;
	},

	uploadProgressHandler: function(event){
		var file = this.getFileById(event.id);

		file.transferredBytes = event.bytesLoaded;

		var transferredBytes = 0;
		dojo.forEach(this.files, function(file){
			transferredBytes += file.transferredBytes;
		}, this);
		this.transferredBytes = transferredBytes;
		this.setPieChart(this.transferredBytes/this.totalBytes*0.8+0.1); //leave 0%-10% and 90%-100% for init/cleanup tasks

		this.setProgressBar(file.id, file.transferredBytes/file.size);
	},

	uploadCompleteHandler: function(event){
		var file = this.getFileById(event.id);

		var responseObj = dojo.fromJSON(event.data);

		if(responseObj.stat == 'ok'){
			console.info('Finished upload of '+file.name+'.');
		} else {
			console.warning('Error uploading '+file.name+': '+responseObj.message);
		}

		//if all uploads are done, change status to some success message
		//make link so user can view gallery
	},

	uploadErrorHandler: function(event){
		var file = this.getFileById(event.id);
		console.error('Failed to upload ' + file.name + ": "+event.status);

		//give option to roll back changes?
	},

	uploadCancelHandler: function(file_id){
		var file = this.getFileById(event.id);
		dojo.warning(file.name +" was cancelled.");
		//give option to roll back changes?
		this.setModeToStandby();
		//is file list empty at this point?
	},

	updateFileList: function(){
		//assumes this.files and this.fileOrdering have been set already

		this.fileOrdering = this.fileOrdering.sort(dojo.hitch(this, function(a, b){
			return this.normalizeID(a) > this.normalizeID(b);
		}));

		dojo.empty(this.fileListNode);
		this.totalBytes = 0;
		this.numFiles = 0;

		dojo.forEach(this.fileOrdering, function(id){
			var item = this.files[id];

			item.transferredBytes = 0;
			this.totalBytes += item.size;
			this.numFiles++;

			console.log('File '+ item.name + " is in the upload queue.");

			item.listItem = dojo.place('<li><span class="filename">'+item.name.replace(/\.jpg$/i,'.')+'<abbr>JPG</abbr></span> <a href="#" class="remove">&times;</a> <div class="progress" style="display:none"><div style="width:0"></div></div></li>', this.fileListNode, 'last');
			//dojo.query('a.remove', item.listItem)[0].connect('onclick', this, dojo.hitch(this, this.removeQueueItem, item.id));
			var removeLink = dojo.query('a.remove', item.listItem)[0];
			dojo.connect(removeLink, 'onclick', this, dojo.hitch(this, this.removeQueueItem, item.id));
		}, this);

		if(this.numFiles){
			var megabytes = dojo.number.round(this.totalBytes/1024/1024, 1);
			var pluralPhotos = (this.numFiles == 1) ? 'photo' : 'photos';
			dojo.byId('totals').innerHTML = this.numFiles + " "+pluralPhotos+": "+megabytes+"<abbr>MB</abbr>";
		} else {
			dojo.byId('totals').innerHTML = 'no photos selected';
		}
	},

	removeQueueItem: function(file_id, event){
		this.widget.removeFile(file_id);

		event.preventDefault();

		var name = this.files[file_id].name;

		/*delete this.files[file_id];
		delete this.fileOrdering[file_id];*/

		this.fileOrdering = dojo.filter(this.fileOrdering, function(item){
			return item != file_id;
		}, this);

		this.updateFileList();

		console.log('Removed file '+ name +' from queue.');
	},

	setModeToActive: function(){
		dojo.query('.progress').style('display', 'block');

		dojo.query('.remove').style('display', 'none');

		dojo.query('input[type=text]', 'upload').attr('disabled', 'disabled');
		dijit.query('title').attr('readOnly', true);

		dojo.style('status-active', 'display', 'block');
		dojo.style('status-standby', 'display', 'none');

		this.setPieChart(0);

		//hide add photos button

	},

	setModeToStandby: function(){
		dojo.query('.progress').style('display', 'none');

		dojo.query('.remove').style('display', 'inline');

		dojo.query('input[type=text]', 'upload').removeAttr('disabled');
		dijit.query('title').attr('readOnly', false);

		dojo.style('status-active', 'display', 'none');
		dojo.style('status-standby', 'display', 'block');
	},
	
	setProgressBar: function(file_id, percent){
		var file = this.getFileById(file_id);
		dojo.style(dojo.query('.progress div', file.listItem)[0], 'width', percent*100+'%');
	},
	
	setPieChart: function(percent){

		this.pieChartLoaded.addCallback(function(){

			console.log("Pie Chart set to "+(percent*100)+"%");

			var svgdoc = null;
			var svgwin = null;

			var object = document.getElementById('piechart');
			if (object && object.contentDocument)
				svgdoc = object.contentDocument;
			else try {
				svgdoc = object.getSVGDocument();
			} catch(exception) {
				console.error('Neither the HTMLObjectElement nor the GetSVGDocument interface are implemented');
			}

			if (svgdoc && svgdoc.defaultView)
				svgwin = svgdoc.defaultView;
			else if (object.window)
				svgwin = object.window;
			else try {
				svgwin = object.getWindow();
			} catch(exception) {
				console.error('The DocumentView interface is not supported\nNon-W3C methods of obtaining "window" also failed');
			}

			svgwin.setPercent(percent);
		});
	},
	
	setStatusText: function(heading, subheading){
		dojo.byId('status-heading').innerHTML = heading;
		dojo.byId('status-subheading').innerHTML = subheading;
	},

	getFileById: function(id){
		return this.files[id];
	},
	
	

	normalizeID: function(id){
		return 'file'+dojo.string.pad(id.replace('file', ''), 8, '0');
	}
});

cameratron.uploader = new Cameratron.Uploader('upload', 'filelist');
