<?php

abstract class SiteTemplate_Controller extends HTML_Controller {

	public $content;
	public $title;

	function _render(){
		$this->title = (array) $this->title;

		$this->body = new View('mytemplate');
		$this->body->title = end($this->title);
		$this->body->content = $this->content;

		parent::_render();
	}

}

?>
