<?php

class GuestPass_Model extends ORM {

	protected $belongs_to = array('gallery');
	protected $primary_key = 'username';

	private $clear_password;

	public function isValid($requestedGallery){
		return $this->expiration > time() && $reqestedGallery->id == $this->gallery_id;
	}

	public function init($gallery) {
		$this->username = "guest_" . mt_rand(1,999);
		$this->clear_password = mt_rand();
		$this->password = md5($this->clear_password);
		$this->expiration = date(TIMESTAMP_SQL, strtotime('+4 days'));
		$this->gallery_id = $gallery->id;
		$this->save();
		return $this;
	}

	public function _getClearPassword(){
		return $this->clear_password;
	}
}

?>
