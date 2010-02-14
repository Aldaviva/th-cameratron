dojo.declare('Cameratron.Navigation', null, {
	constructor: function(title_url, selectedId){
		this.selectedId = selectedId;
		//alert('Constructing new Navigation object');
		dojo.xhrGet({
			url: cameratron.base_url+'gallery/raw/'+title_url+'.json',
			handleAs: 'json',
			load: this.dataLoaded,
			error: function(errStr){
				alert('AJAX Error: '+errStr);
			}
		});

	},
	dataLoaded: function(data){
		this.data = data;

		//alert('this gallery is called '+this.data['title']);

		dojo.connect(dojo.doc, 'onkeypress', function(event){
			key = event.keyCode;
			switch(key){
				case dojo.keys.LEFT_ARROW:
					//prev image
					break;
				case dojo.keys.RIGHT_ARROW:
					//next image
					break;
				default:
					return;
			}
		});
	},
	nextImage: function(){
		
	},
	prevImage: function(){

	}
});