<?php

class Gallery_Controller extends SiteTemplate_Controller {

	protected $gallery;

	function index(){
		$view = new View('overview');

		$view->galleries = Gallery_Model::get_all();

		$this->content = $view;
		$this->title = 'Photo Gallery';
	}

	function view($id = NULL, $photoBasename = null){
		if(is_null($id)){
			url::redirect('gallery');
		}

		$this->gallery = new Gallery_Model($id);

		$this->content = new View('gallery');

		$this->content->gallery = $this->gallery;

		if(is_null($photoBasename)){
			$this->content->selectedPhoto = $this->gallery->getFirstPhoto();
		} else {
			$this->content->selectedPhoto = $this->gallery->getPhoto($photoBasename);
		}
			$this->content->previousPhoto = $this->content->selectedPhoto->previousPhoto();
			$this->content->nextPhoto = $this->content->selectedPhoto->nextPhoto();
		

		$this->title = array('Photo Gallery', $this->gallery->title);
	}

}

?>
