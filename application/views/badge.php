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
							$attribs = array('title' => $link['title']);

							if(isset($link['id'])){
								$attribs['id'] = $link['id'];
							} else {
								$attribs['id'] = URL::title($link['text']);
							}

							if(isset($link['class'])){
								$attribs['class'] = $link['class'];
							}
							
							echo "<li>".html::anchor($link['href'], $link['text'], $attribs)."</li>\n";
						}
					}
				?>
			</ul>
		</nav>
	</div>

</header>