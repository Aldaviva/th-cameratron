<div class="big">

<?php


foreach($galleries as $gallery){
	echo new View('polaroid', array('gallery' => $gallery));
}

echo "<div class='pagination-container'>$pagination</div>";

?>

</div>