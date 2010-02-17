<div class="big">

<?php

	echo "<h2>{$gallery->title}</h2>";

	//all photos in gallery
	echo "<div id='thumbs'>";
	foreach($gallery->photos as $photo){
		echo "<span>";
		$thumb = html::image($photo->getURL(100));
		echo html::anchor("photo/view/{$gallery->title_url}/{$photo->basename}", $thumb);
		echo "</span>";
	}
	echo "</div>";

?>

</div>