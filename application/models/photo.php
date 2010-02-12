<?php

class Photo_Model extends ORM {

	protected $belongs_to = array('gallery');

	static function search($question){

		$question = "%".$question."%";
		$question = Database::instance()->escape_str($question);

		$results = self::factory('photo')->
			where("description ILIKE '$question'")->
			orwhere("people ILIKE '$question'")->
			orderBy('datetime', 'desc')->find_all();

		return $results;

	}
	
	/*static function getByGalleryBasename($gallery_id, $basename){
		return self::factory('photo')->where(array(
			'gallery_id' => $gallery_id,
			'basename' => $basename))->find();
	}*/


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
		return implode('/', array('../photos1', $this->gallery_id, $this->basename));
	}

	function nextPhoto(){
		return $this->_getOffsetPhoto(1);
	}

	function previousPhoto(){
		return $this->_getOffsetPhoto(-1);
	}

	function _getOffsetPhoto($offset){
		$photoIds = $this->gallery->photos->primary_key_array();
		$photoIdsFlipped = array_flip($photoIds);

		$resultOrdering = ($photoIdsFlipped[$this->id]+$offset) % count($photoIds);
		$result = array_slice($photoIds, $resultOrdering, 1);
		$result = $result[0];

		return new Photo_Model($result);
	}
}

?>
