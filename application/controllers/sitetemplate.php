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

	/**
	 * @var Array|String: either the heading of the page, or the {text, href} hashmap of the heading link
	 */
	public $heading;

	function __construct(){
		parent::__construct();

		$this->stylesheets[] = "reset.css";

		if(!Kohana::config('cameratron.mobile')){
			$this->scripts[] = "dojo/dojo/dojo.js";
			$this->scripts[] = "init.js";
		}
	}

	function _render(){

		$this->title = (array) $this->title;

		$this->metas['content-type'] = 'text/html; charset=utf-8';
		

		if(Kohana::config('cameratron.mobile')){
			$this->body = new View('mobile/mytemplate');
			$this->stylesheets[] = "mobile/global.css";
			$this->metas['viewport'] = 'width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;';
		} else {
			$this->body = new View('mytemplate');
			$this->body->badge = $this->badge;
			$this->stylesheets[] = "global.css";
			$this->stylesheets[] = "fonts.css";
		}

		
		$this->body->content = $this->content;
		$this->body->heading = $this->heading;

		parent::_render();
	}

}

?>
