<!DOCTYPE HTML>
<html lang='en'>

	<head>
		<title><?= $title ?></title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />

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