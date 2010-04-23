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
							foreach(array('id', 'class') as $attribName){
								if(isset($link[$attribName])){
									$attribs[$attribName] = $link[$attribName];
								}
							}

							echo "<li>".html::anchor($link['href'], $link['text'], $attribs)."</li>\n";
						}
					}
				?>
			</ul>
		</nav>
	</div>

</header>