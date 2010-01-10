<?php

class Overview_Controller extends SiteTemplate_Controller {

	function index(){
		$result = Gallery_Model::get_all();

		$view = new View('overview');

		$view->galleries = $result;

		$this->content = $view;
		$this->title = 'Photo Gallery';

	}

}

?>
