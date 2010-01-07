<?php

class Gallery_Model extends ORM {

	protected $has_one = array('photo');
	protected $has_many = array('photos');

}

?>
