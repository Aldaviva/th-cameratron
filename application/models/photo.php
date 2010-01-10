<?php

class Photo_Model extends ORM {

	protected $belongs_to = array('gallery');

	function getURL(){
		return implode('/', array('data', $this->gallery_id, $this->basename . '.jpg'));
	}

	/*function __get($key){
		switch ($key){

			//change date field to unix timestamp
			case 'datetime':
				$result = parent::__get($key);
				return strtotime($result);

			default:
				return parent::__get($key);
		}
	}*/
}

?>
