<!DOCTYPE HTML>
<html lang='en'>

	<head>
		<title><?= $title ?></title>

		<?= html::stylesheet($stylesheets, array(), false); ?>

		<?= html::meta('charset', 'utf-8'); ?>

	</head>

	<? flush(); ?>

	<body>

		<?= $body ?>

		<?= html::script($scripts, false); ?>

	</body>

</html>