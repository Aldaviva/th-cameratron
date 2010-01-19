<?php

abstract class SiteTemplate_Controller extends HTML_Controller {

	public $content;
	public $title;

	function __construct(){
		parent::__construct();

		$this->scripts[] = "http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.min.js";
	}

	function _render(){
		$this->title = (array) $this->title;

		$this->body = new View('mytemplate');
		$this->body->title = end($this->title);
		$this->body->content = $this->content;

		parent::_render();
	}

}

?>
