<?

$thumb_width = 143;
$thumb_height = 108;

$isEmptyGallery = ($gallery->numPhotos() == 0);

$posterImgTag = html::image(
		($isEmptyGallery)
			? "media/img/empty.png"
			: $gallery->poster_photo->getURL($thumb_width, $thumb_height)
		);

$linkURL = ($isEmptyGallery)
		? 'upload/index/'.$gallery->id
		: 'gallery/view/'.$gallery->title_url;

echo html::anchor($linkURL,
		"<div class='polaroid'>"
		. "<div class='poster_photo'><div>".$posterImgTag."</div></div>"
		. "  <h4 class='ellipses'>".html::specialchars($gallery->title)."</h4>"
		. "  <div class='date'>".date('F Y', $gallery->date)."</div>"
		. "</div>",
	array('title' => $gallery->title, 'class' => 'gallery_link')
	);

?>