<?php

class Gallery_Model extends ORM {

	protected $has_many	= array('photos');

	static function getByTitleUrl($title_url){
//		return self::factory('gallery')->where('title',$title)->find();
		return self::factory('gallery')->where('title_url', $title_url)->find();
	}

	static function get_all($limit = null, $offset = null){
		$query = self::factory('gallery')->orderBy('date', 'desc');

		if(!is_null($offset) && !is_null($limit)){
			$query->limit($limit, $offset);
		}

		return $query->find_all();
	}

	static function numGalleries(){
		return self::factory('gallery')->count_all();
	}	

	function getPhoto($basename){
		$answer = $this->where('basename', $basename)->photos->current();
		$this->reload(); //otherwise, the photos array is permanently filtered to this one photo
		return $answer;
	}

	function numPhotos(){
		return $this->photos->count();
	}

	function getFirstPhoto(){
		return $this->photos[0];
	}

	function __get($key){
		switch ($key){
			case 'poster_photo':
				if($this->numPhotos() == 0){
					return null;
				}
				
				if(is_null($this->poster_photo_id)){
					return $this->photos[0];
				} else {
					return new Photo_Model($this->poster_photo_id);
				}


			//change date field to unix timestamp
			case 'date':
				$result = parent::__get($key);
				return strtotime($result);

			default:
				return parent::__get($key);
		}
	}
}

?>
