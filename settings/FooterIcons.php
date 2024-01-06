<?php

$myWikiApiaryURL = "https://wikiapiary.wmcloud.org";
$wgFooterIcons['monitoredby']['wikiapiary'] = [
	'src' => "$wgResourceBasePath/resources/assets/Monitored_by_WikiApiary.png",
	"url" => "$myWikiApiaryURL?pk_campaign=FooterIcon&pk_kwd=wikiapiary",
	"alt" => "Monitored by WikiApiary"
];

$wgFooterIcons['servedby']['wmfcloud'] = [
	'src' => "$wgResourceBasePath/resources/assets/wmf-cloud.png",
	"url" => "https://wikitech.wikimedia.org/wiki/Help:Cloud_Services_Introduction",
	"alt" => "Served by Wikimedia Cloud Services",
];
