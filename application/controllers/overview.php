<?php

class Overview_Controller extends MyTemplate_Controller {

	public $title = 'my title';

	function __construct(){
		parent::__construct();
	}

	function index(){
		$this->content = 'bar';

		$result = Gallery_Model::get_all();

		$view = new View('overview');

		$view->galleries = $result;

		$this->content = $view;

//		print_r($this->content);

		$this->_render();

	}

}

?>
