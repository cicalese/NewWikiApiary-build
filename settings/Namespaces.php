<?php

define("NS_WIKI", 3800);
define("NS_WIKI_TALK", 3801);
$wgExtraNamespaces[NS_WIKI] = "Wiki";
$wgExtraNamespaces[NS_WIKI_TALK] = "Wiki_talk";
$wgContentNamespaces[] = NS_WIKI;
$wgNamespacesToBeSearchedDefault[NS_WIKI] = true;

define("NS_EXTENSION", 3802);
define("NS_EXTENSION_TALK", 3803);
$wgExtraNamespaces[NS_EXTENSION] = "Extension";
$wgExtraNamespaces[NS_EXTENSION_TALK] = "Extension_talk";
$wgContentNamespaces[] = NS_EXTENSION;
$wgNamespacesToBeSearchedDefault[NS_EXTENSION] = true;

define("NS_SKIN", 3804);
define("NS_SKIN_TALK", 3805);
$wgExtraNamespaces[NS_SKIN] = "Skin";
$wgExtraNamespaces[NS_SKIN_TALK] = "Skin_talk";
$wgContentNamespaces[] = NS_SKIN;
$wgNamespacesToBeSearchedDefault[NS_SKIN] = true;
