<?php

class Gallery_Model extends ORM {

	protected $has_one	= array('poster_photo' => 'photo');
//	protected $has_many	= array('photos');

	function getAll(){
		return ORM::factory('gallery')->orderby('datetime', 'desc')->find_all();
	}
	
	function get($gallery_id){
		$result = ORM::factory('gallery')->find($gallery_id);
		return $result;
	}
}

?>
