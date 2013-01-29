<?php

Kohana::config_set('core.site_domain', 'techhouse.org'.Kohana::config('core.site_domain'));
Kohana::config_set('core.site_protocol', 'https');

$doc = new DOMDocument('1.0', 'UTF-8');
$rss = $doc->appendChild($doc->createElement('rss'));
$rss->setAttributeNS('http://www.w3.org/2000/xmlns/' ,'xmlns:atom', 'http://www.w3.org/2005/Atom');
$rss = simplexml_import_dom($doc);

$rss->addAttribute('version', '2.0');

$root = $rss->addChild('channel');

	$root->title = 'Tech House Photography';
	$root->link = url::site();
	$root->description = 'Photographs about Technology House';
	$root->webMaster = 'webmaster@techhouse.org (Webmaster)';
	
	$atomlink = $root->addChild('atom:link', null, 'http://www.w3.org/2005/Atom');
	$atomlink->addAttribute('href', url::site(url::current()));
	$atomlink->addAttribute('rel', 'self');
	$atomlink->addAttribute('type', 'application/rss+xml');
//	$root->pubDate = date(DATE_RSS, $galleries[0]->date);

	foreach($galleries as $gallery){
		$item = $root->addChild('item');

		$item->title = $gallery->title;
		$item->author = $gallery->photos[0]->photographer;
		$item->link = url::site('gallery/view/'.$gallery->title_url);
		$item->guid = $item->link;
		$item->pubDate = date(DATE_RSS, $gallery->date);
		$item->description = html::anchor($item->link, html::image(url::site($gallery->poster_photo->getURL(340, 220))));
	}

$doc->formatOutput = true;
echo $doc->saveXML();

?>