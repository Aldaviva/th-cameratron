<?php

abstract class HTML_Controller extends Template_Controller {

	public $template = 'html';
	
	public $title;
	public $body;
	public $scripts = array();
	public $stylesheets = array();
	public $metas = array();

	function _render(){
		array_unshift($this->title, 'Tech House');

		$this->template->title = implode(' | ', $this->title);
		$this->template->scripts = $this->scripts;
		$this->template->stylesheets = $this->stylesheets;
		$this->template->metas = $this->metas;
		
		$this->template->body = $this->body;

		parent::_render();
	}

	function _cancelTemplate(){
		Event::clear('system.post_controller', array($this, '_render'));
	}
}

?>
