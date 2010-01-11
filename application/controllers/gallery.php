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

		$this->gallery = Gallery_Model::get($id);

		$this->content = new View('gallery');

		$this->content->gallery = $this->gallery;

		if(is_null($photoBasename)){
			$this->content->previousPhoto = $this->gallery->getPhotoByIndex(-1);
			$this->content->selectedPhoto = $this->gallery->getPhotoByIndex(0);
			$this->content->nextPhoto = $this->gallery->getPhotoByIndex(1);
		} else {
			$this->content->selectedPhoto = $this->gallery->getPhoto($photoBasename);
//			$this->content->previousPhoto = $this->content->selectedPhoto->previousPhoto();
			$this->content->nextPhoto = $this->content->selectedPhoto->nextPhoto();
		}

		$this->title = array('Photo Gallery', $this->gallery->title);
	}

	function searchAll(){
		$question = $this->input->post('question');
		if(empty($question)){
			url::redirect('gallery');
		}
		
		$this->content = new View('overview');

		$this->content->galleries = Gallery_Model::searchAll($question);
		$this->content->searchTerm = $question;

		$this->title = array('Photo Gallery', 'Search');
	}

	function search($gallery_id){
		$question = $this->input->post('question');

		$this->content = new View('gallery');
		$this->content->gallery = Gallery_Model::get($gallery_id)->seach($question);

		$this->content->selectedPhoto = $this->content->gallery->getFirstPhoto();


		$this->title = array('Photo Gallery', 'Search', $question);
	}

}

?>
