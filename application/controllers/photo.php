<?php

class Photo_Controller extends SiteTemplate_Controller {

	function view($gallery_title_url = null, $photo_basename = null){
		if(is_null($gallery_title_url)){
			url::redirect('gallery');
		}

		$this->stylesheets[] = 'photo_view.css';
		$this->scripts[] = 'photo_view.js';

		$gallery = Gallery_Model::getByTitleUrl($gallery_title_url);

		$this->content = new View('photo');

		$this->content->gallery_title_url = $gallery_title_url;

		if(is_null($photo_basename)){
			$this->content->selectedPhoto = $gallery->getFirstPhoto();
		} else {
			$this->content->selectedPhoto = $gallery->getPhoto($photo_basename);
		}

		$this->content->siblingPhotos = $gallery->photos;

		$this->badge = new View('badge');
		$this->badge->links = array(
			array(
				'text'	=> 'All galleries',
				'title'	=> 'See all of our galleries',
				'href'	=> '/gallery'
			)
			,array(
				'text'	=> 'This gallery',
				'title'	=> 'See a grid of all the photos in this gallery',
				'href'	=> 'gallery/view/'.$gallery_title_url
			)
		);

		$this->title = array('Photo Gallery', $gallery->title);

	}

	function edit(){

		$photo = new Photo_Model($_GET['photo_id']);

		foreach(array('description', 'people', 'location', 'photographer') as $field){
			$photo->$field = $_GET[$field] or '';
		}

		if($datetime = strtotime($_GET['datetime'])){ /* not a mistake, strtotime will return 0 if failure */
			$photo->datetime = date('Y-m-d H:i:s', $datetime);
		}

		$photo->save();

		if(!request::is_ajax()){
			url::redirect(request::referrer());
		}
	}

	//find any photo that matches this question
	function search($question = null){
		if(is_null($question)){
			echo "What is your search term? (not yet implemented)";
		}

		$results = Photo_Model::search($question);

		foreach($results as $result){
			echo html::image($result->getURL(200));
		}
	}

	function original($gallery_id, $basename){
		if(isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])){
			header('HTTP/1.1 304 Not Modified'); //complete hack to let the browser use its cache if it has one
			exit();
		}

		$this->_cancelTemplate();

		$gallery = new Gallery_Model($gallery_id);
		$photo = $gallery->getPhoto($basename);

		$filename = $photo->getFilename();

		header('Content-Type: image/jpeg');
		header('Expires: '.gmdate('D, d M Y H:i:s \G\M\T', strtotime('+1 month')));
		header('Last-Modified: '.gmdate('D, d M Y H:i:s \G\M\T', filemtime($filename)));

		readfile($filename);
	}

	function resample($size, $id){

		$this->_cancelTemplate();

		$epsilon = 2;

		if(isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])){
			header('HTTP/1.1 304 Not Modified'); //really cheap hack to let browsers use cache
			exit();
		}

		$id = str_replace('.jpg','', $id);
		list($maxWidth, $maxHeight) = explode('x', $size);
		
		$photo = new Photo_Model($id);
		$filename = $photo->getFilename();

		//choose compression based on whether the client is on the lan or not
		$client_ip = $this->input->ip_address();
		$quality= (ip::inSubnet($client_ip, "138.16.0.0", 16)
				|| ip::inSubnet($client_ip, "128.148.0.0", 16)
				|| (ip::inSubnet($client_ip, "192.168.1.0", 24) && $client_ip != '192.168.1.1')
				|| $client_ip == '127.0.0.1')
			? 95 //on resnet
			: 85; //otherwise
		
		if(!file_exists($filename)){
			throw new Kohana_404_Exception("Image with id = $id, cwd = ".getcwd().", filename = $filename");
		}

		$image = new Image($filename);

		$originalWidth = $image->width;
		$originalHeight = $image->height;
		$ratio = min(1, $maxWidth/$originalWidth, $maxHeight/$originalHeight);
		$newWidth = floor($originalWidth * $ratio);
		$newHeight = floor($originalHeight * $ratio);

		/*echo "original: ($originalWidth x $originalHeight)<br>";
		echo "max: ($maxWidth x $maxHeight)<br>";
		echo "ratio: $ratio<br>";
		echo "new: ($newWidth x $newHeight)<br>";*/


		$image->resize($newWidth, $newHeight);
		header('Expires: '.gmdate('D, d M Y H:i:s \G\M\T', strtotime('+1 month')));
		header('Last-Modified: '.gmdate('D, d M Y H:i:s \G\M\T', filemtime($filename)));
		$image->render();

	}

}

?>
