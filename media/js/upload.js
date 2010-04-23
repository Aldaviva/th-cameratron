dojo.addOnLoad(function(){
	cameratron.uploader = new Cameratron.Uploader();
})

dojo.declare('Cameratron.Uploader', null, {

	uploadScript: '/cameratron/private/upload-handler.php',
	swfUrl: '/js/yui2/yui/build/uploader/assets/uploader.swf',
	browseButtonImage: "/cameratron/media/img/upload_fileselect.png",

	constructor: function(){

		this.fileOrdering = []; //array of ids that can index into this.files
		this.files = {}; //key = id, value = {name, cDate, mDate, size, id}

		YAHOO.widget.Uploader.SWFURL = this.swfUrl;

		this.widget = new YAHOO.widget.Uploader("uploadContainer", this.browseButtonImage);
		this.widget.addListener('contentReady', dojo.hitch(this, this.init));
		this.widget.addListener('fileSelect', dojo.hitch(this, this.fileSelectHandler));
		this.widget.addListener('uploadStart', dojo.hitch(this, this.uploadStartHandler));
//		this.widget.addListener('uploadComplete', dojo.hitch(this, this.uploadCompleteHandler));
		this.widget.addListener('uploadCompleteData', dojo.hitch(this, this.uploadCompleteHandler));
		this.widget.addListener('uploadError', dojo.hitch(this, this.uploadErrorHandler));

		dojo.connect(dojo.byId("uploadSubmit"), 'onclick', this, this.submit);
	},

	init: function(){
		this.widget.setAllowMultipleFiles(true);
		this.widget.setFileFilters([{
			extensions: "*.jpg;*.jpeg",
			description: 'JPEG (*.JPG;*.JPEG)'
		}]);
		console.log('Uploader initialized');
	},

	submit: function(){
		this.widget.uploadAll(this.uploadScript, "GET", {SID: "123456"});
		console.log('Submitting upload job');
	},

	getFileById: function(id){
		return this.files[id];
	},

	fileSelectHandler: function(event){

		dojo.require('dojo.string');

		this.fileOrdering = [];
		this.files = {};

		for(var key in event.fileList){
			item = event.fileList[key];

			this.fileOrdering.push(key);
			this.files[key] = item;
		}

		this.fileOrdering = this.fileOrdering.sort(dojo.hitch(this, function(a, b){
			return this.normalizeID(a) > this.normalizeID(b);
		}));

		var fileListNode = dojo.byId('uploadFileList');
		dojo.empty(fileListNode);

		dojo.forEach(this.fileOrdering, function(id){
			var item = this.files[id];

			console.log(item.name + " added.");

			dojo.create("li", {innerHTML: item.id+") "+item.name}, fileListNode, 'last');
		}, this);
	},

	uploadStartHandler: function(event){
		var file = this.getFileById(event.id);
		console.log('Starting upload of '+file.name);
	},

	uploadCompleteHandler: function(event){
		var file = this.getFileById(event.id);

		
		/*if(typeof event.data == 'undefined'){
			console.info('Finished upload of '+file.name);
		} else {*/
			console.info('Finished upload of '+file.name+', and server returned '+event.data);
		//}
	},

	uploadErrorHandler: function(event){
		var file = this.getFileById(event.id);
		console.error('Failed to upload ' + file.name + ": "+event.status);
	},

	normalizeID: function(id){
		return 'file'+dojo.string.pad(id.replace('file', ''), 8, '0');
	}
});
