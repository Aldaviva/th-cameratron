dojo.addOnLoad(function(){
	dojo.style('submit', 'display', 'none');
})

var cameratron = function(){

	this.base_url = '/cameratron/';

	this.getBigPhotoSize = function(dimension){
		switch(dimension){
			case 'width':
				return 870;
			case 'height':
				return 390;
		}
	}

	return this;
}();