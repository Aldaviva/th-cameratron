<?php

class Gallery_Controller extends Controller {

	protected $gallery;

	function __construct(){
		parent::__construct();
		$this->gallery = new Gallery_Model;
	}

	function index(){
		$this->menu();
	}

	function menu(){
		echo "<h1>Galleries</h1>";

		$result = $this->gallery->getAll();

		$view = new View('gallery');

		$view->galleries = $result;

		$view->render(true);
	}

}

?>
