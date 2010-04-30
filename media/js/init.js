var cameratron = new Cameratron();

function Cameratron(){

	this.base_url = '/cameratron/';

	this.getBigPhotoSize = function(dimension){
		switch(dimension){
			case 'width':
				//return 870;
				return window.innerWidth - 186;
			case 'height':
				return window.innerHeight - 215;
				//return 390;
		}
	}

	return this;
}

dojo.declare('Cameratron.SearchBox', null, {

	constructor: function(input_id){
		dojo.addOnLoad(this, function(){
			this.inputElement = dojo.byId(input_id);

			dojo.connect(this.inputElement, 'focus', this, this.focusHandler);
			dojo.connect(this.inputElement, 'blur', this, this.unFocusHandler);

			this.unFocusHandler();
		});
	},

	focusHandler: function(event){
		if(this.inputElement.value == 'Search'){
			this.inputElement.value = '';
			dojo.removeClass(this.inputElement, 'empty');
		}
	},

	unFocusHandler: function(event){
		if(this.inputElement.value == '' || this.inputElement.value == "Search"){
			this.inputElement.value = 'Search';
			dojo.addClass(this.inputElement, 'empty');
		}
	}

});

cameratron.searchbox = new Cameratron.SearchBox('q');