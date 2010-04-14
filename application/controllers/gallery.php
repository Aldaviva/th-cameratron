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
						'text'	=> 'TH Home',
						'title'	=> 'Go back to Tech House\'s home page',
						'href'	=> 'https://techhouse.org'
					)
					,array(
						'text'	=> 'Create gallery',
						'title'	=> 'Make a new blank gallery to put photos in',
						'href'	=> 'gallery/create'
					)
					/*,array(
						'text'	=> 'Search',
						'title'	=> 'Search for a picture',
						'href'	=> 'photo/search'
					)*/
				)
			)
		);

		$this->content->pagination = new Pagination(array(
			'total_items'=>Gallery_Model::numGalleries(),
			'items_per_page' => 24)
		);

		$this->content->galleries = Gallery_Model::get_all(
			$this->content->pagination->items_per_page,
			$this->content->pagination->sql_offset
		);

		$this->title = 'Photo Gallery';
	}

	function view($title_url = NULL){
		if(is_null($title_url)){
			url::redirect('gallery');
		}

		$this->badge = new View(
			'badge',
			array(
			'links' => array(
				array(
				'text'	=> 'All galleries',
				'title'	=> 'See all of our galleries',
				'href'	=> '/gallery'
				)
				, array(
				'text'	=> 'Add photos',
				'title'	=> 'Insert new photos into this gallery',
				'href'	=> '/upload'
				)
			)
			)
		);

		$this->content = new View('collection');
		$this->stylesheets[] = 'collection.css';

		$gallery = Gallery_Model::getByTitleUrl($title_url);

		$this->content->photos = $gallery->photos;
		$this->heading = $gallery->title;

		$this->title = array('Photo Gallery', $gallery->title);
    }

	function create(){
		echo "It looks like you want to create a new gallery. (not yet implemented)";
	}

	function edit(){
		echo "It looks like you want to edit an existing gallery (not yet implemented)";
	}

	function raw($title_url = null){
		header('Content-Type: application/json');
		
		$this->_cancelTemplate();

		if(is_null($title_url)){
			echo "/* No gallery requested */";
			return;
		}

		$title_url = str_replace('.json', '', $title_url);

		$gallery = Gallery_Model::getByTitleUrl($title_url);

		echo "/* Gallery data for ".$gallery->title." */\n";


		$data = $gallery->as_array();

		foreach($gallery->photos as $photo){
			$data['photos'][] = $photo->as_array();
		}

		echo json_encode($data);
	}

}

?>
