<!DOCTYPE HTML>
<html lang='en'>

	<head>
		<title><?= $title ?></title>

		<? foreach($stylesheets as $stylesheet){
			echo "<link href='$stylesheet' type='text/css' rel='stylesheet' />";
		}
		
		foreach($scripts as $script){
			echo "<script src='$script' type='text/javascript'></script>";
		} ?>

		<meta charset='utf-8' />
	</head>

	<body>

		<?= $body ?>

	</body>

</html>