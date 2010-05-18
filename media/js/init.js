var cameratron = new Cameratron();

function Cameratron(){

	this.base_url = '/cameratron/';

	/*this.getBigPhotoSize = function(dimension){
		switch(dimension){
			case 'width':
				return window.innerWidth - 186;
			case 'height':
				return window.innerHeight - 215;
		}
	}*/

	return this;
}

dojo.declare('Cameratron.SearchBox', null, {

	constructor: function(input_id){
		dojo.addOnLoad(this, function(){
			this.inputElement = dojo.byId(input_id);

			dojo.connect(this.inputElement, 'focus', this, this.focusHandler);
			dojo.connect(this.inputElement, 'blur', this, this.unFocusHandler);
			dojo.connect(this.inputElement.form, 'submit', this, this.submitHandler);

			this.unFocusHandler();
		});
	},

	inputIsEmpty: function(){
		return this.inputElement.value == '' || this.inputElement.value == "Search";
	},

	focusHandler: function(event){
		if(this.inputIsEmpty()){
			this.inputElement.value = '';
			dojo.removeClass(this.inputElement, 'empty');
		}
	},

	unFocusHandler: function(event){
		if(this.inputIsEmpty()){
			this.inputElement.value = 'Search';
			dojo.addClass(this.inputElement, 'empty');
		}
	},

	submitHandler: function(event){
		if(this.inputIsEmpty()){
			event.preventDefault();
			this.inputElement.focus();
		}
	}

});

cameratron.searchbox = new Cameratron.SearchBox('q');