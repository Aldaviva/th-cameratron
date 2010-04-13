<?= $badge ?>

<div id="search">

	<?= form::open('/photo/search', array('method' => 'get')); ?>
		<?= form::input('q'); ?>
		<input type="submit" value="Search" />
		<? //not using the form::submit() helper here because i want to omit the Name attr, so the GET URL args don't contain the submit button's value ?>
	<?= form::close(); ?>

</div>

<?
	if(is_array($heading)){
		echo "<h2>".html::anchor($heading['href'], $heading['text'])."</h2>";
	} else if(!empty($heading)) {
		echo "<h2>".$heading."</h2>";
	}
?>

<?= $content ?>