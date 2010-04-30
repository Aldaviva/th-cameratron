<?php

class Upload_Controller extends SiteTemplate_Controller {

	private $ticketLifetime = 480; //8 minutes in seconds

	function index($existingGalleryID = null){

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

		$this->scripts[] = 'yui2/yui/build/yahoo-dom-event/yahoo-dom-event.js';
		$this->scripts[] = 'yui2/yui/build/element/element-min.js';
		$this->scripts[] = 'yui2/yui/build/uploader/uploader.js'; //not -min.js because code tweaked as per http://developer.yahoo.com/yui/uploader/

		$this->scripts[] = 'upload.js';


		$this->heading = "Inserting photos into ";

		if(!is_null($existingGalleryID)){
			$gallery = new Gallery_Model($existingGalleryID);
			if($gallery->loaded){
				$this->heading .= $gallery->title;
			}
		} else {
			$this->heading .= "a new gallery";
		}

	}

	function receive() {

		$this->_cancelTemplate();

		if(!isset($_POST['SID']) || !$this->isValidTicket($_POST['SID'])){
			exit("Error: No valid ticket provided.");
		}

		foreach ($_FILES as $fieldName => $file) {
			$basename = basename($file['name']);
			$destinationPath = "/home/httpd/html/photos2/".strip_tags($basename);
			$tempPath = $file['tmp_name'];

			$size = @getImageSize($tempPath);

			if($size === FALSE) {
				$this->invalidFile($basename, 'there was an error reading the image');

			} else if($size[0] == 0 || $size[1] == 0) {
				$this->invalidFile($basename, 'one of the image dimensions is zero');

			} else if($size[2] != IMAGETYPE_JPEG) {
				$this->invalidFile($basename, 'the image is not a JPEG');

			} else {

				move_uploaded_file($tempPath, $destinationPath);
				chmod($destinationPath, 0666);
				echo "Success: Received $basename";
			}
		}
	}

	private function invalidFile($name, $reason = 'unknown') {
//		unlink($tempPath);
		exit("Error: File $name is invalid because $reason.");
	}

	private function isValidTicket($sid){

		$this->_cancelTemplate();

		session_id($sid);
		session_start();

		return !empty($_SESSION)
			&& (time() - $_SESSION['Start time'] < $this->ticketLifetime)
			&& ($_SESSION['Client IP'] == $_SERVER['REMOTE_ADDR']);

	}
}

?>