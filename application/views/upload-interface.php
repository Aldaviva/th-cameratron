<div class="big">

	<div class="dialog nihilo">

		<form id="upload">

			<h3>Photo Transfer</h3>
			
			<div class="fields">
				<div class="leftcolumn">
					<div>
						<label for="title">Title</label>
						<input id="title" name="title" type="text" />
					</div>

					<div>
						<label for="location">Location</label>
						<input id="location" name="location" type="text" />
					</div>

					<div>
						<label for="photographer">Photographer</label>
						<input id="photographer" name="photographer" type="text" />
					</div>
				</div>
				
				<div class="rightcolumn">
					<div>
						<label>Photos</label>
						<span id="totals">no photos selected</span>
						<div id="addButton">
							<div id="swfOverlay"></div>
							<a href="#">Add photos</a>
						</div>
						<ol id="filelist"></ol>
					</div>
				</div>
			</div>

			<div class="clear"></div>

			<div class="status" id="status-active" style="display: none">
				<object id="piechart" type="image/svg+xml" data="<?= url::file('media/img/piechart.svg')?>">Uploading</object>
				<a href="#" id="status-cancel">stop</a>
				<span id="status-heading"></span>
				<span id="status-subheading"></span>
			</div>

			<div class="status" id="status-standby">
				<button id="submit" type="submit">Upload</button>
			</div>

		</form>

		<div class="left"></div>
		<div class="right"></div>
		<div class="bottomleft"></div>
		<div class="bottomright"></div>
	</div>

</div>

<script type="text/javascript">
	var existingGallery = <?= $existingGallery ? $existingGallery : 'null' ?>;
</script>