<div class="big">

<?php

$title_max_chars = 15;
$thumb_width = 143;
$thumb_height = 108;

foreach($galleries as $gallery){

	echo "<div class='polaroid'>";
	echo html::anchor('photo/view/'.$gallery->title_url,
			"<div class='poster_photo'><div>".html::image($gallery->poster_photo->getURL($thumb_width, $thumb_height))."</div></div>"
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