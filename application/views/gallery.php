<?php

echo "<h1>".$gallery->title."</h1>";
echo html::anchor('', 'back');

echo "<br>";

echo html::image($selectedPhoto->getURL(), array('height' => 400));

echo "<dl>";
foreach(array('description', 'people', 'datetime', 'location', 'photographer') as $field){
	echo "<dt>$field</dt>";
	if($field =='datetime'){
		echo "<dd>".date('F j, Y \a\t g:ia')."</dd>";
	} else {
		echo "<dd>{$selectedPhoto->$field}</dd>";
	}
}

foreach($gallery->photos as $i => $photo){
	echo "<div>";
	$thumb = html::image($photo->getURL(), array('width'=>100));
	echo html::anchor("gallery/view/{$gallery->id}/$i", $thumb);
	echo "</div>";
}

?>
