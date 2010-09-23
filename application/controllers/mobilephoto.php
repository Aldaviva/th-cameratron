<?php

class Mobilephoto_Controller extends Photo_Controller {

	function  __construct() {
		Kohana::config_set('cameratron.mobile', true);
		parent::__construct();
	}

	protected $viewName = "mobile/photo";


	protected function  _addResources() {
		$this->stylesheets[] = 'mobile/photo_view.css';
	}

}

?>
