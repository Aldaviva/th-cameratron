<?php

class Photo_Controller extends SiteTemplate_Controller {

	function view($gallery_title_url = null, $photo_basename = null){
		if(is_null($gallery_title_url)){
			url::redirect('gallery');
		}

		$this->stylesheets[] = 'photo_view.css';
		$this->scripts[] = 'photo_view.js';
		$this->scripts[] = 'strtotime_mini.js';

		$gallery = Gallery_Model::getByTitleUrl($gallery_title_url);

		$this->content = new View('photo');

		$this->content->gallery_title_url = $gallery_title_url;

		if(is_null($photo_basename)){
			$this->content->selectedPhoto = $gallery->getFirstPhoto();
		} else {
			$this->content->selectedPhoto = $gallery->getPhoto($photo_basename);
		}

		$this->content->siblingPhotos = $gallery->getPhotos();

		$this->badge = new View('badge');
		$this->badge->links = array(
			"hr"
			,array(
				'text'	=> 'All Galleries',
				'title'	=> 'See all of our galleries',
				'href'	=> '/gallery/?page='.$gallery->getOverviewPage()
			)
			,array(
				'text'	=> 'Upload',
				'title'	=> 'Make a new blank gallery to put photos in',
				'href'	=> 'upload/index/'.$gallery->id
			)
			,array(
				'text'	=> 'This Gallery',
				'title'	=> 'See a grid of all the photos in this gallery',
				'href'	=> 'gallery/view/'.$gallery_title_url
			)
			,"hr"
			,array(
				'text'	=> 'Original size',
				'title'	=> 'View this photo at 1:1 zoom',
				'href'	=> $this->content->selectedPhoto->getURL(),
				//'id'	=> 'original_size_badgebutton'
			)
			,array(
				'text'	=> 'Permalink',
				'title'	=> 'Link to this specific photo',
				'href'	=> 'photo/view/'.$gallery_title_url.'/#/'.$this->content->selectedPhoto->basename
			)
			,array(
				'text'	=> 'Edit metadata',
				'title'	=> 'Change this photo\'s captions',
				'href'	=> '#', //gets listened to by JS
				//'id'	=> 'edit_metadata_badgebutton'
			)
			,array(
				'text'	=> 'Set as preview',
				'title'	=> 'This gallery will be listed using this picture as its thumbnail',
				'href'	=> "gallery/setPoster/{$gallery->id}/{$this->content->selectedPhoto->id}",
				'id'	=> 'badge-set-key-photo'
			)
			,array(
				'text'	=> 'Delete',
				'title'	=> 'Remove this photo from the gallery (must be an officer or webmaster).',
				'href'	=> 'photo/delete/'.$this->content->selectedPhoto->id
			)
		);

		$this->heading = array('text' => $gallery->title, 'href' => "/gallery/view/{$gallery->title_url}");
		$this->title = array('Photography', $gallery->title);

	}

	function edit(){
		
		$this->_cancelTemplate();

		header('Content-Type: application/json');
		if(!LOGGED_IN){
			header('HTTP/1.0 401 Unauthorized', true, 401);
			return;
		}

		$response = array('stat' => 'ok');

		foreach(json_decode($_POST['metadata']) as $metadata){

			$photo = ORM::factory('photo', $metadata->id);

			foreach(array('description', 'people', 'location', 'photographer') as $field){
				$photo->$field = $metadata->$field;
			}
			$photo->datetime = date(TIMESTAMP_SQL, $metadata->datetime->_value);

			$photo->gallery->enforceMinPhotoDate();

//			if($datetime = strtotime($_GET['datetime'])){ // not a mistake, strtotime will return 0 if failure
//				$photo->datetime = date(TIMESTAMP_SQL, $datetime);
//			}

			$photo->save();
		}

		echo json_encode($response);

		/*if(!request::is_ajax()){
			url::redirect(request::referrer());
		}*/
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

		ob_end_flush();

		readfile($filename);
	}

	function resample($size, $id){

		if(isset($_SERVER['HTTP_IF_MODIFIED_SINCE'])){
			header('HTTP/1.1 304 Not Modified'); //really cheap hack to let browsers use cache
			exit();
		}

		$this->_cancelTemplate();

		$id = pathinfo($id, PATHINFO_FILENAME);
		list($maxWidth, $maxHeight) = explode('x', $size);
		$maxWidth = max(1, $maxWidth);
		$maxHeight = max(1, $maxHeight);
		
		$photo = new Photo_Model($id);
		$filename = $photo->getFilename();

		//choose compression % based on whether the client is on the lan or not
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
		$newWidth = ceil($originalWidth * $ratio);
		$newHeight = ceil($originalHeight * $ratio);

		/*echo "original: ($originalWidth x $originalHeight)<br>";
		echo "max: ($maxWidth x $maxHeight)<br>";
		echo "ratio: $ratio<br>";
		echo "new: ($newWidth x $newHeight)<br>";*/

		$image->resize($newWidth, $newHeight);
		header('Expires: '.gmdate('D, d M Y H:i:s \G\M\T', strtotime('+1 month')));
		header('Last-Modified: '.gmdate('D, d M Y H:i:s \G\M\T', filemtime($filename)));

		if($this->_shouldBeCached($newWidth, $newHeight)){
			$directory = DOCROOT . "photo/resample/$size/";
			if(!file_exists($directory)){
				mkdir($directory);
				chmod($directory, 0775);
			}
			$image->save($directory.$id.'.jpg', 0664, true);
		}
		
		$image->render();

	}

	function delete($photoID){
		$this->_cancelTemplate();

		if(!LOGGED_IN){
			header('HTTP/1.0 401 Unauthorized', true, 401);
			return;
		}

		$response = array('stat' => 'ok');

       	$photo = ORM::factory('photo', $photoID);

		$username = $_SERVER['PHP_AUTH_USER'];

		$groups = explode(' ', exec("groups $username"));

		if(array_intersect($groups, Kohana::config('cameratron.deleter_groups'))){
			$photo->unlink();
		} else {
			$response['stat'] = 'fail';
			$response['message'] = 'Only the President or Webmaster can delete photos.';
		}

		echo json_encode($response);
	}

	private function _shouldBeCached($width, $height){
		$area = $width * $height;

		return $area < 75000;

	}

}

?>
