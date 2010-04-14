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