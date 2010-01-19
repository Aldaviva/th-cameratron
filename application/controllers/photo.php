<?php

class Photo_Controller extends Controller {

	//find any photo that matches this question
	function search($question){
		$results = Photo_Model::search($question);

		foreach($results as $result){
			echo html::image($result->getURL(200));
		}
	}

	function original($gallery_id, $basename){
		if(isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])){
			header('HTTP/1.1 304 Not Modified');
			exit();
		}

		$photo = Photo_Model::getByGalleryBasename($gallery_id, $basename);

		$filename = $photo->getFilename();

		header('Content-Type: image/jpeg');
//		header('Cache-Control: maxage='.(60*60*24*30));
		header('Expires: '.gmdate('D, d M Y H:i:s \G\M\T', strtotime('+1 month')));
		header('Last-Modified: '.gmdate('D, d M Y H:i:s \G\M\T', filemtime($filename)));

		readfile($filename);
	}

	function resample($size, $id){

		if(isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])){
			header('HTTP/1.1 304 Not Modified');
			exit();
		}

		$id = str_replace('.jpg','', $id);
		list($newWidth, $newHeight) = explode('x', $size);
		
		$photo = new Photo_Model($id);
		$filename = $photo->getFilename();

		//choose compression based on whether the client is on the lan or not
		$client_ip = $this->input->ip_address();
		$quality= (ip::inSubnet($client_ip, "138.16.0.0", 16)
				|| ip::inSubnet($client_ip, "128.148.0.0", 16)
				|| (ip::inSubnet($client_ip, "192.168.1.0", 24) && $client_ip != '192.168.1.1')
				|| $client_ip == '127.0.0.1')
				? 95 : 85;
		
		if(!file_exists($filename)){
			throw new Kohana_404_Exception("Image with id = $id, filename = $filename");
		}

		$image = new Image($filename);
		$image->resize($newWidth, $newHeight);
		header('Expires: '.gmdate('D, d M Y H:i:s \G\M\T', strtotime('+1 month')));
		header('Last-Modified: '.gmdate('D, d M Y H:i:s \G\M\T', filemtime($filename)));
		$image->render();

		// Get new dimensions
		/*list($oldWidth, $oldHeight) = getimagesize($filename);

		$ratio_orig = $oldWidth/$oldHeight;

		if ($newWidth/$newHeight > $ratio_orig) {
		   $newWidth = $newHeight*$ratio_orig;
		} else {
		   $newHeight = $newWidth/$ratio_orig;
		}
		if($newHeight <= $oldHeight || $newWidth <= $oldWidth){

			// Resample
			$image_p = imagecreatetruecolor($newWidth, $newHeight);
			$image = imagecreatefromjpeg($filename);
			imagecopyresampled($image_p, $image, 0, 0, 0, 0, $newWidth, $newHeight, $oldWidth, $oldHeight);

			// Output

			header('Content-Type: image/jpeg');
			header('Expires: '.gmdate('D, d M Y H:i:s \G\M\T', strtotime('+1 month')));
			header('Last-Modified: '.gmdate('D, d M Y H:i:s \G\M\T', filemtime($filename)));

			imagejpeg($image_p, null, $quality);
		} else {
			$this->original();
		}*/
	}

	function edit(){

		$photo = new Photo_Model($_GET['photo_id']);

		foreach(array('description', 'people', 'location', 'photographer') as $field){
			$photo->$field = $_GET[$field] or '';
		}

		if($datetime = strtotime($_GET['datetime'])){
			$photo->datetime = date('Y-m-d H:i:s', $datetime);
		}

		$photo->save();

		if(!request::is_ajax()){
			url::redirect(request::referrer());
		}
	}

}

?>
