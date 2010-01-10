<?php

class Photo_Model extends ORM {

	protected $belongs_to = array('gallery');

	function getURL(){
		return implode('/', array('data', $this->gallery_id, $this->basename . '.jpg'));
	}

	static function search($question, $gallery_id = null){
		$results = self::factory('photo')->
			where('description ILIKE \'%'.$question.'%\'')->
			orwhere('people ILIKE \'%'.$question.'%\'')->
			orderBy('datetime', 'desc');
		
		if(!is_null($gallery_id)){
			$results = $results->where('gallery_id', $gallery_id);
		}

		$results = $results->find_all();

		return $results;
	}
}

?>
