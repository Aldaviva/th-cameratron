<?

//set_error_handler('myErrorHandler', E_WARNING | E_NOTICE);

foreach ($_FILES as $fieldName => $file) {
	$basename = basename($file['name']);
	$destinationPath = "/home/httpd/html/photos2/".strip_tags($basename);
	$tempPath = $file['tmp_name'];

	
	$size = @getImageSize($tempPath);
	
	if($size === FALSE){
		invalidFile($basename, 'getImageSize returned FALSE');

	} else if($size[0] == 0 || $size[1] == 0){
		invalidFile($basename, 'one of the image dimensions is zero');
		
	} else if($size[2] != IMAGETYPE_JPEG){
		invalidFile($basename, 'the image is not a JPEG');

	} else {

		move_uploaded_file($tempPath, $destinationPath);
		chmod($destinationPath, 0666);
		echo ("Success: Received $basename");
	}
}

/*function myErrorHandler($errno, $errstr){
	invalidFile($basename, "of error #$errno: $errstr");
}*/

function invalidFile($name, $reason = 'unknown'){
	unlink($tempPath);
	exit("Error: File $name is invalid because $reason.");
}

?>