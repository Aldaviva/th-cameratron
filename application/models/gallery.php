<?php

class Gallery_Model extends ORM {

	protected $has_many	= array('photos');

	static $ordering = array('date' => 'desc');

	static function getByTitleUrl($title_url){
		return ORM::factory('gallery')->where('title_url', $title_url)->find();
	}

	static function get_all($limit = null, $offset = null){
		$query = self::factory('gallery')->orderby(self::$ordering);

		if(!is_null($offset) && !is_null($limit)){
			$query->limit($limit, $offset);
		}

		return $query->find_all();
	}

	static function numGalleries(){
		return self::factory('gallery')->count_all();
	}	

	function getPhoto($basename){
		$answer = ORM::factory('gallery', $this->id)->where('basename', $basename)->photos->current();
		return $answer;
	}

	function getPhotos(){
		return ORM::factory('gallery', $this->id)->orderby(Photo_Model::$ordering)->photos;
	}

	function numPhotos(){
		return $this->photos->count();
	}

	function getFirstPhoto(){
		$photos = $this->getPhotos();
		return $photos[0];
	}

	function __get($key){
		switch ($key){
			case 'poster_photo':
				if($this->numPhotos() == 0){
					return null;
				}
				
				if(is_null($this->poster_photo_id)){
					return $this->getFirstPhoto();
				} else {
					return new Photo_Model($this->poster_photo_id);
				}

			case 'date':
				$result = parent::__get($key);
				return strtotime($result);

			default:
				return parent::__get($key);
		}
	}
}

?>
