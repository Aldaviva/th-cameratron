<?php defined('SYSPATH') or die('No direct script access.');

/**
 * Conversion for the stupid Tech House hex year numbering
 */

class date extends date_Core {

	public static function thYear($timestamp = NULL){

		if(is_null($timestamp)){
			$timestamp = time();
		}

		$year = date('Y', $timestamp) - 1995;

		if(date('n', $timestamp) < 9){ //before september
			$year--;
		}

		return strtoupper(dechex($year));

	}

}

?>
