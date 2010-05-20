<?php defined('SYSPATH') OR die('No direct access allowed.');

class Pagination extends Pagination_Core {

	function getPageByIndex($index){
		return floor($index/$this->items_per_page) + 1;
	}

}

?>