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
			$this->index();
			return;
		}

		$this->gallery = Gallery_Model::get($id);

		$this->content = new View('gallery');

		$this->content->gallery = $this->gallery;

		if(is_null($photoBasename)){
			$this->content->selectedPhoto = $this->gallery->getFirstPhoto();
		} else {
			$this->content->selectedPhoto = $this->gallery->getPhoto($photoBasename);
		}

		$this->title = array('Photo Gallery', $this->gallery->title);
	}

	function searchAll($question){
		$this->content = new View('overview');

		$this->content->galleries = Gallery_Model::search($question);
		$this->content->searchTerm = $question;

		$this->title = array('Photo Gallery', 'Search');
	}

	function search($gallery_id, $question){
		$this->content = new View('gallery');

		$this->gallery = Gallery_Model::get($gallery_id);
		$this->gallery->where('people ILIKE \'%'.$question.'%\'')->photos;
//		$this->gallery->photos = Photo_Model::search($question, $gallery_id);
		$this->content->gallery = $this->gallery;
		$this->content->selectedPhoto = $this->gallery->getFirstPhoto();


		$this->title = array('Photo Gallery', 'Search', $question);
	}

}

?>
