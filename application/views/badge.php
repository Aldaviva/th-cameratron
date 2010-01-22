<header>

	<div>
		<a id="badge-title" href="/gallery" title="See all of our galleries">
			<h1>Tech House Photography</h1>
		</a>

		<nav>
			<ul>
				<?
					foreach($links as $link){
						echo "<li>".html::anchor($link['href'], $link['text'], array('title' => $link['title']))."</li>\n";
					}
				?>
			</ul>
		</nav>
	</div>

</header>