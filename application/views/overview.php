<?php

foreach($galleries as $gallery){

	echo "<div>";
	echo "<h3>{$gallery->title}</h3>";
	echo html::image($gallery->poster_photo->getURL(100));
	echo "<br />";
	echo date('F Y', $gallery->date);
	echo "<br />";
	echo html::anchor('gallery/view/'.$gallery->id, 'View');
	
	echo "</div>";
}

?>
