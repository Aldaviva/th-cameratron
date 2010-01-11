<?php

class Photo_Model extends ORM {

	protected $belongs_to = array('gallery');

	function getURL($width = null, $height = null){
		if(is_null($width) && is_null($height)){ //original size
			return implode('/', array('data', $this->gallery_id, $this->basename . '.jpg'));
		} else {//resized
			if(is_null($height)){
				$height = $width;
			}
			return implode('/', array('photo/resample', $width.'x'.$height, $this->id, )).'.jpg';
		}
	}

	static function search($question){

		$question = "%".$question."%";
		$question = Database::instance()->escape_str($question);

		$results = ORM::factory('photo')->
			where("description ILIKE '$question'")->
			orwhere("people ILIKE '$question'")->
			orderBy('datetime', 'desc')->find_all();

		return $results;

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
