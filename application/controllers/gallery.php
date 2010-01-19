<?php

class Gallery_Controller extends SiteTemplate_Controller {

	protected $gallery;

	function index(){
		$this->content = new View('overview');

		$this->content->pagination = new Pagination(array(
				'total_items'=>Gallery_Model::numGalleries(),
				'items_per_page' => 5)
		);

		$this->content->galleries = Gallery_Model::get_all(
				$this->content->pagination->items_per_page,
				$this->content->pagination->sql_offset
		);

		$this->title = 'Photo Gallery';
	}

	function view($title_url = NULL, $photoBasename = null){
		if(is_null($title_url)){
			url::redirect('gallery');
		}

		$this->gallery = Gallery_Model::getByTitleUrl($title_url);

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
