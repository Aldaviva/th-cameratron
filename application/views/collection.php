<div class="big">

<?php

	echo "<div id='thumbs'>";
	foreach($photos as $i => $photo){
		if($bigFirstPhoto    && $i == 0){
			echo '<span class="largethumb">';
			$thumb = html::image($photo->getURL(340, 220));
		} else {
			echo "<span>";
			$thumb = html::image($photo->getURL(100));
		}
		echo html::anchor("photo/view/{$photo->gallery->title_url}/{$photo->basename}", $thumb);
		echo "</span>";
	}
	echo "</div>";

?>

</div>