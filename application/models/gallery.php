<?php

class Gallery_Model extends ORM {

	protected $has_many	= array('photos', 'guestpasses');

	static $ordering = array('date' => 'desc');

	static function search($question){

		if(trim($question) == ''){
			return array();
		}

		$question = "%".stripslashes($question)."%";
		$question = Database::instance()->escape_str($question);

		$results = ORM::factory('gallery')->
			where("title ILIKE '$question'")->
			orderBy(self::$ordering)->
			find_all();

		return $results;

	}

	function unlink(){
		if($this->numPhotos() == 0){
			$directory = Kohana::config('cameratron.galleries_dir').'/'.$this->id;
			rmdir($directory);
			$this->delete();
		}
	}

	static function getByTitleUrl($title_url){
		return ORM::factory('gallery')->where('title_url', $title_url)->find();
	}

	static function get_all($limit = null, $offset = null){
		$query = ORM::factory('gallery')->orderby(self::$ordering);

		if(!is_null($limit)){
			if(!is_null($offset)){
				$query->limit($limit, $offset);
			} else {
				$query->limit($limit);
			}
		}

		return $query->find_all();
	}

	static function numGalleries(){
		return ORM::factory('gallery')->count_all();
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

	function enforceMinPhotoDate(){
		$this->date = $this->db->select('MIN(datetime) AS mindate')->where('gallery_id', $this->id)->get('photos')->current()->mindate;
		$this->save();
	}

	static function getPagination(){
		static $pagination = null;
		if(is_null($pagination)){
			$pagination = new Pagination(array(
				'total_items'=>Gallery_Model::numGalleries(),
				'items_per_page' => Kohana::config('cameratron.galleries_per_page'))
			);
		}
		return $pagination;
	}

	function getOverviewPage(){
		$sort_indices = array_flip($this->get_all()->primary_key_array());
		$sort_index = $sort_indices[$this->id];
		return self::getPagination()->getPageByIndex($sort_index);
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
