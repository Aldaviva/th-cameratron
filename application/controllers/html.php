<?php

abstract class HTML_Controller extends Template_Controller {

	public $template = 'html';

	public $title = 'Photo Gallery';

	public $scripts = array();
	public $stylesheets = array();

	public $body;

	function __construct(){
//		echo "html constructor<br />";
		parent::__construct(); //necessary
		
		
	}

	function _render(){
		$this->template->title = 'Technology House | '.$this->title;
		$this->template->scripts = $this->scripts;
		$this->template->stylesheets = $this->stylesheets;
		$this->template->body = $this->body;
		parent::_render();
	}

}

?>
