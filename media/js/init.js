dojo.require("dijit.form._FormWidget");

var cameratron = new Cameratron();

function Cameratron(){

	this.base_url = '/photogallery/';

	return this;
}

dojo.addOnLoad(function(){
	dojo.declare('Cameratron.PlaceholderTextBox', [dijit._Widget], {

		 emptyClass: 'empty'
		,emptyText: ''
		
		,postCreate: function(){
			dojo.connect(this.srcNodeRef, 'focus', this, this.focusHandler);
			dojo.connect(this.srcNodeRef, 'blur', this, this.unFocusHandler);

			this.unFocusHandler();
		}

		,inputIsEmpty: function(){
			var value = this.srcNodeRef.value;
			return value == '' || value == this.attr('emptyText');
		}

		,focusHandler: function(){
			if(this.inputIsEmpty()){
				this.srcNodeRef.value = '';
				dojo.removeClass(this.srcNodeRef, this.attr('emptyClass'));
			}
		}

		,unFocusHandler: function(){
			if(this.inputIsEmpty()){
				this.srcNodeRef.value = this.attr('emptyText');
				dojo.addClass(this.srcNodeRef, this.attr('emptyClass'));
			} else {
				dojo.removeClass(this.srcNodeRef, this.attr('emptyClass'));
			}
		}

		,_setValueAttr: function(value){
			this.srcNodeRef.value = value;
			this.unFocusHandler();
		}
	});

	cameratron.searchbox = new Cameratron.PlaceholderTextBox({emptyText: 'Search'}, 'q');
	dojo.connect(cameratron.searchbox.domNode.form, 'onsubmit', cameratron.searchbox, function(event){
		if(this.inputIsEmpty()){
			event.preventDefault();
			this.srcNodeRef.focus();
		}
	})
});