dojo.require("dijit.form._FormWidget");

var cameratron = new Cameratron();

function Cameratron(){

	this.base_url = '/photogallery/';

	return this;
}

dojo.addOnLoad(function(){
	
	cameratron.searchbox = new Cameratron.PlaceholderTextBox({emptyText: 'Search'}, 'q');
	dojo.connect(cameratron.searchbox.domNode.form, 'onsubmit', cameratron.searchbox, function(event){
		if(this.inputIsEmpty()){
			event.preventDefault();
			this.srcNodeRef.focus();
		}
	});

	if(typeof gallery_title_url != 'undefined'){
		new Cameratron.GuestPassLink(cameratron, gallery_title_url);
	}
});

dojo.declare('Cameratron.GuestPassLink', null, {

		constructor: function(grandparent, gallery_title_url){
			this.grandparent = grandparent;
			this.gallery_title_url = gallery_title_url;

			if(this.gallery_title_url != ''){
				this.setUpBadgeLink();
			}
		},

		generate: function(gallery_title_url){
			dojo.xhrGet({
				url: this.grandparent.base_url + 'secure.php/gallery/generateGuestPass/'+gallery_title_url
				,handleAs: 'json'
				,load: dojo.hitch(this, function(responseObj){
					if(responseObj.stat == 'ok'){
						this.display(responseObj);
					}
				})
			});

		},

		display: function(pass){
			var gallery_title = pass.gallery_title;
			var gallery_url = pass.gallery_url;
			var username = pass.username;
			var password = pass.password
			var expiration = pass.expiration;

			alert("These login credentials will allow access to "+gallery_title+" until "+expiration+":\n\nUsername: "+username+"\nPassword: "+password+"\n\n"+gallery_url);
		},

		setUpBadgeLink: function(){
			dojo.connect(dojo.byId('badge-guest-pass'), 'click', this, function(event){
				event.preventDefault();
				this.generate(this.gallery_title_url);
			});
		}
	});

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