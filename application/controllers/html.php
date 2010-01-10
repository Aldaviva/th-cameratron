<?php

abstract class HTML_Controller extends Template_Controller {

	public $template = 'html';
	
	public $title;
	public $body;
	public $scripts = array();
	public $stylesheets = array();

	function _render(){
		array_unshift($this->title, 'Tech House');

		$this->template->title = implode(' | ', $this->title);
		$this->template->scripts = $this->scripts;
		$this->template->stylesheets = $this->stylesheets;
		
		$this->template->body = $this->body;

		parent::_render();
	}
}

?>
