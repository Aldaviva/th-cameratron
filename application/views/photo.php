<div class="big">
		<?= html::anchor($selectedPhoto->getURL(), html::image($selectedPhoto->getURL(870,390), array('id'=>'selectedPhoto'))) ?>
		<?= form::open('photo/edit', array('method' => 'get', 'id' => 'metadata')) ?>
			<input type='hidden' name="photo_id" value='<?= $selectedPhoto->id ?>' />
			<div class="left">
				<label><span>Description</span><?= form::input(array('id' => 'description', 'name' => 'description', 'value' => $selectedPhoto->description, 'title' => 'description')) ?></label>
				<label><span>People</span><?= form::input('people', $selectedPhoto->people, ' title="people"') ?></label>
			</div>
			<label><span>Date and time</span><?= form::input('datetime', (($selectedPhoto->datetime > 0) ? date('F j, Y, g:ia', $selectedPhoto->datetime) : ''), ' title="date and time"') ?></label>
			<label><span>Location</span><?= form::input('location', $selectedPhoto->location, ' title="location"') ?></label>
			<label><span>Photographer</span><?= form::input('photographer', $selectedPhoto->photographer, ' title="photographer"') ?></label>
			<div class="buttons">
				<?= form::input(array('name'=>'cancel', 'id'=>'cancel', 'type'=>'button'), 'Cancel'); ?>
				<?= form::submit('submit', 'Save'); ?>
			</div>
		<?= form::close(); ?>
</div>

<div id="thumbs">
	<?

		foreach($siblingPhotos as $subIndex => $photo){
			//$attribs = ($selectedPhoto->id == $photo->id) ? array('class' => 'active') : array();

			$img = html::image($photo->getURL(75, 50));

			$a = html::anchor('photo/view/'.$gallery_title_url.'/'.$photo->basename, $img);
//			echo "<span".html::attributes($attribs).">$a</span>";
			echo "<span>$a</span>";
		}
	?>
</div>

<script type="text/javascript">
	document.getElementById('selectedPhoto').src = '';
	dojo.addOnLoad(function(){
		cameratron.navigation = new Cameratron.Navigation(cameratron, '<?= $gallery_title_url ?>');
	});

</script>