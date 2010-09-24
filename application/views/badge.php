<header>

	<div>
		<a id="badge-title" href="<?= Kohana::config('core.site_domain') ?>" title="See all of our galleries">
			<h1>Tech House Photography</h1>
		</a>

		<nav>
			<ul>
				<?
					foreach($links as $link){
						if($link == "hr"){
							echo "<hr />";
						} else {

							if($link['text'] == "Guest Pass" && GUEST){
								continue;
							}

							$linkAttribs = array('title' => $link['title']);
							$listItemAttribs = array();

							if(isset($link['id'])){
								$linkAttribs['id'] = $link['id'];
							} else {
								$linkAttribs['id'] = URL::title('badge-'.$link['text']);
							}

							if(isset($link['class'])){
								$listItemAttribs['class'] = $link['class'];
							}
							
							echo "<li".html::attributes($listItemAttribs).">".html::anchor($link['href'], $link['text'], $linkAttribs)."</li>\n";
						}
					}
				?>
			</ul>
		</nav>
	</div>

</header>