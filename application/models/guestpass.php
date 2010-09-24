<?php

class GuestPass extends ORM {

	public function isValid($requestedGallery){
		return $this->expiration > time() && $reqestedGallery->id == $this->gallery_id;
	}

}

?>
