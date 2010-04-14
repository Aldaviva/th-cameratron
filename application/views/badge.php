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
							}

							echo "<li>".html::anchor($link['href'], $link['text'], $attribs)."</li>\n";
						}
					}
				?>
			</ul>
		</nav>
	</div>

</header>