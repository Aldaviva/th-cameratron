<div class="big">

<?php

	$twoSections = isset($galleries) && isset($photos);

	echo "<div id='polaroids'>";
	if(!empty($galleries)){
		if($twoSections){
			echo "<h3>Galleries</h3>";
		}
		foreach($galleries as $gallery){
			echo new View('polaroid', array('gallery' => $gallery));
		}
	} else if($twoSections) {
		echo "<p>No galleries found.</p>";
	}
	echo "<div class='clear'></div> </div>";
	
	echo "<div id='thumbs'>";
	if(!empty($photos)){
		if($twoSections){
			echo "<h3>Photos</h3>";
		}
		foreach($photos as $i => $photo){
			if($bigFirstPhoto && $i == 0){
				echo '<span class="largethumb">';
				$thumb = html::image($photo->getURL(340, 220));
	//			echo html::anchor("photo/view/{$photo->gallery->title_url}", $thumb);
			} else {
				echo "<span>";
				$thumb = html::image($photo->getURL(100));
			}
			echo html::anchor("photo/view/".$photo->gallery->title_url."/#/".$photo->basename, $thumb);
			echo "</span>";
		}
	} else if($twoSections) {
		echo "<p>No photos found.</p>";
	}
	echo "</div>";

?>

</div>