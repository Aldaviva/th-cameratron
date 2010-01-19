<?php defined('SYSPATH') or die('No direct script access.');

class ip_Core {

	private static function convertToBits($ip_string){
		$string_octets = explode('.', $ip_string);
		$bits = '';

		foreach($string_octets as $i => $octet){
			$octet = str_pad(decbin($octet), 8, '0', STR_PAD_LEFT);
			$bits .= $octet;
		}

		return $bits;
	}

	public static function inSubnet($query_ip, $subnet, $maskLen){

		if(!valid::ip($query_ip)
			|| !valid::ip($subnet)
			|| !is_int($maskLen)
			|| $maskLen < 0
			|| $maskLen > 32){
			throw new Kohana_User_Exception('Invalid input', 'query_ip and subnet must be string of the form "xxx.xxx.xxx.xxx" and maskLen must be an integer in the range [0,32].');
			}

		$query_ip_bits = self::convertToBits($query_ip);
		$subnet_bits = self::convertToBits($subnet);

		$query_ip_bits = substr($query_ip_bits, 0, $maskLen);
		$subnet_bits = substr($subnet_bits, 0, $maskLen);

		$answer = $query_ip_bits == $subnet_bits;

		return $answer;
	}

}



?>
