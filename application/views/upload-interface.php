<div class="big">

	<!--<? //echo form::open('upload/receive', array('id' => 'uploadForm', 'method' => 'post')); ?>

		<? foreach(array('title', 'location', 'photographer') as $fieldName){
			echo "<div>";
			echo form::label("upload$fieldName", ucfirst($fieldName));
			echo form::input($fieldName, 'my'.$fieldName);
			echo "</div>";
		} ?>

		<div id="uploadContainer" style="width: 120px; height: 50px"></div>

		<ul id="uploadFileList"></ul>

		<button id="uploadSubmit" type="submit">Go</button>

	<? //echo form::close(); ?>-->

	<div class="dialog">

		<?= form::open('upload/receive', array('id' => 'upload', 'method' => 'post')); ?>

			<h3>Create Gallery</h3>
			
			<div class="fields">
				<div class="leftcolumn">
					<div>
						<label for="title">Title</label>
						<input id="title" name="title" type="text" value="My Gallery" />
					</div>

					<div>
						<label for="location">Location</label>
						<input id="location" name="location" type="text" value="War Room" />
					</div>

					<div>
						<label for="photographer">Photographer</label>
						<input id="photographer" name="photographer" type="text" value="Josiah Carberry" />
					</div>
				</div>
				
				<div class="rightcolumn">
					<div>
						<label>Photos</label>
						<span id="totals">5 photos: 3.1<abbr>MB</abbr></span>
						<a href="#" id="addButton">Add photos</a>
						<ol id="filelist">
							<li><span class="filename">IMG_1001.<abbr>JPG</abbr></span> <span class="remove">x</span></li>
							<li><span class="filename">IMG_1002.<abbr>JPG</abbr></span> <span class="remove">x</span></li>
							<li><span class="filename">IMG_1003.<abbr>JPG</abbr></span> <span class="remove">x</span></li>
							<li><span class="filename">IMG_1004.<abbr>JPG</abbr></span> <span class="remove">x</span></li>
							<li><span class="filename">IMG_1005.<abbr>JPG</abbr></span> <span class="remove">x</span></li>
						</ol>
					</div>
				</div>
			</div>

			<div class="status"><button id="submit" type="submit">Submit!!!</button></div>
		<?= form::close(); ?>

		<div class="left"></div>
		<div class="right"></div>
		<div class="bottomleft"></div>
		<div class="bottomright"></div>
	</div>

</div>