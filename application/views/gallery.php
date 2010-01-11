<?php

echo html::anchor('', 'back');

echo "<br/>";

//the selected photo
echo html::image($selectedPhoto->getURL(640,480));

//navigation
echo html::anchor("gallery/view/{$gallery->id}/{$selectedPhoto->previousPhoto()->basename}", 'Previous');
echo html::anchor("gallery/view/{$gallery->id}/{$selectedPhoto->nextPhoto()->basename}", 'Next');

//attributes for the selected photo
echo "<dl>";
foreach(array('description', 'people', 'datetime', 'location', 'photographer') as $field){
	echo "<dt>$field</dt>";
	if($field =='datetime'){
		echo "<dd>".date('F j, Y \a\t g:ia', $selectedPhoto->$field)."</dd>";
	} else {
		echo "<dd>{$selectedPhoto->$field}</dd>";
	}
}

//all photos in gallery
foreach($gallery->photos as $photo){
	echo "<div>";
	$thumb = html::image($photo->getURL(100));
	echo html::anchor("gallery/view/{$gallery->id}/{$photo->basename}", $thumb);
	echo "</div>";
}

?>