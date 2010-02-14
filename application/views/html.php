<!DOCTYPE HTML>
<html lang='en'>

	<head>
		<title><?= $title ?></title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />

		<?= html::stylesheet($stylesheets, array(), false); ?>

		<?= html::script($scripts, false); ?>

	</head>

	<? flush(); ?>

	<body>

		<?= $body ?>

	</body>

</html>