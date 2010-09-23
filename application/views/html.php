<!DOCTYPE HTML>
<html lang='en'>

	<head>
		<title><?= $title ?></title>

		<?= html::meta($metas); ?>

		<?= html::stylesheet($stylesheets, array(), false); ?>

		<link rel="alternate" type="application/rss+xml" title="Tech House Photography" href="<?= url::site('gallery/rss') ?>" />

		<script type="text/javascript"></script>

	</head>

	<? flush(); ?>

	<body>

		<?= $body ?>

		<?= html::script($scripts, false); ?>
	</body>

</html>