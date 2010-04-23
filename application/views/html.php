<!DOCTYPE HTML>
<html lang='en'>

	<head>
		<title><?= $title ?></title>

		<meta http-equiv="content-type" content="text/html; charset=utf-8" />

		<?= html::stylesheet($stylesheets, array(), false); ?>

		<? if(isset($_GET['isDebug'])): ?>
			<script type="text/javascript">
				var djConfig = {
					isDebug: true
				}
			</script>
		<? endif; ?>

		<?= html::script($scripts, false); ?>

	</head>

	<? flush(); ?>

	<body>

		<?= $body ?>

	</body>

</html>