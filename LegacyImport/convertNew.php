<?php

class Gallery {

	private $id, $title;
	public $legacyDirectory;

	static $nextId = 1;

	function __construct(){
		global $galleries;

		$this->id = self::$nextId++;

		array_push($galleries, $this);
	}

	function __set($name, $value) {
		switch($name){
			case 'title':
				$this->$name = trim($value);
				break;
			default:
				$this->$name = $value;
		}
	}

	function __get($name) {
		return $this->$name;
	}

	function toSQL(){
		$id = $this->id;
		$title = pg_escape_string(trim($this->title));
		return "INSERT INTO galleries (id, title) VALUES ($id, '$title');\n";
	}

	function toCSV(){
		return $this->id."\t".$this->title."\n";
	}

}

class Photo {

	/*private $id, $basename, $gallery_id, $description, $people, $datetime,
			$photographer, $location;*/
	private $data;
	private $sqlMode = false;

	static $nextId = 1;

	function __construct($gallery_id){
		global $photos;

		$this->data = array();

		$this->id = self::$nextId++;
		$this->gallery_id = $gallery_id;

		array_push($photos, $this);
	}

	function __set($name, $value){

		$value = preg_replace('/<a href=\".+?\">(.+?)<\/a>/i', '$1', $value);

		$value = str_ireplace(
				array('^M', '<unknown>'),
				array(' ', ''),
				$value);

		$value = html_entity_decode($value);

		switch($name){
			case 'locationDate':
				if(strpos($value, ',') !== false){
					list($a, $b) = explode(',', $value, 2);
					if(strtotime($a) !== false){
						$this->datetime = $a;
						$this->location = trim(stripslashes($b));
					} else if(strtotime($b) !== false){
						$this->datetime = $b;
						$this->location = trim(stripslashes($a));
					} else {
						$this->location = trim(stripslashes($value));
					}
				} else if(strtotime($value) !== false){
					$this->datetime = $value;
				} else {
					$this->location = $value;
				}
				break;
			case 'description2':
				$value = trim(stripslashes($value));

				if(empty($this->data['description'])){
					$this->data['description'] = $value;
				} else {
					$value = ' '.$value;

					$lastChar = $this->data['description'];
					$lastChar = $lastChar[strlen($lastChar)-1];

					if(!in_array($lastChar, array('.', '?', '!'))){
						$value = '.'.$value;
					}

					$this->data['description'] .= $value;
				}
				break;
			case 'location':
				if($value == 'time'){
					$value = '';
				}
				//no break here, fall through
			case 'photographer':
				if($value == str_repeat('?', strlen($value))){
					$value = '';
				}
			case 'basename':
			case 'description':
			case 'people':
				$this->data[$name] = trim(stripslashes($value));
				break;
			case 'datetime':
				if(!empty($value)){
					$timestamp = strtotime($value);
					if($timestamp !== false){
						$this->data[$name] = $timestamp;
					} else {
						trigger_error("Bad date: '$value'");
					}
				}
				break;
			case 'id':
			case 'gallery_id':
				$this->data[$name] = $value;
				break;
		}
	}

	function __get($name){
		if($this->sqlMode){
			switch($name){
				case 'basename':
				case 'description':
				case 'people':
				case 'photographer':
				case 'location':
						if(!empty($this->data[$name])){
							return "'".pg_escape_string($this->data[$name])."'";
						} else {
							return "NULL";
						}
				default:
					if(!empty($this->data[$name])){
						return $this->data[$name];
					} else {
						return "NULL";
					}
			}
		} else {
			if(!empty($this->data[$name])){
				return $this->data[$name];
			} else {
				return '';
			}
		}
	}

	function toSQL(){

		$this->sqlMode = true;

		$id = $this->id;
		$gallery_id = $this->gallery_id;
		$basename = $this->basename;
		$description = $this->description;
		$people = $this->people;
		if(is_int($this->datetime)){
			$datetime = "'".date('Y-m-d H:i:s', $this->datetime)."'";
		} else {
			$datetime = 'NULL';
		}
		$photographer = $this->photographer;
		$location = $this->location;

		return "INSERT INTO photos (id, basename, gallery_id, description, people, datetime, photographer, location) VALUES (".
			implode(',', array(
				$id,
				$basename,
				$gallery_id,
				$description,
				$people,
				$datetime,
				$photographer,
				$location))
			.");\n";
		
	}

	function toCSV(){
		$this->sqlMode = false;

		if(is_int($this->datetime)){
			$date = date('F j, Y \a\t g:i:sa', $this->datetime);
		} else {
			$date = '';
		}

		return implode("\t", array(
			$this->id,
			$this->basename,
			$this->gallery_id,
			$this->description,
			$this->people,
			$date,
			$this->photographer,
			$this->location))."\n";
	}
}

$galleries = array();

$photos = array();

$inputSchemas = array(
	"new" => array(
		'basename' => 0,
		'description' => 1,
		'people' => 3,
		'location' => 4,
		'photographer' => 5,
		'datetime' => 6
	),
	"old" => array(
		'basename' => 0,
		'description' => 1,
		'description2' => 2,
		'people' => 3,
		'locationDate' => 4,
		'photographer' => 5,
		'category' => 6
	)
);

set_error_handler('myErrorHandler');

function myErrorHandler($errno, $errstr, $errfile, $errline){
	die("line $errline: $errstr");
}

function pullData($dbFilename, $inputSchema){
	$dbFileLines = file($dbFilename) or die("Could not read $dbFilename.");

	$gallery = new Gallery();
	$gallery->title = array_shift($dbFileLines); //first line of file is gallery name
	list($gallery->legacyDirectory) = explode('/', rtrim($dbFilename, '.db'));
//	echo "Gallery: ".$gallery->title."\n";

	foreach($dbFileLines as $photoNo => $line){
		$lineNo = $photoNo+2;
		if('' == trim($line)) continue;
//		echo $lineNo."\n";
		
		$photo = new Photo($gallery->id);
		$segments = explode('|', $line);
		if(count($inputSchema) == 1 + count($segments)){
			$segments[] = ''; //the 'category' field is always missing
		} else if(count($inputSchema) > count($segments)){
			echo "Line ".($lineNo).": ".$line;
			die("Gallery '".$gallery->legacyDirectory."': More columns in inputSchema than the line above.");
		}
		foreach($inputSchema as $segmentName => $segmentNo){
			$photo->$segmentName = trim($segments[$segmentNo]);
		}
	}
}

/**
 * Main program execution
 */

chdir('Z:\data\Centralized db file')
	or die('could not change to centralized db file directory');

foreach(glob("*.db") as $dbFilename){
	pullData($dbFilename, $inputSchemas['new']);
}

chdir('Z:\data\With db file')
	or die('Could not change to directory full of gallery directories.');

foreach(glob("*", GLOB_ONLYDIR) as $galleryDirName){
	pullData("$galleryDirName/photo.db", $inputSchemas['old']);
}

//
// SQL
//

/**/

echo "\\set ON_ERROR_STOP 1\n";

echo "begin;\n";

//echo "\n-- Galleries\n";
//foreach($galleries as $gallery){
//	echo $gallery->toSQL();
//}

echo "\n-- Photos\n";
foreach($photos as $photo){
	echo $photo->toSQL();
}

echo "\n-- ".count($galleries)." galleries, with a sum of ".count($photos)." photos.\n";

echo "commit;\n";
/*/

//
// CSV
//


//echo "id\ttitle\n";
//foreach($galleries as $gallery){
//	echo $gallery->toCSV();
//}
//echo "\n";

//echo "id\tbasename\tgallery_id\tdescription\tpeople\tdatetime\tphotographer\tlocation\n";
//foreach($photos as $photo){
//	echo $photo->toCSV();
//}

/**/

?>
