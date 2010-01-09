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

		$result = $this->gallery->get_all();

		$view = new View('overview');

		$view->galleries = $result;

		$view->render(true);
	}

	function view($id = NULL){
		if(is_null($id)){
			$this->menu();
			return;
		}

		$gallery = $this->gallery->get($id);

		echo "<h1>".$gallery->title."</h1>";

		foreach($gallery->photos as $photo){
			echo "<div>";
			echo html::image($photo->getURL(), array('width'=>100));
			echo "</div>";
		}
	}

}

?>
