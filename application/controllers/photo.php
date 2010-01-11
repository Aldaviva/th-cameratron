<?php

class Photo_Controller extends Controller {

	//find any photo that matches this question
	function search($question){
		$results = Photo_Model::search($question);

		foreach($results as $result){
			echo html::image($result->getURL(200));
		}
	}

	function resample($size, $id){
		$id = str_replace('.jpg','', $id);
		list($newWidth, $newHeight) = explode('x', $size);
		
		$photo = new Photo_Model($id);
		$filename = $photo->getURL();

		//choose compression based on whether the client is on the lan or not
		$client_ip = $this->input->ip_address();
		$quality= (ip::inSubnet($client_ip, "138.16.0.0", 16)
				|| ip::inSubnet($client_ip, "128.148.0.0", 16)
				|| (ip::inSubnet($client_ip, "192.168.1.0", 24) && $client_ip != '192.168.1.1')
				|| $client_ip == '127.0.0.1')
				? 95 : 85;
		
		if(!file_exists($filename)){
			throw new Kohana_404_Exception('Image with id = '.$id.' not found.');
		}

		// Get new dimensions
		list($oldWidth, $oldHeight) = getimagesize($filename);

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
			header('Content-type: image/jpeg');
			imagejpeg($image_p, null, $quality);
		} else {
			header('Content-type: image/jpeg');
			readfile($filename);
		}
	}

}

?>
