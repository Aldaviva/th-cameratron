<?
	if(is_array($heading)){
		echo "<h2 class='ellipses'>".html::anchor($heading['href'], $heading['text'])."</h2>";
	} else if(!empty($heading)) {
		echo "<h2 class='ellipses'>".$heading."</h2>";
	}
?>

<div class="small">
	<?= $content; ?>
</div>