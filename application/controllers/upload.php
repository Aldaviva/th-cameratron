<?php

class Upload_Controller extends SiteTemplate_Controller {

	private $ticketLifetime = 480; //8 minutes in seconds

	function index($existingGalleryID = ''){

		$this->title = array('Photography', 'Upload');

		$this->content = new View('upload-interface');

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
						'href'	=> 'upload',
						'class'	=> 'active'
					)
				)
			)
		);

		$this->stylesheets[] = 'upload.css';
		$this->stylesheets[] = 'dialog.css';
		$this->stylesheets[] = '/media/js/dojo/dijit/themes/nihilo/nihilo.css';

		$this->scripts[] = 'yui2/yui/build/yahoo-dom-event/yahoo-dom-event.js';
		$this->scripts[] = 'yui2/yui/build/element/element-min.js';
		$this->scripts[] = 'yui2/yui/build/uploader/uploader.js'; //not -min.js because code tweaked as per http://developer.yahoo.com/yui/uploader/

		$this->scripts[] = 'upload.js';

		$this->heading = "Upload";

		$this->content->existingGallery = '';
		if(!is_null($existingGalleryID)){
			$gallery = new Gallery_Model($existingGalleryID);
			if($gallery->loaded){
				$this->content->existingGallery = $gallery->id;
			}
		}

	}

	function receivePhoto() {

		$this->_cancelTemplate();
		header('Content-Type: application/json');

		if(!isset($_POST['SID']) || !$this->isValidTicket($_POST['SID'])){
			exit("{'stat': 'fail', 'message': 'No valid upload ticket provided.'}");
		}

		if(!is_numeric($_POST['gallery_id'])){
			exit("{'stat': 'fail', 'message': 'No valid gallery id provided.'}");
		}

		foreach ($_FILES as $fieldName => $file) {
			$basename = basename($file['name']);
			$destinationPath = "/home/httpd/html/photos2/".$_POST['gallery_id'].'/'.strip_tags($basename);
			$tempPath = $file['tmp_name'];

			$size = @getImageSize($tempPath);

			$gallery = ORM::factory('gallery', $_POST['gallery_id']);

			if($size === FALSE) {
				$this->invalidFile($basename, 'there was an error reading the image');

			} else if($size[0] == 0 || $size[1] == 0) {
				$this->invalidFile($basename, 'one of the image dimensions is zero');

			} else if($size[2] != IMAGETYPE_JPEG) {
				$this->invalidFile($basename, 'the image is not a JPEG');

			} else if(!$gallery->loaded){
				$this->invalidFile($basename, 'the gallery does not exist');
			} else {

				$parentDir = dirname($destinationPath);
				if(!file_exists($parentDir)){
					mkdir($parentDir);
					chmod($parentDir, 0770);
				}
				move_uploaded_file($tempPath, $destinationPath);
				chmod($destinationPath, 0660);

				/*TODO: read EXIF data, put in database */
				$photo = ORM::factory('photo');
				$photo->gallery_id = $gallery->id;
				$photo->basename = $basename;
				$photo->location = stripslashes($_POST['location']);
				$photo->photographer = stripslashes($_POST['photographer']);
				if($datetime = $this->readEXIFTimestamp($photo)){
					$photo->datetime = date(TIMESTAMP_SQL, $datetime);
				}
				$photo->save();

				echo "{'stat': 'ok', 'file': '".addslashes($basename)."'}";
			}
		}
	}

	function createGallery(){
		
		$this->_cancelTemplate();
		header('Content-Type: application/json');

		if(!isset($_POST['SID']) || !$this->isValidTicket($_POST['SID'])){
			exit("{'stat': 'fail', 'message': 'No valid upload ticket provided'}");
		}

		$title = stripslashes($_POST['title']);

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

	private function readEXIFTimestamp($photo){
		$photo = ORM::factory('photo', $photo);

		if($exif = exif_read_data($photo->getFilename())){
			$timestamp = date_parse_from_format('Y:m:d H:i:s', $exif['DateTimeOriginal']);
		}
	}

	private function invalidFile($name, $reason = 'unknown') {
		exit("{'stat': 'fail', 'message': 'File $name is invalid because $reason.'}");
	}

	private function isValidTicket($sid){

		$this->_cancelTemplate();

		session_id($sid);
		session_start();

		return !empty($_SESSION)
			&& (time() - $_SESSION['Start time'] < $this->ticketLifetime)
			&& ($_SESSION['Client IP'] == $_SERVER['REMOTE_ADDR']);
	}

	public function galleryChooserTest(){

		$this->content = new View('gallerychoosertest');

	}

}

?>