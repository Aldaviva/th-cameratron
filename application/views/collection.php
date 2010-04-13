<div class="big">

<?php

	//echo "<h2>$heading</h2>";

	//all photos in gallery
	echo "<div id='thumbs'>";
	foreach($photos as $photo){
		echo "<span>";
		$thumb = html::image($photo->getURL(100));
		echo html::anchor("photo/view/{$photo->gallery->title_url}/{$photo->basename}", $thumb);
		echo "</span>";
	}
	echo "</div>";

?>

</div>