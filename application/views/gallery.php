<?php

echo html::anchor('', 'back');

echo "<br>";

echo html::image($selectedPhoto->getURL(), array('height' => 400));

echo "<dl>";
foreach(array('description', 'people', 'datetime', 'location', 'photographer') as $field){
	echo "<dt>$field</dt>";
	if($field =='datetime'){
		echo "<dd>".date('F j, Y \a\t g:ia', $selectedPhoto->$field)."</dd>";
	} else {
		echo "<dd>{$selectedPhoto->$field}</dd>";
	}
}

foreach($gallery->photos as $photo){
	echo "<div>";
	$thumb = html::image($photo->getURL(), array('width'=>100));
	echo html::anchor("gallery/view/{$gallery->id}/{$photo->basename}", $thumb);
	echo "</div>";
}

?>
