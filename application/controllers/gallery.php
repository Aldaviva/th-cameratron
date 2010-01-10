<?php

class Gallery_Controller extends Template_Controller {

	protected $gallery;

	public $template = 'html';

	function index(){
		echo "no gallery specified";
	}

	function view($id = NULL, $photoId = null){
		if(is_null($id)){
			$this->index();
			return;
		}

		if(is_null($photoId)){
			$photoId = 0;
		}

		$this->gallery = Gallery_Model::get($id);

		$view = new View('gallery');

		$view->gallery = $this->gallery;

		$view->selectedPhoto = $this->gallery->getPhoto($photoId);

		$view->render(true);
	}

}

?>
