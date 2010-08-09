<?php

class Mobilegallery_Controller extends Gallery_Controller {

	function __construct(){
		Kohana::config_set('cameratron.mobile', true);
		
		parent::__construct();
	}

	function index(){
		$this->content = new View('mobile/overview');

		$this->content->pagination = Gallery_Model::getPagination();

		$this->content->galleries = Gallery_Model::get_all(
			$this->content->pagination->items_per_page,
			$this->content->pagination->sql_offset);

		$this->title = 'Photography';
		$this->heading = 'All Galleries';
	}

}

?>
