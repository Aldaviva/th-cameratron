<?php

foreach($galleries as $gallery){
	echo "<div>";
	echo $gallery->title;
	echo "<br />";
	echo date('F Y', $gallery->datetime);
	echo "<br />";
	echo "gallery ".$gallery->id."'s poster photo is from gallery ".$gallery->poster_photo->gallery_id;
	echo "<br />";

//echo html::image($gallery->poster_photo->getURL(), array('width' => 100));
	echo "</div>";
}

?>
