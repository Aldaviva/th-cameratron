<!DOCTYPE HTML>
<html lang='en'>

	<head>
		<title><?= $title ?></title>

		<meta charset="utf-8" />

		<?= html::stylesheet($stylesheets, array(), false); ?>

	</head>

	<? flush(); ?>

	<body>

		<?= $body ?>

		<?= html::script($scripts, false); ?>

	</body>

</html>