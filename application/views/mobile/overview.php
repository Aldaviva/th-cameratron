<?php

foreach($galleries as $gallery){
	echo new View('mobile/thumbrow', array('gallery' => $gallery));
}

echo "<div class='pagination-container'>$pagination</div>";

?>
