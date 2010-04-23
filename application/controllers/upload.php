<?php

class Upload_Controller extends SiteTemplate_Controller {

	function index($existingGalleryID = null){

		$this->title = array('Photography', 'Upload');

		$this->content = new View('upload-interface');

		$this->badge = new View(
			'badge',
			array(
				'links' => array(
					"hr"
					,array(
						'text'	=> 'All galleries',
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

		echo '$_POST = ';
		print_r($_POST);
		echo "\n\n";

		foreach ($_FILES as $fieldName => $file) {
			$basename = basename($file['name']);
			$destinationPath = "/home/httpd/html/photos2/".strip_tags($basename);
			$tempPath = $file['tmp_name'];


			$size = @getImageSize($tempPath);

			if($size === FALSE) {
				invalidFile($basename, 'getImageSize returned FALSE');

			} else if($size[0] == 0 || $size[1] == 0) {
				invalidFile($basename, 'one of the image dimensions is zero');

			} else if($size[2] != IMAGETYPE_JPEG) {
				invalidFile($basename, 'the image is not a JPEG');

			} else {

				move_uploaded_file($tempPath, $destinationPath);
				chmod($destinationPath, 0666);
				echo ("Success: Received $basename");
			}
		}
	}

	private function invalidFile($name, $reason = 'unknown') {
		unlink($tempPath);
		exit("Error: File $name is invalid because $reason.");
	}
}

?>