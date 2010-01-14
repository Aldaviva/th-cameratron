<!DOCTYPE HTML>
<html lang='en'>

	<head>
		<title><?= $title ?></title>

		<?

		echo html::stylesheet($stylesheets, array(), false);

		echo html::script($scripts, false);

		echo html::meta('charset', 'utf-8');

		?>

	</head>

	<body>

		<?= $body ?>

	</body>

</html>