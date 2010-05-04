<div class="big">

	<div class="dialog">

		<?= form::open('upload/receive', array('id' => 'upload', 'method' => 'post')); ?>

			<h3>Create Gallery</h3>
			
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
						<ol id="filelist">
							<!--<li><span class="filename">IMG_1001.<abbr>JPG</abbr></span> <a href="#" class="remove">&times;</a> <div class="progress"><div></div></div></li>
							<li><span class="filename">IMG_1002.<abbr>JPG</abbr></span> <a href="#" class="remove">&times;</a> <div class="progress"><div></div></div></li>
							<li><span class="filename">IMG_1003.<abbr>JPG</abbr></span> <a href="#" class="remove">&times;</a> <div class="progress"><div></div></div></li>
							<li><span class="filename">IMG_1004.<abbr>JPG</abbr></span> <a href="#" class="remove">&times;</a> <div class="progress"><div></div></div></li>
							<li><span class="filename">IMG_1005.<abbr>JPG</abbr></span> <a href="#" class="remove">&times;</a> <div class="progress"><div></div></div></li>-->
						</ol>
					</div>
				</div>
			</div>

			<div class="clear"></div>

			<div class="status">
				<button id="submit" type="submit">Upload</button>
			</div>

		<?= form::close(); ?>

		<div class="left"></div>
		<div class="right"></div>
		<div class="bottomleft"></div>
		<div class="bottomright"></div>
	</div>

</div>