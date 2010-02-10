<div class="big">

<?php

$title_max_chars = 11;

foreach($galleries as $gallery){

	echo "<div class='polaroid'>";
	echo html::anchor('gallery/view/'.$gallery->title_url,
			html::image($gallery->poster_photo->getURL(109, 82))
			. "<h3>".text::limit_chars($gallery->title, $title_max_chars)."</h3>"
			. "<div class='date'>".date('F Y', $gallery->date)."</div>",
		array('title' => $gallery->title_url)
		);
	
	echo "</div>\n";
}

echo $pagination;

?>

</div>