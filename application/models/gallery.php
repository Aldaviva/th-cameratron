<?php

class Gallery_Model extends ORM {

	protected $has_many	= array('photos');

	static function get($id){
		return self::factory('gallery', $id);
	}

	static function get_all(){
		return self::factory('gallery')->orderBy('date', 'desc')->find_all();
	}

	//find galleries with photos that match this question
	static function searchAll($question){
		$db = new Database();

		$foundGalleries = $db->
				select('gallery_id')->
				from('photos')->
				where('description ILIKE \'%'.$question.'%\'')->
				orwhere('people ILIKE \'%'.$question.'%\'')->get();

		$galleryIds = array();

		foreach($foundGalleries as $foundGallery){
			$galleryIds[] = $foundGallery->gallery_id;
		}

		$result = self::factory('gallery')->in('id', $galleryIds)->orderBy('date', 'desc')->find_all();

		return $result;
	}

	//find photos in this gallery that match this question
	function search($question){
		return $this->where('people ILIKE \'%'.$question.'%\'')->photos;

	}

	function getPhoto($basename){
		$answer = $this->where('basename', $basename)->photos->current();
		$this->reload();
		return $answer;
	}

	function numPhotos(){
		return $this->photos->count();
	}

	/*function getFirstPhoto(){
		return $this->photos[0];
	}*/

	function getPhotoByIndex($index){
		$result = array_slice($this->photos, $index, 1);
		$result = $result[0];
		return $result;
	}

	function __get($key){
		switch ($key){

			//if no poster image specified, return a random image from this gallery as poster
			case "poster_photo":
				$answer = ORM::factory('photo')->where(array('id'=>$this->poster_photo_id, 'gallery_id'=>$this->id))->find();
				if(!$answer->loaded){
					$random = mt_rand(0, $this->numPhotos() - 1);
					$answer = ORM::factory('photo')->where('gallery_id', $this->id)->find_all(1, $random)->current();
				}
				return $answer;

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
