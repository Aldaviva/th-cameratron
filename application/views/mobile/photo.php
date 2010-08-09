<div class="small">

	<div id="nav">

	<?
		if(!$selectedPhoto->isFirstPhoto()){
			$previousPhoto = $selectedPhoto->previousPhoto();
			echo html::anchor('mobile/photo/view/'.$gallery_title_url.'/'.$previousPhoto->basename, form::button(array('id' => 'nav_previous', 'value' => '&laquo;')));
		} else {
			echo form::button(array('id' => 'nav_previous', 'value' => '&laquo;', 'disabled' => 'disabled'));
		}

		echo html::anchor('mobile/gallery/view/'.$gallery_title_url, form::button(array('id' => 'nav_up', 'value' => '&and;')));

		if(!$selectedPhoto->isLastPhoto()){
			$nextPhoto = $selectedPhoto->nextPhoto();
			echo html::anchor('mobile/photo/view/'.$gallery_title_url.'/'.$nextPhoto->basename, form::button(array('id' => 'nav_next', 'value' => '&raquo;')));
		} else {
			echo form::button(array('id' => 'nav_next', 'value' => '&raquo;', 'disabled' => 'disabled'));
		}

	?>

	<?/*
		if(!$selectedPhoto->isFirstPhoto()){
			$previousPhoto = $selectedPhoto->previousPhoto();
			echo html::anchor('mobile/photo/view/'.$gallery_title_url.'/'.$previousPhoto->basename, html::image($previousPhoto->getURL(240,240)), array('id' =>'nav_previous'));
		}

		if(!$selectedPhoto->isLastPhoto()){
			$nextPhoto = $selectedPhoto->nextPhoto();
			echo html::anchor('mobile/photo/view/'.$gallery_title_url.'/'.$nextPhoto->basename, html::image($nextPhoto->getURL(240,240)), array('id' =>'nav_next'));
		}
	*/?>
	</div>

	<?= html::image($selectedPhoto->getURL(480,480), array('id'=>'selectedPhoto')) ?>

	<dl id="metadata">
		<?
		if(!empty($selectedPhoto->description)){
			echo "<dt>Description</dt><dd>{$selectedPhoto->description}</dd>";
		}
		if(!empty($selectedPhoto->people)){
			echo "<dt>People</dt><dd>{$selectedPhoto->people}</dd>";
		}
		if($selectedPhoto->datetime > 0){
			echo "<dt>Date and time</dt><dd>".date('F j, Y, g:ia', $selectedPhoto->datetime)."</dd>";
		}
		if(!empty($selectedPhoto->location)){
			echo "<dt>Location</dt><dd>{$selectedPhoto->location}</dd>";
		}
		if(!empty($selectedPhoto->photographer)){
			echo "<dt>Photographer</dt><dd>{$selectedPhoto->photographer}</dd>";
		}
		?>
	</dl>
</div>