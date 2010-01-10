<?php

class Gallery_Controller extends SiteTemplate_Controller {

	protected $gallery;

	function index(){
		echo "no gallery specified";
	}

	function view($id = NULL, $photoBasename = null){
		if(is_null($id)){
			$this->index();
			return;
		}

		$this->gallery = Gallery_Model::get($id);

		$view = new View('gallery');

		$view->gallery = $this->gallery;

//		$view->selectedPhoto = $this->gallery->getPhoto($photoId);

		if(is_null($photoBasename)){
			$view->selectedPhoto = $this->gallery->getFirstPhoto();
		} else {
			$view->selectedPhoto = $this->gallery->getPhoto($photoBasename);
		}

		$this->content = $view;
		$this->title = array('Photo Gallery', $this->gallery->title);
	}

}

?>
