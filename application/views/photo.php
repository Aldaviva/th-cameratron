<div class="big">
	<div>
		<?= html::anchor($selectedPhoto->getURL(), html::image($selectedPhoto->getURL(870,390), array('id'=>'selectedPhoto'))) ?>
		<?= form::open('photo/edit', array('method' => 'get', 'id' => 'metadata')) ?>
			<input type='hidden' name="photo_id" value='<?= $selectedPhoto->id ?>' />
			<label><span>Description</span><?= form::input('description', $selectedPhoto->description) ?></label>
			<label><span>People</span><?= form::input('people', $selectedPhoto->people) ?></label>
			<label><span>Date and time</span><?= form::input('datetime', date('F j, Y, g:ia', $selectedPhoto->datetime)) ?></label>
			<label><span>Location</span><?= form::input('location', $selectedPhoto->location) ?></label>
			<label><span>Photographer</span><?= form::input('photographer', $selectedPhoto->photographer) ?></label>
			<?= form::submit('submit', 'Save'); ?>
		</form>
	</div>
</div>

<div id="thumbs">
	<?
		foreach($siblingPhotos as $photo){
			$attribs = ($selectedPhoto->id == $photo->id) ? array('class' => 'active') : array();

			//$x = ($photo->id == 382) ? array('style' => 'height: 25px') : array();

			$img = html::image($photo->getURL(75, 50));

			$a = html::anchor('photo/view/'.$gallery_title_url.'/'.$photo->basename, $img, $attribs);
			echo "<span>$a</span>\n";
		}
	?>
</div>