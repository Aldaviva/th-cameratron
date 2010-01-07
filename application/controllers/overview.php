<?php

class Overview_Controller extends Controller {

	function index(){
		$this->all();
	}

	function all(){
		echo "<h1>Galleries</h1>";

		$db = Database::instance();

		$results = $db->from('list_galleries')->get();

		foreach($results as $result){
			echo "<pre>";
			print_r($result);
			echo "</pre>";
		}
	}

}

?>
