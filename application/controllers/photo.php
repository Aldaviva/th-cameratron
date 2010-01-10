<?php

class Photo_Controller extends Controller {

	function search($question){
		$results = Photo_Model::search($question);

		foreach($results as $result){
			echo html::image($result->getURL(), array('width'=>200));
		}
	}

}

?>
