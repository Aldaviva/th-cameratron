<?php

class Photo_Model extends ORM {

	protected $belongs_to = array('gallery');

	static $ordering = array('datetime' => 'asc', 'basename' => 'asc');

	static function search($question){

		if(trim($question) == ''){
			return array();
		}

		$question = "%".stripslashes($question)."%";
		$question = Database::instance()->escape_str($question);

		$results = ORM::factory('photo')->
			with('gallery')->
			where("description ILIKE '$question'")->
			orwhere("people ILIKE '$question'")->
			orderBy(array_merge(array('gallery.date' => 'desc'), self::$ordering))->
			find_all();

		return $results;

	}

	function unlink(){
		$gallery = $this->gallery;
		unlink($this->getFilename());
		$this->delete();
		if($gallery->numPhotos() == 0){
			$gallery->unlink();
		} else {
			$gallery->enforceMinPhotoDate();
		}
	}

	function getURL($width = null, $height = null){

		if(is_null($width) && is_null($height)){ //original size
			$url = "original/{$this->gallery_id}/{$this->basename}";
		} else {//resized
			if(is_null($height)){
				$height = $width;
			}
			$url = "resample/{$width}x{$height}/{$this->id}.jpg";
		}

		return "photo/$url";
	}

	function getFilename(){
		return implode('/', array(Kohana::config('cameratron.galleries_dir'), $this->gallery_id, $this->basename));
	}

	function nextPhoto(){
		return $this->_getOffsetPhoto(1);
	}

	function previousPhoto(){
		return $this->_getOffsetPhoto(-1);
	}

	function _getOffsetPhoto($offset){
		$photoIds = $this->gallery->getPhotos()->primary_key_array();
		$photoIdsFlipped = array_flip($photoIds);

		$resultOrdering = ($photoIdsFlipped[$this->id]+$offset) % count($photoIds);
		$result = array_slice($photoIds, $resultOrdering, 1);
		$result = $result[0];

		return new Photo_Model($result);
	}
}

?>
