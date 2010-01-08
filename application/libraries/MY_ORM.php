<?php defined('SYSPATH') or die('No direct script access.');

class ORM extends ORM_Core {
	
	function __get($key){
		if(isset($this->table_columns[$key]['format'])
				&& $this->table_columns[$key]['format'] == '0000-00-00 00:00:00'){
			return strtotime($this->object[$key]);
		} else {
			return parent::__get($key);
		}
	}
	
}

?>