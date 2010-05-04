<?= $badge ?>

<?= form::open('/photo/search', array('id' => 'searchbox', 'method' => 'get')); ?>
	<div>
		<?=	form::input('q', (isset($_GET['q']) ? $_GET['q'] : 'Search')); ?><button type="submit">Search</button>
	</div>
	
<?= form::close(); ?>


<?
	if(is_array($heading)){
		echo "<h2 class='ellipses'>".html::anchor($heading['href'], $heading['text'])."</h2>";
	} else if(!empty($heading)) {
		echo "<h2 class='ellipses'>".$heading."</h2>";
	}
?>

<?= $content ?>