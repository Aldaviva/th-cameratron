<?php

echo html::anchor('', 'back');

echo "<br/>";

//the selected photo
echo html::anchor($selectedPhoto->getURL(), html::image($selectedPhoto->getURL(640,480)));

//navigation
echo html::anchor("gallery/view/{$gallery->title_url}/{$selectedPhoto->previousPhoto()->basename}", 'Previous');
echo html::anchor("gallery/view/{$gallery->title_url}/{$selectedPhoto->nextPhoto()->basename}", 'Next');

//attributes for the selected photo
echo form::open('photo/edit', array('method' => 'get'));
echo form::hidden('photo_id', $selectedPhoto->id);
//echo "<dl>";
foreach(array('description', 'people', 'datetime', 'location', 'photographer') as $field){
	echo "<p><label>$field";
	if($field =='datetime'){
		$value = date('F j, Y, g:ia', $selectedPhoto->$field);
	} else {
		$value = $selectedPhoto->$field;
	}

//	echo "<dd>";
	echo form::input($field, $value);
	echo "</label></p>";
}
//echo "</dl>";
echo form::submit('submit', 'Save');
echo form::close();

echo "<div class='thumbs'>";
//all photos in gallery
foreach($gallery->photos as $photo){
	echo "<div>";
	$thumb = html::image($photo->getURL(100));
	echo html::anchor("gallery/view/{$gallery->title_url}/{$photo->basename}", $thumb);
	echo "</div>";
}
echo "</div>";

?>