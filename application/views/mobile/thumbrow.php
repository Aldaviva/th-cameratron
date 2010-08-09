<?

$thumb_width = 100;
$thumb_height = 67;

$isEmptyGallery = ($gallery->numPhotos() == 0);

$posterImgTag = html::image(
		($isEmptyGallery)
			? "media/img/empty.png"
			: $gallery->poster_photo->getURL($thumb_width, $thumb_height)
		);

/*$linkURL = ($isEmptyGallery)
		? 'upload/index/'.$gallery->id
		: 'gallery/view/'.$gallery->title_url;
 */

$linkURL = 'mobilegallery/view/'.$gallery->title_url;

echo html::anchor($linkURL,
		"<div class='thumbrow'>"
		. "<div class='poster_photo'>".$posterImgTag."</div>"
		. "  <h4 class='ellipses'>".html::specialchars($gallery->title)."</h4>"
		//. "  <div class='date'>".date('F Y', $gallery->date)."</div>"
		. "</div>",
	array('title' => $gallery->title, 'class' => 'gallery_link')
	);

?>