<div class="big">

<?php

$title_max_chars = 15;
$thumb_width = 143;
$thumb_height = 108;

foreach($galleries as $gallery){

	$isEmptyGallery = ($gallery->numPhotos() == 0);

	$posterImgTag = html::image(
			($isEmptyGallery)
				? "media/img/empty.png"
				: $gallery->poster_photo->getURL($thumb_width, $thumb_height)
			);

	$linkURL = ($isEmptyGallery)
			? 'gallery/edit/'.$gallery->title_url
			: 'photo/view/'.$gallery->title_url;

	echo "<div class='polaroid'>";
	echo html::anchor($linkURL, 
			"<div class='poster_photo'><div>".$posterImgTag."</div></div>"
			//. "<h3>".text::limit_chars($gallery->title, $title_max_chars)."</h3>"
			. "<h3><span>{$gallery->title}</span></h3>"
			. "<div class='date'>".date('F Y', $gallery->date)."</div>",
		array('title' => $gallery->title)
		);
	
	echo "</div>\n";
}

echo $pagination;

?>

</div>