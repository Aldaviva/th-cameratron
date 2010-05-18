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

		$this->content->photos = $gallery->getPhotos();
		$this->heading = $gallery->title;

		$this->title = array('Photography', $gallery->title);
    }

	/*function photoListOld($title_url = null){
		header('Content-Type: application/json');
		
		$this->_cancelTemplate();

		if(is_null($title_url)){
			echo "{'stat': 'fail', 'message': 'No gallery requested'}";
			return;
		}

		$gallery = Gallery_Model::getByTitleUrl($title_url);

		$data = $gallery->as_array();

		foreach($gallery->photos as $photo){
			$data['photos'][] = $photo->as_array();
		}

		echo json_encode($data);
	}*/

	function photoList($title_url = null){
		header('Content-Type: application/json');

		$this->_cancelTemplate();

		if(is_null($title_url)){
			echo "/* No gallery requested */ {}";
			return;
		}

		$gallery = ORM::factory('gallery')->getByTitleUrl($title_url);

		$store = array('identifier' => 'id');

		foreach($gallery->getPhotos() as $i => $photo){
			$photo_data = $photo->as_array();
			$photo_data['sort_index'] = $i;
			$photo_data['datetime'] = array('_type' => 'unixtimestamp', '_value' => $photo_data['datetime']);
			$store['items'][] = $photo_data;
		}
		
		echo json_encode($store);
	}

	function create(){

		$this->_cancelTemplate();
//		header('Content-Type: application/json');

		if(!isset($_REQUEST['SID']) || !Upload_Controller::isValidTicket($_REQUEST['SID'])){
			echo ("{'stat': 'fail', 'message': 'No valid upload ticket provided'}");
			return;
		}
		
		if(empty($_REQUEST['title'])){
			echo("{'stat': 'fail', 'message': 'No valid gallery title provided'}");
			return;
		}

		$title = stripslashes($_REQUEST['title']);

		$title_url = $title_url_base = url::title($title);

		$existing_gallery = ORM::factory('gallery')->where('title_url', $title_url_base)->find();

		for($suffix_counter = 2; $existing_gallery->loaded; $suffix_counter++){
			$title_url = $title_url_base . '_' . $suffix_counter;
			$existing_gallery = ORM::factory('gallery')->where('title_url', $title_url)->find();
		}

		$gallery = ORM::factory('gallery');
		$gallery->title = $title;
		$gallery->title_url = $title_url;
		$gallery->date = 'now';

		$gallery->save();

		echo "{'stat': 'ok', 'gallery_id': '{$gallery->id}'}";
	}

	function listAll(){
		header('Content-Type: application/json');

		$this->_cancelTemplate();

		$galleries = ORM::factory('gallery')->orderby(Gallery_Model::$ordering)->find_all();

		$result = new stdClass();
		$result->stat = 'ok';
		$result->label = 'title';
		$result->identifier = 'id';
		$result->items = array();
		foreach($galleries as $gallery){
			$result->items[] = array(
				'title'	=> $gallery->title,
				'id'	=> $gallery->id,
				'date'	=> $gallery->date,
				'datetitle'	=> '<em>'.date("'y", $gallery->date).'</em> '.$gallery->title
			);
		}

		echo json_encode($result);
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
