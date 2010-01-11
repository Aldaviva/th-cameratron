<?php
if(!isset($searchTerm)){
	$searchTerm = '';
}

echo form::open('gallery/searchAll');
echo form::input('question', $searchTerm);
echo form::submit('submit', 'Search');
echo form::close();

echo "<br/>";

foreach($galleries as $gallery){

	echo "<div>";
	echo "<h3>{$gallery->title}</h3>";
	echo html::image($gallery->poster_photo->getURL(100));
	echo "<br />";
	echo date('F Y', $gallery->date);
	echo "<br />";
	if(empty($searchTerm)){
		echo html::anchor('gallery/view/'.$gallery->id, 'View');
	} else {
		echo html::anchor('gallery/search/'.$gallery->id.'/'.$searchTerm, 'Search inside');
	}
	
	echo "</div>";
}

?>
