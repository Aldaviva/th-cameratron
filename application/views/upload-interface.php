<div class="big">

	<?= form::open('upload/receive', array('id' => 'uploadForm', 'method' => 'post')); ?>

		<? foreach(array('title', 'location', 'photographer') as $fieldName){
			echo "<div>";
			echo form::label("upload$fieldName", ucfirst($fieldName));
			echo form::input($fieldName, 'my'.$fieldName);
			echo "</div>";
		} ?>

		<div id="uploadContainer" style="width: 120px; height: 50px"></div>

		<ul id="uploadFileList"></ul>

		<button id="uploadSubmit" type="submit">Go</button>

	<?= form::close(); ?>

</div>