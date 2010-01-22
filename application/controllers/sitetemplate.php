<?php
/**
 * To get this thing to show you content, you want to set the $content, $title, and $badge members.
 */
abstract class SiteTemplate_Controller extends HTML_Controller {

	/**
	 * @var String: HTML, from a view. Your main page content goes here
	 */
	public $content;

	/**
	 * @var Array|String: this will be in the <title> attribute separated by pipes
	 */
	public $title;

	/**
	 * @var String: HTML, from the Badge view. Shown on all pages separate from content
	 */
	public $badge;

	function __construct(){
		parent::__construct();

		$this->scripts[] = "http://ajax.googleapis.com/ajax/libs/jquery/1.4.0/jquery.min.js";
		$this->stylesheets[] = "reset.css";
		$this->stylesheets[] = "global.css";
	}

	function _render(){
		$this->title = (array) $this->title;

		$this->body = new View('mytemplate');
		$this->body->badge = $this->badge;
		$this->body->content = $this->content;

		parent::_render();
	}

}

?>
