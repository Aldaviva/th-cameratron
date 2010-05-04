<?php

class Gallery_Controller extends SiteTemplate_Controller {

	function index(){
		$this->stylesheets[] = 'overview.css';

		$this->content = new View('overview');

		$this->badge = new View(
			'badge',
			array(
				'links' => array(
					"hr"
					,array(
						'text'	=> 'All Galleries',
						'title'	=> 'See all of our galleries',
						'href'	=> '/gallery',
						'class'	=> 'active'
					)
					,array(
						'text'	=> 'Upload',
						'title'	=> 'Make a new blank gallery to put photos in',
						'href'	=> 'upload'
					)
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

		$this->title = 'Photography';
		$this->heading = 'All Galleries';
	}

	function view($title_url = NULL){
		if(is_null($title_url)){
			url::redirect('gallery');
		}

		$gallery = Gallery_Model::getByTitleUrl($title_url);

		$this->badge = new View(
			'badge',
			array(
				'links' => array(
					"hr"
					,array(
						'text'	=> 'All Galleries',
						'title'	=> 'See all of our galleries',
						'href'	=> '/gallery'
					)
					,array(
						'text'	=> 'Upload',
						'title'	=> 'Make a new blank gallery to put photos in',
						'href'	=> 'upload/index/'.$gallery->id
					)
				)
			)
		);

		$this->content = new View('collection');
		$this->content->bigFirstPhoto = true;
		$this->stylesheets[] = 'collection.css';

		$this->content->photos = $gallery->photos;
		$this->heading = $gallery->title;

		$this->title = array('Photography', $gallery->title);
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

	function setPoster($gallery_id, $photo_id){
		$gallery = new Gallery_Model($gallery_id);
		$photo = new Photo_Model($photo_id);

		if($photo->gallery->id == $gallery->id){
			$gallery->poster_photo_id = $photo->id;
		}

		$gallery->save();

		if(!request::is_ajax()){
			url::redirect(request::referrer());
		}


	}

}

?>
