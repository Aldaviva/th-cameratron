<?php

class Gallery_Controller extends SiteTemplate_Controller {

	function index(){
		$this->stylesheets[] = 'overview.css';

		$this->content = new View('overview');

		$this->badge = new View(
			'badge',
			array(
				'links' => array(
					array(
					'text' => 'Create gallery',
					'title' => 'Make a new blank gallery to put photos in',
					'href' => url::base().'newgallery'
					)
				)
			)
		);

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

		$this->content = new View('gallery');

		$this->badge = new View(
			'badge',
			array(
			'links' => array(
				array(
				'text'	=> 'All galleries',
				'title'	=> 'See all of our galleries',
				'href'	=> url::base().'/gallery'
				)
				, array(
				'text'	=> 'Add photos',
				'title'	=> 'Insert new photos into this gallery',
				'href'	=> '/upload'
				)
			)
			)
		);

		$this->content->gallery = Gallery_Model::getByTitleUrl($title_url);

		if(is_null($photoBasename)){
			$this->content->selectedPhoto = $this->content->gallery->getFirstPhoto();
		} else {
			$this->content->selectedPhoto = $this->content->gallery->getPhoto($photoBasename);
		}
		$this->content->previousPhoto = $this->content->selectedPhoto->previousPhoto();
		$this->content->nextPhoto = $this->content->selectedPhoto->nextPhoto();


		$this->title = array('Photo Gallery', $this->content->gallery->title);
    }

}

?>
