<?php

abstract class MyTemplate_Controller extends HTML_Controller {

	function __construct(){
//		echo "mytemplate constructor<br />";

		parent::__construct();
	}

	function _render(){
		$this->body = new View('mytemplate');
		$this->body->title = $this->title;
		$this->body->content = $this->content;
		parent::_render();
	}
}

?>
