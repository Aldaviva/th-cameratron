<?php

class Upload_Controller extends SiteTemplate_Controller {

	private static $ticketLifetime = 480; //8 minutes in seconds

	function index($existingGalleryID = ''){

		$this->title = array('Photography', 'Upload');

		$this->heading = "Upload";

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
			echo("{'stat': 'fail', 'message': 'No valid upload ticket provided.'}");
			return;
		}

		if(!is_numeric($_POST['gallery_id'])){
			echo("{'stat': 'fail', 'message': 'No valid gallery id provided.'}");
			return;
		}

		foreach ($_FILES as $fieldName => $file) {
			$basename = basename($file['name']);
//			$destinationPath = "/home/httpd/html/photos2/".$_POST['gallery_id'].'/'.strip_tags($basename);
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

			} else if(ORM::factory('photo')->where(array('basename'=>$basename, 'gallery_id'=>$gallery->id))->find()->loaded){
				$this->invalidFile($basename, 'a file with this name already exists');
			
			} else {

				$photo = ORM::factory('photo');
				$photo->gallery_id = $gallery->id;
				$photo->basename = $basename;
				if(!empty($_POST['location'])){
					$photo->location = stripslashes($_POST['location']);
				}
				if(!empty($_POST['photographer'])){
					$photo->photographer = stripslashes($_POST['photographer']);
				}

				$destinationPath = $photo->getFilename();

				$parentDir = dirname($destinationPath);
				if(!file_exists($parentDir)){
					mkdir($parentDir);
					chmod($parentDir, 02775);
				}

				move_uploaded_file($tempPath, $destinationPath);
				chmod($destinationPath, 0660);

				if($datetime = $this->readEXIFTimestamp($photo->getFilename())){
					$photo->datetime = date(TIMESTAMP_SQL, $datetime);
					$photo->save();
					$photo->gallery->enforceMinPhotoDate();
					//$photo->gallery->date = min($photo->gallery->date, $photo->datetime);
				}

				$photo->save();

				echo "{'stat': 'ok', 'file': '".addslashes($basename)."'}";
			}
		}
	}

	private function readEXIFTimestamp($file){

		if(($exif = @exif_read_data($file)) && (isset($exif['DateTimeOriginal']))){
			$tok = sscanf($exif['DateTimeOriginal'], '%4d:%2d:%2d %2d:%2d:%2d');
			return mktime($tok[3], $tok[4], $tok[5], $tok[1], $tok[2], $tok[0]);
//			$timestamp = date_parse_from_format('Y:m:d H:i:s', $exif['DateTimeOriginal']);
		} else {
			return false;
		}
	}

	private function invalidFile($name, $reason = 'unknown') {
		echo("{'stat': 'fail', 'message': 'File $name is invalid because $reason.'}");
	}

	static function isValidTicket($sid){

		session_id($sid);
		session_start();

		return !empty($_SESSION)
			&& (time() - $_SESSION['Start time'] < self::$ticketLifetime)
			&& ($_SESSION['Client IP'] == $_SERVER['REMOTE_ADDR']);
	}

	function getTicket(){
		$this->_cancelTemplate();

		if(!LOGGED_IN){
			header('HTTP/1.0 401 Unauthorized', true, 401);
			return;
		}

		ini_set('session.use_cookies', false);

		session_start();

		$_SESSION['Client IP'] = $_SERVER['REMOTE_ADDR'];
		$_SESSION['Start time'] = time();

		echo session_id();
	}

}

?>