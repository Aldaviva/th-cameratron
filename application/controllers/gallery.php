<?php

class Gallery_Controller extends SiteTemplate_Controller {

	private $gallery;

	function index(){
		$this->stylesheets[] = 'overview.css';
		$this->stylesheets[] = 'polaroids.css';

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

		$this->content->pagination = Gallery_Model::getPagination();

		$this->content->galleries = Gallery_Model::get_all(
			$this->content->pagination->items_per_page,
			$this->content->pagination->sql_offset
		);

		$this->title = 'Photography';
		$this->heading = 'All Galleries';
	}

	function view($title_url = NULL, $isFirstPhotoBig = true){
		if(is_null($title_url)){
			url::redirect('gallery');
		}

		$this->gallery = Gallery_Model::getByTitleUrl($title_url);

		$this->badge = new View(
			'badge',
			array(
				'links' => array(
					"hr"
					,array(
						'text'	=> 'All Galleries',
						'title'	=> 'See all of our galleries',
						'href'	=> '/gallery/?page='.$this->gallery->getOverviewPage()
					)
					,array(
						'text'	=> 'Upload',
						'title'	=> 'Make a new blank gallery to put photos in',
						'href'	=> 'upload/index/'.$this->gallery->id
					)
					,array(
						'text'	=> 'Guest Pass',
						'title'	=> 'Generate a limited-time password to share with non-members',
						'href'	=> '#'
					)
				)
			)
		);

		$this->content = new View('collection');
		$this->content->thumbWidth = $this->_getThumbWidth();
		$this->content->bigFirstPhoto = $this->_isFirstPhotoBig("view");
		$this->content->gallery_title_url = $this->gallery->title_url;
		$this->stylesheets[] = 'collection.css';

		$this->content->photos = $this->gallery->getPhotos();
		$this->heading = $this->gallery->title;

		$this->title = array('Photography', $this->gallery->title);
    }

	function search(){

		$question = $_GET['q'];

		if(is_null($question)){
			url::redirect('gallery');
		}

		$this->content = new View('collection');
		$this->content->thumbWidth = (Kohana::config('cameratron.mobile')) ? 80 : 100;
		$this->content->bigFirstPhoto = $this->_isFirstPhotoBig("search");
		$this->heading = "Search results for '".html::specialchars($question)."'";

		$this->stylesheets[] = 'polaroids.css';
		$this->stylesheets[] = 'collection.css';

		$this->badge = new View('badge', array(
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
					'href'	=> '/upload'
				)
			)
		));

		$this->content->galleries = Gallery_Model::search($question);
		$this->content->photos = Photo_Model::search($question);

		$this->title = array('Photography', 'Search: '.html::specialchars($question));
	}

	function rss(){

		$this->_cancelTemplate();
//       	//header('Content-Type: application/xml');

		$content = new View('rss', array('galleries' => Gallery_Model::get_all(Kohana::config('cameratron.galleries_per_page'))));

//		echo "<pre>".html::specialchars($content, FALSE)."</pre>";
		echo $content;
	}

	function photoList($title_url = null){

		$this->_cancelTemplate();
		header('Content-Type: application/json');

		if(is_null($title_url)){
			echo "/* No gallery requested */ {}";
			return;
		}

		$this->gallery = ORM::factory('gallery')->getByTitleUrl($title_url);

		$store = array('identifier' => 'id');

		foreach($this->gallery->getPhotos() as $i => $photo){
			$photo_data = $photo->as_array();
			$photo_data['sort_index'] = $i;
			$photo_data['datetime'] = array('_type' => 'unixtimestamp', '_value' => $photo_data['datetime']);
			$store['items'][] = $photo_data;
		}
		
		echo json_encode($store);
	}

	function create(){

		$this->_cancelTemplate();
		header('Content-Type: application/json');

		if(!LOGGED_IN || GUEST){
			header('HTTP/1.0 401 Unauthorized', true, 401);
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

		echo "{'stat': 'ok', 'gallery_id': '{$gallery->id}', 'title_url': '{$gallery->title_url}'}";
	}

	function listAll(){

		$this->_cancelTemplate();
		header('Content-Type: application/json');

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
				'title_url'	=> $gallery->title_url,
				'datetitle'	=> '<em>'.date("'y", $gallery->date).'</em> '.$gallery->title
			);
		}

		echo json_encode($result);
	}

	function setPoster($gallery_id, $photo_id){

		$this->_cancelTemplate();
		header('Content-Type: application/json');

		if(!LOGGED_IN || GUEST){
			header('HTTP/1.0 401 Unauthorized', true, 401);
			return;
		}

		$gallery = new Gallery_Model($gallery_id);
		$photo = new Photo_Model($photo_id);

		$response = array();

		if($photo->gallery->id == $gallery->id){
			$gallery->poster_photo_id = $photo->id;
			$gallery->save();
			$response['stat'] = 'ok';
		} else {
			$response['stat'] = 'fail';
			$response['message'] = 'This photo does not belong to this gallery.';
		}

		echo json_encode($response);

	}
	
	function generateGuestPass($gallery_title_url){

		$this->_cancelTemplate();
		header('Content-Type: application/json');

		if(!LOGGED_IN || GUEST){
			header('HTTP/1.0 401 Unauthorized', true, 401);
			return;
		}
		
		$response = array();
		
		$gallery = Gallery_Model::getByTitleUrl($gallery_title_url);
		$guestpass = new GuestPass_Model();
		$guestpass->init($gallery);

		$response['gallery_title'] = $gallery->title;
		$response['gallery_url'] = url::site('gallery/view/' . $gallery->title_url, 'https');
		$response['username'] = $guestpass->username;
		$response['password'] = $guestpass->_getClearPassword();
		$response['expiration'] = date('F j', $guestpass->expiration);

		$response['stat'] = 'ok';
		echo json_encode($response);
	}

	protected function _getThumbWidth(){
		return (Kohana::config('cameratron.mobile')) ? 158 : 100;
	}

	protected function _isFirstPhotoBig($method){
		switch ($method){
			case "view":
				return true;
			case "search":
				return false;
		}
	}

	protected function _isInvalidGuest() {
		return $this->_isHiddenPage();
	}

	protected function _isHiddenPage(){
		if(GUEST){
			if(isset($this->gallery)){
				$guestpass = ORM::factory('guestpass', $_SERVER['PHP_AUTH_USER']);
				return $guestpass->gallery_id != $this->gallery->id; //this page allows guest access for the correct gallery
			} else {
				return true; //this page is never shown to guests
			}
		} else {
			return false; //always allow first-class users
		}
	}

}

?>
