<?php

class Photo_Model extends ORM {

	protected $belongs_to = array('gallery');

	function getURL(){
		return implode('/', array('data', $this->gallery_id, $this->basename . '.jpg'));
	}
}

?>
