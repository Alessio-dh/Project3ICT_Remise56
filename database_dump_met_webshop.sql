-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jan 12, 2017 at 04:00 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `remise56`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `name`, `created_by`, `published`, `created_at`, `updated_at`) VALUES
(7, 'Test gallerij', 1, 1, '2016-12-06 18:27:37', '2016-12-06 18:27:37'),
(8, 'Winter 2016', 1, 1, '2016-12-06 18:59:38', '2016-12-06 18:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) unsigned NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `file_mime` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `file_name`, `file_size`, `file_mime`, `file_path`, `created_by`, `created_at`, `updated_at`) VALUES
(7, 7, '584711342c9baremiseblond2.jpeg', '69384', 'image/jpeg', 'Gallery/Images/584711342c9baremiseblond2.jpeg', 1, '2016-12-06 18:27:48', '2016-12-06 18:27:48'),
(8, 8, '584718d06351dremiseblond2.jpeg', '69384', 'image/jpeg', 'Gallery/Images/584718d06351dremiseblond2.jpeg', 1, '2016-12-06 19:00:16', '2016-12-06 19:00:16');

-- --------------------------------------------------------

--
-- Table structure for table `madmin_cache`
--

CREATE TABLE `madmin_cache` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `expire` datetime DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `madmin_cache`
--

INSERT INTO `madmin_cache` (`id`, `siteid`, `expire`, `value`) VALUES
('d2e0876d69efd0b94e36c8dae546823d', 1, NULL, '<section class="aimeos catalog-stage">\n<div class="catalog-stage-image">\n</div>\n<div class="catalog-stage-breadcrumb">\n	<nav class="breadcrumb">\n		<span class="title">You are here:</span>\n		<ol>\n			<li><a href="/list">Your search result</a></li>\n		</ol>\n	</nav>\n</div>\n<!-- catalog.stage.navigator -->\n<!-- catalog.stage.navigator -->\n</section>\n'),
('cc389172d233ffef39f8c456c735d039', 1, NULL, ''),
('22058030851afb524666cc193e53c7cd', 1, NULL, '<section class="aimeos catalog-stage">\n<div class="catalog-stage-image">\n</div>\n<div class="catalog-stage-breadcrumb">\n	<nav class="breadcrumb">\n		<span class="title">You are here:</span>\n		<ol>\n			<li><a href="/list?f_search=DEMO">Your search result</a></li>\n		</ol>\n	</nav>\n</div>\n<!-- catalog.stage.navigator -->\n<!-- catalog.stage.navigator -->\n</section>\n'),
('2fb7c46ebf13026c7ba1e4a87bf37beb', 1, NULL, ''),
('4377d812a2bc80d3ef3d9743153ba922', 1, NULL, '<section class="aimeos catalog-stage">\n<div class="catalog-stage-image">\n</div>\n<div class="catalog-stage-breadcrumb">\n	<nav class="breadcrumb">\n		<span class="title">You are here:</span>\n		<ol>\n			<li><a href="/list?f_search=Test">Your search result</a></li>\n		</ol>\n	</nav>\n</div>\n<!-- catalog.stage.navigator -->\n<!-- catalog.stage.navigator -->\n</section>\n'),
('edf546aaec9514b6f19c95d1b5cfac48', 1, NULL, ''),
('bda530380a01320b2a114fe5ce64086f', 1, NULL, '<section class="aimeos catalog-stage">\n<div class="catalog-stage-image">\n</div>\n<div class="catalog-stage-breadcrumb">\n	<nav class="breadcrumb">\n		<span class="title">You are here:</span>\n		<ol>\n			<li><a href="/list?f_search=">Your search result</a></li>\n		</ol>\n	</nav>\n</div>\n<!-- catalog.stage.navigator -->\n<!-- catalog.stage.navigator -->\n</section>\n'),
('21a896806d0cca3e7be51c3b578dffb9', 1, NULL, ''),
('fa04f4f5e0fd3733e4fb4552f8085a0b', 1, NULL, '<section class="aimeos catalog-detail" itemscope="" itemtype="http://schema.org/Product">\n	<ul class="error-list">\n		<li class="error-item">Item with ID &quot;js&quot; in &quot;product.id&quot; not found</li>\n	</ul>\n	<article class="product " data-id="">\n	</article>\n</section>\n'),
('8239389a5184bad86b8f777646fe21ba', 1, NULL, '<section class="aimeos catalog-detail" itemscope="" itemtype="http://schema.org/Product">\n	<ul class="error-list">\n		<li class="error-item">Item with ID &quot;css&quot; in &quot;product.id&quot; not found</li>\n	</ul>\n	<article class="product " data-id="">\n	</article>\n</section>\n'),
('8a3b2db8cd2585f72b62744047e4883d', 1, NULL, '<section class="aimeos catalog-detail" itemscope="" itemtype="http://schema.org/Product">\n	<ul class="error-list">\n		<li class="error-item">Item with ID &quot;css&quot; in &quot;product.id&quot; not found</li>\n	</ul>\n	<article class="product " data-id="">\n	</article>\n</section>\n'),
('7699ae869ddb99a98d79b8c2fd3af471', 1, NULL, '<section class="aimeos catalog-detail" itemscope="" itemtype="http://schema.org/Product">\n	<ul class="error-list">\n		<li class="error-item">Item with ID &quot;js&quot; in &quot;product.id&quot; not found</li>\n	</ul>\n	<article class="product " data-id="">\n	</article>\n</section>\n'),
('9c343a46ee638300a98afcbe8698e1d4', 1, NULL, '<a href="/detail/11/Remise_blond">\n	<div class="media-item" style="background-image: url(''/preview/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg'')"></div>\n	<h3 class="name">Remise blond</h3>\n	<div class="price-list">\n<meta itemprop="price" content="3.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="3.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="10" />\n		from 10	</span>\n	<span class="value">€ 3.00</span>\n	<span class="taxrate">Incl. 21.00% VAT</span>\n</div>\n	</div>\n</a>\n'),
('0ba036782dfe3e2dc458fab8a2300631', 1, NULL, '<section class="aimeos catalog-filter">\n	<nav>\n		<h1>Filter</h1>\n		<form method="POST" action="/list">\n<!-- catalog.filter.csrf -->\n<input class="csrf-token" type="hidden" name="_token" value="RrsKt1p6ZdecrhVkuFtbTE7m2DCHQuFAtet7RImf" /><!-- catalog.filter.csrf -->\n<section class="catalog-filter-search">\n	<h2>Zoeken</h2>\n	<input class="value" type="text" name="f_search" value="" data-url="/suggest" data-hint="Voer minimaal 3 karakters in" /><!--\n	--><button class="reset" type="reset"><span class="symbol"/></button><!--\n	--><button class="standardbutton" type="submit">Ga</button>\n</section>\n<section class="catalog-filter-tree catalog-filter-count">\n	<h2>Categorieën</h2>\n<ul class="level-0">\n	<li class="cat-item catid-1 nochild active catcode-home" data-id="1" >\n		<a class="cat-item" href="/list?f_name=Home&amp;f_catid=1"><!--\n			--><div class="media-list"><!--\n			--></div><!--\n			--><span class="cat-name">Home</span><!--\n		--></a>\n	</li>\n</ul>\n</section>\n<section class="catalog-filter-attribute">\n	<h2>Attributen</h2>\n	<div class="attribute-lists"><!--\n--><fieldset class="attr-color">\n		<legend>Kleur</legend>\n		<ul class="attr-list"><!--\n			--><li class="attr-item" data-id="8">\n				<input class="attr-item" id="attr-8" name="f_attrid[]" type="checkbox" value="8"  />\n				<label class="attr-name" for="attr-8"><!--\n					--><div class="media-list"><!--\n--><div class="media-item"  ><!--\n	--><img src="data:image/gif;base64,R0lGODdhAQABAIAAAPX13AAAACwAAAAAAQABAAACAkQBADs=" title="Demo: beige.gif"  /><!--\n--></div>\n<!--					--></div>\n					<span>Demo: Beige</span><!--\n				--></label>\n			</li><!--\n			--><li class="attr-item" data-id="1">\n				<input class="attr-item" id="attr-1" name="f_attrid[]" type="checkbox" value="1"  />\n				<label class="attr-name" for="attr-1"><!--\n					--><div class="media-list"><!--\n--><div class="media-item"  ><!--\n	--><img src="data:image/gif;base64,R0lGODdhAQABAIAAAAAAAAAAACwAAAAAAQABAAACAkQBADs=" title="Demo: black.gif"  /><!--\n--></div>\n<!--					--></div>\n					<span>Demo: Black</span><!--\n				--></label>\n			</li><!--\n			--><li class="attr-item" data-id="5">\n				<input class="attr-item" id="attr-5" name="f_attrid[]" type="checkbox" value="5"  />\n				<label class="attr-name" for="attr-5"><!--\n					--><div class="media-list"><!--\n--><div class="media-item"  ><!--\n	--><img src="data:image/gif;base64,R0lGODdhAQABAIAAAAAA/wAAACwAAAAAAQABAAACAkQBADs=" title="Demo: blue.gif"  /><!--\n--></div>\n<!--					--></div>\n					<span>Demo: Blue</span><!--\n				--></label>\n			</li><!--\n		--></ul>\n</fieldset><!--\n--><fieldset class="attr-length">\n		<legend>Lengte</legend>\n		<ul class="attr-list"><!--\n			--><li class="attr-item" data-id="7">\n				<input class="attr-item" id="attr-7" name="f_attrid[]" type="checkbox" value="7"  />\n				<label class="attr-name" for="attr-7"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>34</span><!--\n				--></label>\n			</li><!--\n			--><li class="attr-item" data-id="10">\n				<input class="attr-item" id="attr-10" name="f_attrid[]" type="checkbox" value="10"  />\n				<label class="attr-name" for="attr-10"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>36</span><!--\n				--></label>\n			</li><!--\n		--></ul>\n</fieldset><!--\n--><fieldset class="attr-option">\n		<legend>Optie</legend>\n		<ul class="attr-list"><!--\n			--><li class="attr-item" data-id="2">\n				<input class="attr-item" id="attr-2" name="f_attrid[]" type="checkbox" value="2"  />\n				<label class="attr-name" for="attr-2"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>Demo: Small print</span><!--\n				--></label>\n			</li><!--\n			--><li class="attr-item" data-id="3">\n				<input class="attr-item" id="attr-3" name="f_attrid[]" type="checkbox" value="3"  />\n				<label class="attr-name" for="attr-3"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>Demo: Large print</span><!--\n				--></label>\n			</li><!--\n			--><li class="attr-item" data-id="11">\n				<input class="attr-item" id="attr-11" name="f_attrid[]" type="checkbox" value="11"  />\n				<label class="attr-name" for="attr-11"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>Demo: Small sticker</span><!--\n				--></label>\n			</li><!--\n			--><li class="attr-item" data-id="12">\n				<input class="attr-item" id="attr-12" name="f_attrid[]" type="checkbox" value="12"  />\n				<label class="attr-name" for="attr-12"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>Demo: Large sticker</span><!--\n				--></label>\n			</li><!--\n		--></ul>\n</fieldset><!--\n--><fieldset class="attr-text">\n		<legend>text</legend>\n		<ul class="attr-list"><!--\n			--><li class="attr-item" data-id="4">\n				<input class="attr-item" id="attr-4" name="f_attrid[]" type="checkbox" value="4"  />\n				<label class="attr-name" for="attr-4"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>Demo: Text for print</span><!--\n				--></label>\n			</li><!--\n		--></ul>\n</fieldset><!--\n--><fieldset class="attr-width">\n		<legend>Breedte</legend>\n		<ul class="attr-list"><!--\n			--><li class="attr-item" data-id="6">\n				<input class="attr-item" id="attr-6" name="f_attrid[]" type="checkbox" value="6"  />\n				<label class="attr-name" for="attr-6"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>32</span><!--\n				--></label>\n			</li><!--\n			--><li class="attr-item" data-id="9">\n				<input class="attr-item" id="attr-9" name="f_attrid[]" type="checkbox" value="9"  />\n				<label class="attr-name" for="attr-9"><!--\n					--><div class="media-list"><!--\n					--></div>\n					<span>33</span><!--\n				--></label>\n			</li><!--\n		--></ul>\n</fieldset><!--\n	--></div>\n	<noscript>\n		<button class="filter standardbutton btn-action" type="submit">Toon</button>\n	</noscript>\n</section>\n		</form>\n	</nav>\n</section>\n'),
('f119d6aeb3a74790fc4fe73abd39e7f9', 1, NULL, '<script type="text/javascript" defer="defer" src="/count"></script>\n'),
('2f0569fa48ebc7c4bbacdd945571f408', 1, NULL, '<section class="aimeos catalog-stage">\n<div class="catalog-stage-image">\n</div>\n<div class="catalog-stage-breadcrumb">\n	<nav class="breadcrumb">\n		<span class="title">U bent hier:</span>\n		<ol>\n			<li><a href="/list">Uw zoekresultaten</a></li>\n		</ol>\n	</nav>\n</div>\n<!-- catalog.stage.navigator -->\n<!-- catalog.stage.navigator -->\n</section>\n'),
('a69a1271b78b4fb2dba813bc7503fdf3', 1, NULL, ''),
('5c59d9263d90507cf91ad1c1e6f6f18b', 1, NULL, '<section class="aimeos catalog-list">\n<div class="catalog-list-head">\n</div>\n<div class="catalog-list-quote">\n</div>\n<div class="catalog-list-type">\n	<a class="type-item type-grid" href="/list?l_type=grid"></a>\n	<a class="type-item type-list" href="/list?l_type=list"></a>\n</div>\n<div class="catalog-list-pagination">\n	<nav class="pagination">\n		<div class="sort">\n			<span>Sortering</span>\n			<ul>\n				<li><a class="option-relevance active" href="/list?f_sort=relevance">Relevantie</a></li>\n				<li><a class="option-name " href="/list?f_sort=name">Naam</a></li>\n				<li><a class="option-price " href="/list?f_sort=price">Prijs</a></li>\n			</ul>\n		</div>\n	</nav>\n</div>\n<div class="catalog-list-items">\n	<ul class="list-items"><!--\n--><li class="product " data-reqstock="1" itemscope="" itemtype="http://schema.org/Product">\n		<a href="/detail/11/Remise_blond/0">\n			<div class="media-list">\n				<noscript>\n					<div class="media-item" style="background-image: url(''/preview/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg'')" itemscope="" itemtype="http://schema.org/ImageObject">\n						<meta itemprop="contentUrl" content="/preview/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg" />\n					</div>\n				</noscript>\n				<div class="media-item lazy-image" data-src="/preview/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg"></div>\n			</div>\n			<div class="text-list">\n				<h2 itemprop="name">Remise blond</h2>\n			</div>\n		</a>\n		<div itemprop="offers" itemscope itemtype="http://schema.org/Offer">\n			<div class="stock" data-prodid="11"></div>\n			<div class="price-list price price-actual">\n<meta itemprop="price" content="3.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="3.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="10" />\n		van 10	</span>\n	<span class="value">3.00 €</span>\n	<span class="taxrate">Incl. 21.00% BTW</span>\n</div>\n			</div>\n		</div>\n	</li><!--\n--></ul>\n</div>\n<div class="catalog-list-pagination">\n	<nav class="pagination">\n		<div class="sort">\n			<span>Sortering</span>\n			<ul>\n				<li><a class="option-relevance active" href="/list?f_sort=relevance">Relevantie</a></li>\n				<li><a class="option-name " href="/list?f_sort=name">Naam</a></li>\n				<li><a class="option-price " href="/list?f_sort=price">Prijs</a></li>\n			</ul>\n		</div>\n	</nav>\n</div>\n</section>\n'),
('99a5f732198b7bc35d460ef1043e323c', 1, NULL, '	<link rel="canonical" href="/list" />\n	<meta name="application-name" content="Aimeos" />\n	<script type="text/javascript" defer="defer" src="/stock?s_prodid=11"></script>\n'),
('c3a0cfca76cd271449ace180d440aeb6', 1, NULL, '<section class="aimeos catalog-detail" itemscope="" itemtype="http://schema.org/Product">\n	<article class="product " data-id="11">\n<div class="catalog-detail-image" data-dir="vertical">\n	<div class="image-thumbs">\n		<a class="prev-thumbs disabled"></a>\n		<div class="thumbs">\n		</div>\n		<a class="next-thumbs disabled"></a>\n	</div><!--\n	--><div class="image-single">\n		<div class="carousel">\n			<div id="image-27" class="item"\n				style="background-image: url(''/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg'')"\n				data-image="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg"\n				data-zoom-image="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg"\n								itemscope="" itemtype="http://schema.org/ImageObject">\n				<meta itemprop="contentUrl" content="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg" />\n			</div>\n		</div>\n	</div>\n</div>\n<div class="catalog-detail-basic">\n	<h1 class="name" itemprop="name">Remise blond</h1>\n	<p class="code">\n		<span class="name">Artikel nr.:</span>\n		<span class="value" itemprop="sku">TESTBIER1</span>\n	</p>\n</div>\n<div class="catalog-detail-basket" data-reqstock="1" itemprop="offers" itemscope itemtype="http://schema.org/Offer">\n	<div class="price price-main price-actual price-prodid-11">\n<meta itemprop="price" content="3.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="3.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="10" />\n		van 10	</span>\n	<span class="value">3.00 €</span>\n	<span class="taxrate">Incl. 21.00% BTW</span>\n</div>\n	</div>\n<div class="catalog-detail-basket-service">\n	<span class="service-intro">+ shipping costs</span>\n	<ul class="service-list">\n		<li class="service-item">\n			<span class="service-name">DHL</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">5.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">DHL Express</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">11.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">Fedex</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">6.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">TNT</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">8.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n	</ul>\n</div>\n	<form method="POST" action="/basket">\n<!-- catalog.detail.basket.csrf -->\n<input class="csrf-token" type="hidden" name="_token" value="RrsKt1p6ZdecrhVkuFtbTE7m2DCHQuFAtet7RImf" /><!-- catalog.detail.basket.csrf -->\n<div class="catalog-detail-basket-selection" data-proddeps="{}" data-attrdeps="{}">\n<ul class="selection">\n</ul>\n</div>\n<div class="catalog-detail-basket-attribute">\n<ul class="selection">\n</ul>\n<ul class="selection">\n</ul>\n</div>\n		<div class="stock" data-prodid="11"></div>\n		<div class="addbasket">\n			<div class="group">\n				<input name="b_action" type="hidden" value="add" />\n				<input name="b_prod[0][prodid]" type="hidden" value="11" />\n				<input name="b_prod[0][quantity]" type="number" min="1" max="2147483647" maxlength="10" step="1" required="required" value="1" />\n				<button class="standardbutton btn-action" type="submit" value="">Toevoegen aan winkelmandje</button>\n			</div>\n		</div>\n	</form>\n</div>\n<!-- catalog.detail.actions -->\n<div class="catalog-detail-actions">\n	<a class="actions-button actions-button-pin" data-login="1" href="/detail/pin/add/11/11/Remise_blond/0" title="pin"></a>\n	<a class="actions-button actions-button-watch" data-login="1" href="/myaccount/watch/add/11/11/Remise_blond/0" title="Bekijken"></a>\n	<a class="actions-button actions-button-favorite" data-login="1" href="/myaccount/favorite/add/11/11/Remise_blond/0" title="favoriet"></a>\n</div>\n<!-- catalog.detail.actions -->\n<div class="catalog-detail-social">\n	<a class="social-button social-button-facebook" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;t=Remise_blond" title="facebook" target="_blank"></a>\n	<a class="social-button social-button-gplus" href="https://plus.google.com/share?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond" title="gplus" target="_blank"></a>\n	<a class="social-button social-button-twitter" href="https://twitter.com/share?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;text=Remise_blond" title="twitter" target="_blank"></a>\n	<a class="social-button social-button-pinterest" href="https://pinterest.com/pin/create/button/?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;description=Remise_blond&amp;media=%2Ffiles%2F4%2F7%2F47dece8e6c1b398a0b15746203e7e6b8.jpg" title="pinterest" target="_blank"></a>\n</div>\n<div class="catalog-detail-additional">\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n</div>\n	</article>\n</section>\n'),
('1ab8a1b790ae3470dedca2e6c3ad78bf', 1, NULL, '	<title>Remise blond</title>\n	<link rel="canonical" href="/detail/11/Remise_blond" />\n	<meta name="application-name" content="Aimeos" />\n<script type="text/javascript" defer="defer" src="/stock?s_prodid%5B0%5D=11"></script>\n'),
('27fe3a569d552149752ce04de9cc3e9d', 1, NULL, '<section class="aimeos catalog-detail" itemscope="" itemtype="http://schema.org/Product">\n	<article class="product " data-id="11">\n<div class="catalog-detail-image" data-dir="vertical">\n	<div class="image-thumbs">\n		<a class="prev-thumbs disabled"></a>\n		<div class="thumbs">\n		</div>\n		<a class="next-thumbs disabled"></a>\n	</div><!--\n	--><div class="image-single">\n		<div class="carousel">\n			<div id="image-27" class="item"\n				style="background-image: url(''/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg'')"\n				data-image="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg"\n				data-zoom-image="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg"\n								itemscope="" itemtype="http://schema.org/ImageObject">\n				<meta itemprop="contentUrl" content="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg" />\n			</div>\n		</div>\n	</div>\n</div>\n<div class="catalog-detail-basic">\n	<h1 class="name" itemprop="name">Remise blond</h1>\n	<p class="code">\n		<span class="name">Artikel nr.:</span>\n		<span class="value" itemprop="sku">TESTBIER1</span>\n	</p>\n</div>\n<div class="catalog-detail-basket" data-reqstock="1" itemprop="offers" itemscope itemtype="http://schema.org/Offer">\n	<div class="price price-main price-actual price-prodid-11">\n<meta itemprop="price" content="3.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="3.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="10" />\n		van 10	</span>\n	<span class="value">3.00 €</span>\n	<span class="taxrate">Incl. 21.00% BTW</span>\n</div>\n	</div>\n<div class="catalog-detail-basket-service">\n	<span class="service-intro">+ shipping costs</span>\n	<ul class="service-list">\n		<li class="service-item">\n			<span class="service-name">DHL</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">5.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">DHL Express</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">11.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">Fedex</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">6.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">TNT</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">8.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n	</ul>\n</div>\n	<form method="POST" action="/basket">\n<!-- catalog.detail.basket.csrf -->\n<input class="csrf-token" type="hidden" name="_token" value="RrsKt1p6ZdecrhVkuFtbTE7m2DCHQuFAtet7RImf" /><!-- catalog.detail.basket.csrf -->\n<div class="catalog-detail-basket-selection" data-proddeps="{}" data-attrdeps="{}">\n<ul class="selection">\n</ul>\n</div>\n<div class="catalog-detail-basket-attribute">\n<ul class="selection">\n</ul>\n<ul class="selection">\n</ul>\n</div>\n		<div class="stock" data-prodid="11"></div>\n		<div class="addbasket">\n			<div class="group">\n				<input name="b_action" type="hidden" value="add" />\n				<input name="b_prod[0][prodid]" type="hidden" value="11" />\n				<input name="b_prod[0][quantity]" type="number" min="1" max="2147483647" maxlength="10" step="1" required="required" value="1" />\n				<button class="standardbutton btn-action" type="submit" value="">Toevoegen aan winkelmandje</button>\n			</div>\n		</div>\n	</form>\n</div>\n<!-- catalog.detail.actions -->\n<div class="catalog-detail-actions">\n	<a class="actions-button actions-button-pin" data-login="1" href="/detail/pin/add/11/11/js/jquery-ui.js" title="pin"></a>\n	<a class="actions-button actions-button-watch" data-login="1" href="/myaccount/watch/add/11/11/js/jquery-ui.js" title="Bekijken"></a>\n	<a class="actions-button actions-button-favorite" data-login="1" href="/myaccount/favorite/add/11/11/js/jquery-ui.js" title="favoriet"></a>\n</div>\n<!-- catalog.detail.actions -->\n<div class="catalog-detail-social">\n	<a class="social-button social-button-facebook" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;t=Remise_blond" title="facebook" target="_blank"></a>\n	<a class="social-button social-button-gplus" href="https://plus.google.com/share?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond" title="gplus" target="_blank"></a>\n	<a class="social-button social-button-twitter" href="https://twitter.com/share?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;text=Remise_blond" title="twitter" target="_blank"></a>\n	<a class="social-button social-button-pinterest" href="https://pinterest.com/pin/create/button/?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;description=Remise_blond&amp;media=%2Ffiles%2F4%2F7%2F47dece8e6c1b398a0b15746203e7e6b8.jpg" title="pinterest" target="_blank"></a>\n</div>\n<div class="catalog-detail-additional">\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n</div>\n	</article>\n</section>\n'),
('8643b60d30459f9442e1b74ddbbfbb6d', 1, NULL, '	<title>Remise blond</title>\n	<link rel="canonical" href="/detail/11/Remise_blond" />\n	<meta name="application-name" content="Aimeos" />\n<script type="text/javascript" defer="defer" src="/stock?s_prodid%5B0%5D=11"></script>\n'),
('31d3e2a5de2db9cf67b370cb60f38d7b', 1, NULL, '<section class="aimeos catalog-detail" itemscope="" itemtype="http://schema.org/Product">\n	<article class="product " data-id="11">\n<div class="catalog-detail-image" data-dir="vertical">\n	<div class="image-thumbs">\n		<a class="prev-thumbs disabled"></a>\n		<div class="thumbs">\n		</div>\n		<a class="next-thumbs disabled"></a>\n	</div><!--\n	--><div class="image-single">\n		<div class="carousel">\n			<div id="image-27" class="item"\n				style="background-image: url(''/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg'')"\n				data-image="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg"\n				data-zoom-image="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg"\n								itemscope="" itemtype="http://schema.org/ImageObject">\n				<meta itemprop="contentUrl" content="/files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg" />\n			</div>\n		</div>\n	</div>\n</div>\n<div class="catalog-detail-basic">\n	<h1 class="name" itemprop="name">Remise blond</h1>\n	<p class="code">\n		<span class="name">Artikel nr.:</span>\n		<span class="value" itemprop="sku">TESTBIER1</span>\n	</p>\n</div>\n<div class="catalog-detail-basket" data-reqstock="1" itemprop="offers" itemscope itemtype="http://schema.org/Offer">\n	<div class="price price-main price-actual price-prodid-11">\n<meta itemprop="price" content="3.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="3.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="10" />\n		van 10	</span>\n	<span class="value">3.00 €</span>\n	<span class="taxrate">Incl. 21.00% BTW</span>\n</div>\n	</div>\n<div class="catalog-detail-basket-service">\n	<span class="service-intro">+ shipping costs</span>\n	<ul class="service-list">\n		<li class="service-item">\n			<span class="service-name">DHL</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">5.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">DHL Express</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">11.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">Fedex</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">6.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n		<li class="service-item">\n			<span class="service-name">TNT</span>\n<meta itemprop="price" content="0.00" />\n<div class="price-item default" itemprop="priceSpecification" itemscope="" itemtype="http://schema.org/PriceSpecification">\n	<meta itemprop="valueAddedTaxIncluded" content="true" />\n	<meta itemprop="priceCurrency" content="EUR" />\n	<meta itemprop="price" content="0.00" />\n	<span class="quantity" itemscope="" itemtype="http://schema.org/QuantitativeValue">\n		<meta itemprop="minValue" content="1" />\n		van 1	</span>\n	<span class="value">0.00 €</span>\n	<span class="costs">8.90 €</span>\n	<span class="taxrate">Incl. 20.00% BTW</span>\n</div>\n			</li>\n	</ul>\n</div>\n	<form method="POST" action="/basket">\n<!-- catalog.detail.basket.csrf -->\n<input class="csrf-token" type="hidden" name="_token" value="RrsKt1p6ZdecrhVkuFtbTE7m2DCHQuFAtet7RImf" /><!-- catalog.detail.basket.csrf -->\n<div class="catalog-detail-basket-selection" data-proddeps="{}" data-attrdeps="{}">\n<ul class="selection">\n</ul>\n</div>\n<div class="catalog-detail-basket-attribute">\n<ul class="selection">\n</ul>\n<ul class="selection">\n</ul>\n</div>\n		<div class="stock" data-prodid="11"></div>\n		<div class="addbasket">\n			<div class="group">\n				<input name="b_action" type="hidden" value="add" />\n				<input name="b_prod[0][prodid]" type="hidden" value="11" />\n				<input name="b_prod[0][quantity]" type="number" min="1" max="2147483647" maxlength="10" step="1" required="required" value="1" />\n				<button class="standardbutton btn-action" type="submit" value="">Toevoegen aan winkelmandje</button>\n			</div>\n		</div>\n	</form>\n</div>\n<!-- catalog.detail.actions -->\n<div class="catalog-detail-actions">\n	<a class="actions-button actions-button-pin" data-login="1" href="/detail/pin/add/11/11/css/reservatiestyle.css" title="pin"></a>\n	<a class="actions-button actions-button-watch" data-login="1" href="/myaccount/watch/add/11/11/css/reservatiestyle.css" title="Bekijken"></a>\n	<a class="actions-button actions-button-favorite" data-login="1" href="/myaccount/favorite/add/11/11/css/reservatiestyle.css" title="favoriet"></a>\n</div>\n<!-- catalog.detail.actions -->\n<div class="catalog-detail-social">\n	<a class="social-button social-button-facebook" href="https://www.facebook.com/sharer.php?u=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;t=Remise_blond" title="facebook" target="_blank"></a>\n	<a class="social-button social-button-gplus" href="https://plus.google.com/share?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond" title="gplus" target="_blank"></a>\n	<a class="social-button social-button-twitter" href="https://twitter.com/share?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;text=Remise_blond" title="twitter" target="_blank"></a>\n	<a class="social-button social-button-pinterest" href="https://pinterest.com/pin/create/button/?url=http%3A%2F%2Flocalhost%3A8000%2Fdetail%2F11%2FRemise_blond&amp;description=Remise_blond&amp;media=%2Ffiles%2F4%2F7%2F47dece8e6c1b398a0b15746203e7e6b8.jpg" title="pinterest" target="_blank"></a>\n</div>\n<div class="catalog-detail-additional">\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n<div class="additional-box">\n</div>\n</div>\n	</article>\n</section>\n'),
('997b30918ff8cf398c7d13c2949092f4', 1, NULL, '	<title>Remise blond</title>\n	<link rel="canonical" href="/detail/11/Remise_blond" />\n	<meta name="application-name" content="Aimeos" />\n<script type="text/javascript" defer="defer" src="/stock?s_prodid%5B0%5D=11"></script>\n');

-- --------------------------------------------------------

--
-- Table structure for table `madmin_cache_tag`
--

CREATE TABLE `madmin_cache_tag` (
  `tid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tsiteid` int(11) DEFAULT NULL,
  `tname` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `madmin_cache_tag`
--

INSERT INTO `madmin_cache_tag` (`tid`, `tsiteid`, `tname`) VALUES
('0ba036782dfe3e2dc458fab8a2300631', 1, 'attribute'),
('0ba036782dfe3e2dc458fab8a2300631', 1, 'catalog'),
('1ab8a1b790ae3470dedca2e6c3ad78bf', 1, 'media'),
('1ab8a1b790ae3470dedca2e6c3ad78bf', 1, 'product'),
('1ab8a1b790ae3470dedca2e6c3ad78bf', 1, 'service'),
('27fe3a569d552149752ce04de9cc3e9d', 1, 'media'),
('27fe3a569d552149752ce04de9cc3e9d', 1, 'product'),
('27fe3a569d552149752ce04de9cc3e9d', 1, 'service'),
('31d3e2a5de2db9cf67b370cb60f38d7b', 1, 'media'),
('31d3e2a5de2db9cf67b370cb60f38d7b', 1, 'product'),
('31d3e2a5de2db9cf67b370cb60f38d7b', 1, 'service'),
('5c59d9263d90507cf91ad1c1e6f6f18b', 1, 'product'),
('8643b60d30459f9442e1b74ddbbfbb6d', 1, 'media'),
('8643b60d30459f9442e1b74ddbbfbb6d', 1, 'product'),
('8643b60d30459f9442e1b74ddbbfbb6d', 1, 'service'),
('997b30918ff8cf398c7d13c2949092f4', 1, 'media'),
('997b30918ff8cf398c7d13c2949092f4', 1, 'product'),
('997b30918ff8cf398c7d13c2949092f4', 1, 'service'),
('99a5f732198b7bc35d460ef1043e323c', 1, 'product'),
('9c343a46ee638300a98afcbe8698e1d4', 1, 'product'),
('c3a0cfca76cd271449ace180d440aeb6', 1, 'media'),
('c3a0cfca76cd271449ace180d440aeb6', 1, 'product'),
('c3a0cfca76cd271449ace180d440aeb6', 1, 'service'),
('f119d6aeb3a74790fc4fe73abd39e7f9', 1, 'attribute'),
('f119d6aeb3a74790fc4fe73abd39e7f9', 1, 'catalog');

-- --------------------------------------------------------

--
-- Table structure for table `madmin_job`
--

CREATE TABLE `madmin_job` (
  `id` bigint(20) NOT NULL,
  `siteid` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parameter` text COLLATE utf8_unicode_ci NOT NULL,
  `result` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `ctime` datetime NOT NULL,
  `mtime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `madmin_log`
--

CREATE TABLE `madmin_log` (
  `id` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `facility` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  `priority` smallint(6) NOT NULL,
  `message` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `request` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `madmin_log`
--

INSERT INTO `madmin_log` (`id`, `siteid`, `facility`, `timestamp`, `priority`, `message`, `request`) VALUES
(1, 1, 'message', '2016-12-08 09:15:31', 3, 'Item with ID "" in "order.id" not found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-core/lib/mshoplib/src/MShop/Order/Manager/Standard.php(482): Aimeos\\MShop\\Common\\Manager\\Base->getItemBase(''order.id'', NULL, Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-core/lib/mshoplib/src/MShop/Common/Manager/Decorator/Base.php(139): Aimeos\\MShop\\Order\\Manager\\Standard->getItem(NULL, Array)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Checkout/Confirm/Standard.php(480): Aimeos\\MShop\\Common\\Manager\\Decorator\\Base->getItem(NULL)\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Checkout/Confirm/Standard.php(192): Aimeos\\Client\\Html\\Checkout\\Confirm\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#4 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Checkout\\Confirm\\Standard->getHeader()\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CheckoutController.php(32): Aimeos\\Shop\\Base\\Page->getSections(''checkout-confir...'')\n#6 [internal function]: Aimeos\\Shop\\Controller\\CheckoutController->confirmAction()\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''confirmAction'', Array)\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CheckoutController), ''confirmAction'')\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(642): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(644): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(618): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(596): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#43 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#44 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#45 {main}', '3c8ca986f755772220057339b48ea922'),
(2, 1, 'message', '2016-12-08 09:15:44', 3, 'Updating order status failed: No service for code "" found\nArray\n(\n)\n\n', '4b134801b421fea239ac8aa04172af46'),
(3, 1, 'message', '2017-01-10 16:16:38', 3, 'No product with ID "5" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''5'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''5'', ''Demo_bundle_art...'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'ced1847e5a0154dca7c83fab93b5fc6e'),
(4, 1, 'message', '2017-01-10 16:16:39', 3, 'No product with ID "js" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''js'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''js'', ''jquery-ui.js'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '9f9ddd0a3cec10a4611e2011b1e6da5f'),
(5, 1, 'message', '2017-01-10 16:16:39', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''jquery-ui.css'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '9f9ddd0a3cec10a4611e2011b1e6da5f'),
(6, 1, 'message', '2017-01-10 16:16:40', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''reservatiestyle...'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '9f9ddd0a3cec10a4611e2011b1e6da5f');
INSERT INTO `madmin_log` (`id`, `siteid`, `facility`, `timestamp`, `priority`, `message`, `request`) VALUES
(7, 1, 'message', '2017-01-10 16:16:40', 3, 'No product with ID "js" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''js'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''js'', ''reservatie.js'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'fb73981ca6df37e889f135b956724a43'),
(8, 1, 'message', '2017-01-10 16:16:41', 3, 'No product with ID "5" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''5'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''5'', ''images'', ''logo.gif'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'd3dfea6b16be70aedd95118e53ffd6e7'),
(9, 1, 'message', '2017-01-10 16:16:45', 3, 'No product with ID "js" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''js'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''js'', ''jquery-ui.js'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'e65e3a875f6a8f8650cb26b46e9ddb25'),
(10, 1, 'message', '2017-01-10 16:16:45', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''jquery-ui.css'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'e65e3a875f6a8f8650cb26b46e9ddb25'),
(11, 1, 'message', '2017-01-10 16:16:46', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''reservatiestyle...'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'e5c155a54ba8acdc7d36a0c49871e925');
INSERT INTO `madmin_log` (`id`, `siteid`, `facility`, `timestamp`, `priority`, `message`, `request`) VALUES
(12, 1, 'message', '2017-01-10 16:16:46', 3, 'No product with ID "js" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''js'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''js'', ''reservatie.js'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'e5c155a54ba8acdc7d36a0c49871e925'),
(13, 1, 'message', '2017-01-10 16:16:47', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''reservatiestyle...'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '7b8c0eafee9dfce4e129ab80d17296c9'),
(14, 1, 'message', '2017-01-10 16:16:47', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''jquery-ui.css'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '7b8c0eafee9dfce4e129ab80d17296c9'),
(15, 1, 'message', '2017-01-10 18:42:05', 3, 'No product with ID "js" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''js'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''js'', ''jquery-ui.js'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '3c8da301c39de852cfe9ee61e9eb042b'),
(16, 1, 'message', '2017-01-10 18:42:06', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''jquery-ui.css'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '3d59f53445b8ea5f4d3217f7681f1176');
INSERT INTO `madmin_log` (`id`, `siteid`, `facility`, `timestamp`, `priority`, `message`, `request`) VALUES
(17, 1, 'message', '2017-01-10 18:42:06', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''reservatiestyle...'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '3d59f53445b8ea5f4d3217f7681f1176'),
(18, 1, 'message', '2017-01-10 18:42:07', 3, 'No product with ID "js" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''js'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''js'', ''reservatie.js'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '3d59f53445b8ea5f4d3217f7681f1176'),
(19, 1, 'message', '2017-01-10 18:42:07', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''jquery-ui.css'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '1ad5455b4d5f6ba1a7f425fecac2b202'),
(20, 1, 'message', '2017-01-10 18:42:08', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''reservatiestyle...'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '1ad5455b4d5f6ba1a7f425fecac2b202'),
(21, 1, 'message', '2017-01-11 10:40:12', 3, 'No product with ID "js" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''js'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''js'', ''jquery-ui.js'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '8bf62b9685a35eb3561dc254350e7f74');
INSERT INTO `madmin_log` (`id`, `siteid`, `facility`, `timestamp`, `priority`, `message`, `request`) VALUES
(22, 1, 'message', '2017-01-11 10:40:12', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''jquery-ui.css'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '5d256b7fa031d4a376708960fa7e93f4'),
(23, 1, 'message', '2017-01-11 10:40:13', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''reservatiestyle...'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', '5d256b7fa031d4a376708960fa7e93f4'),
(24, 1, 'message', '2017-01-11 10:40:13', 3, 'No product with ID "js" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''js'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''js'', ''reservatie.js'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'a4b2365cabe83d7935461ce6b5edd356'),
(25, 1, 'message', '2017-01-11 10:40:14', 3, 'No product with ID "css" found\n#0 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(501): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getProductItem(''css'', Array)\n#1 /Users/MbAirAlexander/Documents/Project2_Remise56/ext/ai-client-html/client/html/src/Client/Html/Catalog/Detail/Standard.php(295): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->setViewParams(Object(Aimeos\\MW\\View\\Standard), Array, NULL)\n#2 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Base/Page.php(94): Aimeos\\Client\\Html\\Catalog\\Detail\\Standard->getHeader()\n#3 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/aimeos/aimeos-laravel/src/Aimeos/Shop/Controller/CatalogController.php(50): Aimeos\\Shop\\Base\\Page->getSections(''catalog-detail'')\n#4 [internal function]: Aimeos\\Shop\\Controller\\CatalogController->detailAction(''css'', ''jquery-ui.css'')\n#5 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Controller.php(55): call_user_func_array(Array, Array)\n#6 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/ControllerDispatcher.php(44): Illuminate\\Routing\\Controller->callAction(''detailAction'', Array)\n#7 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(190): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Aimeos\\Shop\\Controller\\CatalogController), ''detailAction'')\n#8 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Route.php(144): Illuminate\\Routing\\Route->runController()\n#9 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(653): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#10 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#11 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Middleware/SubstituteBindings.php(41): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Routing\\Middleware\\SubstituteBindings->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#13 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/VerifyCsrfToken.php(65): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#15 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\VerifyCsrfToken->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#16 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#17 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/View/Middleware/ShareErrorsFromSession.php(49): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#18 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#19 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#20 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Session/Middleware/StartSession.php(64): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#22 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/AddQueuedCookiesToResponse.php(37): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#25 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Cookie/Middleware/EncryptCookies.php(59): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#27 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#30 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(655): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#31 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(629): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#32 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Router.php(607): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#33 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(268): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#34 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(53): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#35 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Middleware/CheckForMaintenanceMode.php(46): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#36 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(137): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#37 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Routing/Pipeline.php(33): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#38 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Pipeline/Pipeline.php(104): Illuminate\\Routing\\Pipeline->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(150): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#40 /Users/MbAirAlexander/Documents/Project2_Remise56/vendor/laravel/framework/src/Illuminate/Foundation/Http/Kernel.php(117): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#41 /Users/MbAirAlexander/Documents/Project2_Remise56/public/index.php(54): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#42 /Users/MbAirAlexander/Documents/Project2_Remise56/server.php(21): require_once(''/Users/MbAirAle...'')\n#43 {main}', 'a4b2365cabe83d7935461ce6b5edd356');

-- --------------------------------------------------------

--
-- Table structure for table `madmin_queue`
--

CREATE TABLE `madmin_queue` (
  `id` bigint(20) NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cname` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `rtime` datetime NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maxPersonen`
--

CREATE TABLE `maxPersonen` (
  `id` int(11) NOT NULL,
  `dag` varchar(255) NOT NULL,
  `shift` int(11) NOT NULL,
  `max_personen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maxPersonen`
--

INSERT INTO `maxPersonen` (`id`, `dag`, `shift`, `max_personen`) VALUES
(1, 'Maandag', 1, 111),
(2, 'Maandag', 2, 22),
(3, 'Dinsdag', 1, 11),
(4, 'Dinsdag', 2, 22),
(5, 'Woensdag', 1, 11),
(6, 'Woensdag', 2, 22),
(7, 'Dondedag', 1, 11),
(8, 'Donderdag', 2, 22),
(9, 'Vrijdag', 1, 11),
(10, 'Vrijdag', 2, 22),
(11, 'Zaterdag', 1, 11),
(12, 'Zaterdag', 2, 22),
(13, 'Zondag', 1, 11),
(14, 'Zondag', 2, 22);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `naam` text NOT NULL,
  `extra` text NOT NULL,
  `prijs` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `naam`, `extra`, `prijs`) VALUES
(2, 'Remise Trippel 33cl', '8,5% Alcohol', '3,50'),
(3, 'Remise Dubbel 33cl', '7% Alcohol', '3,20'),
(4, '"56" Superpils 33cl', '5,6% Alcohol', '2,90'),
(5, 'CAVA Don Jaime Brut', ' ', '5,90'),
(6, 'PROSECCO La Tordera', ' ', '5,90'),
(7, 'RUM HAVANA 3 ANOS', ' ', '6,00'),
(8, 'VODKA ABSOLUT', ' ', '6,50'),
(9, 'JAMESON', '', '6,00'),
(10, 'THE GLENLIVET SINGLE MALT', '', '8,00'),
(11, 'COGNAC MARTELL VS', '', '7,00'),
(12, 'ROOD / ROSE / WIT', 'per glas', '3,50'),
(13, 'PASION BLUE CHARDONNAY (blauw!))', 'per glas', '6,00'),
(14, 'KOFFIE', '', '2,40'),
(15, 'KOFFIE DECA', '', '2,40'),
(16, 'ESPRESSO', '', '2,40'),
(17, 'RISTRETTO', '', '2,40'),
(18, 'CAPPUCCINO', 'Met gestoomde melk', '2,70'),
(19, 'LATTE MACCHIATO', '', '2,90'),
(20, 'CAFE SHAKERATO', '', '5,00'),
(21, 'WARME MELK', '', '2,40'),
(22, 'WARME CHOCOMELK', '', '2,40'),
(23, 'THEE', 'Rozenbottel, Linde, Zwarte, Groene, Fruit, Verse munt', '2,40'),
(24, 'Supplement Slagroom', '', '0,50'),
(25, 'COCA-COLA', '', '2,40'),
(26, 'COCA-COLA LIGHT', '', '2,40'),
(27, 'COCA-COLA ZERO', '', '2,40'),
(28, 'FANTA', '', '2,40'),
(29, 'SPRITE', '', '2,40'),
(30, 'SPA REINE', '', '2,40'),
(31, 'SPA BRUIS', '', '2,40'),
(32, 'SPA REINE 1L', '', '9,00'),
(33, 'SPA BRUIS 1L', '', '9,00'),
(34, 'GINI', '', '2,50'),
(35, 'SCHWEPPES AGRUM', '', '2,50'),
(36, 'SCHWEPPES TONIC', '', '2,50'),
(37, 'LIPTON ICE TEA', '', '2,50'),
(38, 'KOUDE CECEMEL', '', '2,40'),
(39, 'FRISTI', '', '2,40'),
(40, 'TONISSTEINER SINAAS', '', '2,50'),
(41, 'TONISSTEINER CITROEN', '', '2,50'),
(42, 'TONISSTEINER VRUCHTENKORF', '', '2,50'),
(43, 'TONISSTEINER NARANJA', '', '2,50'),
(44, 'LOOZA ORANGE', '', '2,50'),
(45, 'LOOZA APPEL-KERS', '', '2,50'),
(46, 'OXFAM FAIRTRADE WORLDSHAKE', '', '2,50'),
(47, 'OXFAM FAIRTRADE ORANGE', '', '2,50'),
(48, 'OXFAM FAIRTRADE TROPICAL', '', '2,50'),
(49, 'AQUARIUS LEMON', '', '3,00'),
(50, 'CHARITEA MATE', '', '3,60'),
(51, 'CAWSTON RABARBER/APPEL', '', '3,60'),
(52, 'BELVOIR BIO VLIERBLOESEM', '', '3,60'),
(53, 'LIMONCELLO', '', '5,50'),
(54, 'SMEETS', '', '4,00'),
(55, 'BAILEYS', '', '6,00'),
(56, 'JAGERMEISTER', '', '5,50'),
(57, 'AMARO MONTENEGRO', '', '6,00'),
(58, 'BOMBAY SAPPHIRE', '& Schweppes', '9,00'),
(59, 'HENDRICK’S', '& Fentimans', '12,00'),
(60, 'G’VINE FLORAISON', '& Fever-Tree', '15,00'),
(61, 'PEDRINO', '(vodka, passoa, batida, ananassap)', '8,50'),
(62, 'ORANGE BLOSSOM', '(apricot brandy, vodka, sinaas, canada dry)', '8,50'),
(63, 'NEGRONI', '(Campari, rode martini, gin)', '8,50'),
(64, 'MOJITO', '(rum, rietsuiker, limoensap, munt)', '8,50'),
(65, 'CUBA LIBRE', '(rum, cola, limoensap)', '8,00'),
(66, 'WHISKY COLA', '', '7,50'),
(67, 'VODKA COLA', '', '7,50'),
(68, 'VODKA ORANGE', '', '7,50'),
(69, 'CAMPARI ORANGE', '', '7,50'),
(70, 'ORANGE FREEZE ZOET', 'Alcoholvrij (sinaas, ananas, citroen, limoen, ginger-ale)', '7,00'),
(71, 'ORANGE FREEZE BITTER', 'Alcoholvrij (sinaas, ananas, citroen, limoen, crodino)', '7,00'),
(72, 'APEROL SPRITZ', '', '8,00'),
(73, 'CAMPARI ORANGE', '', '7,50'),
(74, 'CAMPARI', '', '5,50'),
(75, 'MARTINI WIT', '', '5,00'),
(76, 'MARTINI ROOD', '', '5,00'),
(77, 'PORTO SANDEMAN', '', '5,00'),
(78, 'RICARD', '', '5,50'),
(79, 'NEGRONI', '', '8,50'),
(80, 'MOJITO', '(rum, rietsuiker, limoensap, munt)', '8,50'),
(81, 'CUBA LIBRE', '(rum, cola, limoensap)', '8,00'),
(82, 'CRODINO', 'Alcoholvrij', '3,00');

-- --------------------------------------------------------

--
-- Table structure for table `menuitem`
--

CREATE TABLE `menuitem` (
  `id` int(11) NOT NULL,
  `subcategorie_id` int(11) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `beschrijving` varchar(255) NOT NULL,
  `zichtbaar` tinyint(1) NOT NULL,
  `prijs` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menuitem`
--

INSERT INTO `menuitem` (`id`, `subcategorie_id`, `titel`, `beschrijving`, `zichtbaar`, `prijs`) VALUES
(1, 5, 'Remise tripel', 'lorum ipsum MET jkbfkabf', 1, '3'),
(4, 6, 'Cola123', ' Dit is een cola test', 1, '2'),
(5, 1, 'Remise Tripel 33cl', ' ', 1, '3.50'),
(6, 1, 'Remise Dubbel 33cl', ' ', 1, '3.20'),
(7, 1, '"56" Superpils 33cl', ' ', 1, '2.90'),
(8, 2, 'CAVA Don Jaime Brut', ' ', 1, '5.90'),
(9, 2, 'PROSECCO La Tordera', ' ', 1, '5.90'),
(10, 4, 'ROOD / ROSE / WIT', ' ', 1, '3.50'),
(11, 4, 'PASION BLUE CHARDONNAY', ' ', 1, '6.00'),
(12, 3, 'Rum Havana 3 Anos', ' ', 1, '6.00'),
(13, 3, 'Vodka Absolut', ' ', 1, '6.50'),
(14, 3, 'whisky', ' ', 1, '6.00'),
(15, 3, 'Jameson', ' ', 1, '6.00'),
(16, 3, 'The GlenLivet Single Malt', ' ', 1, '8.00'),
(17, 3, 'Cognac Martell VS', ' ', 1, '7.00'),
(18, 5, 'Koffie', ' ', 1, '2.40'),
(19, 5, 'Koffie Deca', ' ', 1, '2.40'),
(20, 5, 'Espresso', ' ', 1, '2.40'),
(21, 5, 'ristreto', ' ', 1, '2.40'),
(22, 5, 'cappucino', ' ', 1, '2.70'),
(23, 5, 'Latte Machiato', ' ', 1, '2.90'),
(24, 5, 'Cafe Shakerato', ' ', 1, '5.00'),
(25, 5, 'Warme Melk', ' ', 1, '2.40'),
(26, 5, 'Warme Chocomelk', ' ', 1, '2.40'),
(27, 5, 'Thee Rozenbottel', ' ', 1, '2.40'),
(28, 5, 'Thee Linde', ' ', 1, '2.40'),
(29, 5, 'Thee Zwarte', ' ', 1, '2.40'),
(30, 5, 'Thee Groene', ' ', 1, '2.40'),
(31, 5, 'Thee Fruit', ' ', 1, '2.40'),
(32, 5, 'supplement slagroom', ' ', 1, '1.00'),
(33, 10, 'Aperol Spritz', ' ', 1, '8.00'),
(34, 10, 'Campari Orange', ' ', 1, '7.50'),
(35, 10, 'Campari', ' ', 1, '5.50'),
(36, 10, 'Martini Wit', ' ', 1, '5.00'),
(37, 10, 'Martini Rood', ' ', 0, '5.00'),
(38, 10, 'Porto SandeMan', ' ', 1, '5.00'),
(39, 10, 'Ricard', ' ', 1, '5.00'),
(40, 10, 'Negroni', ' ', 1, '5.50'),
(41, 10, 'Mojito', ' ', 1, '8.50'),
(42, 10, 'Cuba Libre', ' rum, cola, limoensap', 1, '8.00'),
(43, 10, 'Crodino', ' alcoholvrij', 1, '3.00'),
(44, 6, 'Coca-Cola', ' ', 1, '2.40'),
(45, 6, 'Coca-Cola Light', ' ', 1, '2.40'),
(46, 6, 'Coca-Cola Zero', ' ', 1, '2.40'),
(47, 6, 'Fanta', ' ', 1, '2.40'),
(48, 6, 'Sprite', ' ', 1, '2.40'),
(49, 6, 'Spa Reine', ' ', 1, '2.40'),
(50, 6, 'Spa Bruis', ' ', 1, '2.40'),
(51, 6, 'Spa Reine 1L', ' ', 1, '9.00'),
(52, 6, 'Spa Bruis 1L', ' ', 1, '9.00'),
(53, 6, 'Gini ', ' ', 1, '2.50'),
(54, 6, 'Schweppes Agrum', ' ', 1, '2.50'),
(55, 6, 'Schweppes Tonic', ' ', 1, '2.50'),
(56, 6, 'Lipton Ice Tea', ' ', 1, '2.50'),
(57, 6, 'Koude Cécémel', ' ', 1, '2.40'),
(58, 6, 'Tonnisteiner Sinaas', ' ', 1, '2.40'),
(59, 6, 'Tonnissteiner Citroen ', ' ', 1, '2.50'),
(60, 6, 'Tonnissteiner Vruchtenkorf', ' ', 1, '2.50'),
(61, 6, 'Tonnissteiner Naranja', ' ', 1, '2.50'),
(62, 6, 'Looza Orange', ' ', 1, '2.50'),
(63, 6, 'Looza Appel-Kers', ' ', 1, '2.50'),
(64, 6, 'Oxfam Fairtrade WorldShake', ' ', 1, '2.50'),
(65, 6, 'Oxfam Fairtrade Orange', ' ', 1, '2.50'),
(66, 6, 'Oxfam Fairtrade Tropical', ' ', 1, '2.50'),
(67, 6, 'Aquarius Lemon', ' ', 1, '3.00'),
(68, 6, 'Charitea Mate ', ' ', 1, '3.60'),
(69, 6, 'Cawston Rabarber/Appel', ' ', 1, '3.60'),
(70, 6, 'Belvoir BIO Vlierbloesem', ' ', 1, '3.60'),
(71, 7, 'Limoncello', ' ', 1, '5.50'),
(72, 7, 'Smeets', ' ', 1, '4.00'),
(73, 7, 'Baileys', ' ', 1, '6.00'),
(74, 7, 'Jagermeister', ' ', 1, '5.50'),
(75, 7, 'Amaro Montenegro', ' ', 1, '6.00'),
(76, 8, 'Bombay Sapphire & Schweppes', ' ', 1, '9.00'),
(77, 8, 'Hendrick''s & Fentimans', ' ', 1, '12.00'),
(78, 8, '6 Moments & Fentimans Rose Lemonade', ' ', 1, '13.50'),
(79, 8, 'G''Vine Floraison & Fever-Tree', ' ', 1, '15.00'),
(80, 9, 'Pedrino', ' voda, passoa, batida, annasassap', 1, '8.50'),
(81, 9, 'Orange Blossom', ' Campari, Rode Marini, Gin', 1, '8.50'),
(82, 9, 'Negrino', ' Campari, Rode Martini, Gin', 1, '8.50'),
(83, 7, 'Mojito', ' Rum, Rietsuiker, Limoensap, Munt', 1, '8.50'),
(84, 9, 'Cuba Libre', ' Rum, Cola, Limoensap', 1, '8.00'),
(85, 9, 'Whisky Cola', ' ', 1, '7.50'),
(86, 9, 'Vodka Cola', ' ', 1, '7.50'),
(87, 9, 'Vodka Orange', ' ', 1, '7.50'),
(88, 9, 'Campari Orange', ' ', 1, '7.50'),
(89, 9, 'Orange Freeze Zoet', ' Alcoholvrij. Sinaas, Ananas, Citroen, Limoen, Ginger-Ale', 1, '7.00'),
(90, 9, 'Orange Freeze Bitter', ' Alcoholvrij. Sinaas, Ananas, Citroen, Limoen, Crodino', 1, '7.00'),
(91, 11, 'Nachos 56', ' Nachos, Jalapeno Pepers, Tomaat, Ajuin, cheddar, Mozzarella, Olijven, Varkensvlees, Guacamole, Zure Room, Tomaten Salsa', 1, '12.00'),
(92, 11, 'Nachos 56 Veggie', ' Zonder Varkensvlees', 1, '12.00'),
(93, 11, 'Nachos 56 Veggie', ' Zonder Varkensvlees', 1, '12.00'),
(94, 11, 'Kippenvleugels', ' Ovengebakken, Pittig Gekruid (4à5 personen)', 1, '8.50'),
(95, 11, 'Bordje Gemend', ' Zongedroogde Tomaatjes, Goudablokjes', 1, '9.50'),
(96, 11, 'Spare Ribs', ' 3 Dubbele Ribbetjes, Gelakt, met BBQ Dipsaus', 1, '8.50'),
(97, 12, 'Verse Dagsoep', 'Met Brood ', 1, '4.50'),
(98, 12, 'Tomatensoep Met Balletjes', ' Met Brood', 1, '4.50'),
(99, 12, 'Burger', 'Meloenpitbroodje, Groenten, Rundshamburger,Wafelfrietjes', 1, '14.80'),
(100, 12, 'Croque Monsieur', ' ', 1, '6.00'),
(101, 12, 'Croque Monsieur Dubbel', ' ', 1, '8.00'),
(102, 12, 'Croque Madame Enkel', ' ', 1, '7.00'),
(103, 12, 'Croque Madame Dubbel', ' ', 1, '9.50'),
(104, 12, 'Spaghetti Bolognaise Klein', ' Met Brood (Kinderspaghetti)', 1, '8.00'),
(105, 12, 'Spaghetti Bolognaise Groot', ' Met Brood', 1, '11.50'),
(106, 12, 'Taghiatelli Scampi', 'Pesto, Pijnboompit, Parmesaan, Tomaat, Scampi', 1, '17.00'),
(107, 12, 'Stoofvlees', ' Bereid Met Remise Dubbel, Slaatje, Frietjes', 1, '16.50'),
(108, 12, 'Mosselpapillot "Thai"', ' Mosselen, Look, Citroengras, Limoen, Rode Ajuin, Pijpajuin', 1, '10.00'),
(109, 12, 'Mossel Natuur', ' Met Frietjes', 1, '20.00'),
(110, 12, 'Mosselen Witte Wijn(1,2kg)', ' ', 1, '23.00'),
(111, 12, 'Spare Ribs', ' Huisgemarineerd, slaatje, Frietjes', 1, '18.50'),
(112, 12, 'Salade Caprese', ' Sla, Buffelmozzarrella, Tomaat, Huisgemaakte Pesto, Balsamico-Dressing Bereid Met Remise Dubbel', 1, '14.00'),
(113, 12, 'Salade Scampi', ' Mesclun, Mais, Kool, Rozijnen, Ananas, Kip', 1, '18.00'),
(114, 12, 'Lange Hamburger', 'Frikandel/ Curryworst met frietjes', 1, '7.00'),
(115, 12, 'Onze gerechten worden standaard gereserveerd met brood, meerprijs frietjes', ' ', 1, '2.00'),
(116, 13, 'Verse Taart', ' ', 0, '2.50'),
(117, 12, 'Pannenkoeken', ' Siroop, Witte Suiker, Potsuiker, Bruine Suiker, Confituur, Nutella', 1, '4.90'),
(118, 13, 'Pannenkoeken ', ' Met Vanille-ijs En Slagroom', 1, '7.90'),
(119, 13, 'Pannenkoeken', ' Met Vers Fruit', 1, '8.90'),
(120, 13, 'Pannenkoeken', ' Supplement Slagroom', 1, '1.00'),
(121, 13, 'Kinderijsje', ' Vanille 1 Bol', 1, '3.00'),
(122, 13, 'Dame Blanche', ' Vanille 3 Bollen', 1, '7.00'),
(123, 13, 'Coupe Vers Fruit', ' Vanille 3 Bollen', 1, '9.00'),
(124, 13, 'Extra Bol Ijs', ' ', 1, '2.00'),
(125, 13, 'Milkshake Vanille', ' ', 1, '4.00'),
(126, 13, 'Milkshake Chocolade', ' ', 1, '4.00'),
(127, 4, 'TestWijn', ' test wijn', 1, '3'),
(129, 12, 'mosselen', ' ', 0, '1');

-- --------------------------------------------------------

--
-- Table structure for table `menuItem_categorie`
--

CREATE TABLE `menuItem_categorie` (
  `id` int(11) NOT NULL,
  `categorie` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menuItem_categorie`
--

INSERT INTO `menuItem_categorie` (`id`, `categorie`) VALUES
(1, 'DRANKEN'),
(2, 'GERECHTEN');

-- --------------------------------------------------------

--
-- Table structure for table `menuItem_subcategorie`
--

CREATE TABLE `menuItem_subcategorie` (
  `id` int(11) NOT NULL,
  `categorie_id` int(11) NOT NULL,
  `subcategorie` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menuItem_subcategorie`
--

INSERT INTO `menuItem_subcategorie` (`id`, `categorie_id`, `subcategorie`) VALUES
(1, 1, 'bieren'),
(2, 1, 'bubbels'),
(3, 1, 'sterke dranken'),
(4, 1, 'huiswijnen'),
(5, 1, 'warme dranken'),
(6, 1, 'frisdranken'),
(7, 1, 'Degistieven'),
(8, 1, 'gin tonic'),
(9, 1, 'Cocktails'),
(10, 1, 'Aperitieven'),
(11, 2, 'Fingerfood'),
(12, 2, 'Hoofdgerechten'),
(13, 2, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_11_02_124631_create_gallery_table', 1),
(2, '2016_11_02_124807_create_images_table', 1),
(3, '2016_11_08_150519_create_reservatie_table', 1),
(4, '2016_11_13_151028_news', 1),
(5, '2016_11_19_193238_create_personeel_table', 1),
(6, '2016_11_22_134241_paginas', 1),
(7, '2016_11_22_193825_templates_inhoud', 1),
(8, '2015_03_06_000000_aimeos_users_table', 2),
(9, '2015_08_10_000000_aimeos_users_label', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute`
--

CREATE TABLE `mshop_attribute` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_attribute`
--

INSERT INTO `mshop_attribute` (`id`, `typeid`, `siteid`, `domain`, `code`, `label`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, 'product', 'demo-black', 'Demo: Black', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(2, 5, 1, 'product', 'demo-print-small', 'Demo: Small print', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(3, 5, 1, 'product', 'demo-print-large', 'Demo: Large print', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(4, 7, 1, 'product', 'demo-print-text', 'Demo: Text for print', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(5, 1, 1, 'product', 'demo-blue', 'Demo: Blue', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(6, 3, 1, 'product', 'demo-width-32', 'Demo: Width 32', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(7, 4, 1, 'product', 'demo-length-34', 'Demo: Length 34', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(8, 1, 1, 'product', 'demo-beige', 'Demo: Beige', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(9, 3, 1, 'product', 'demo-width-33', 'Demo: Width 33', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(10, 4, 1, 'product', 'demo-length-36', 'Demo: Length 36', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(11, 5, 1, 'product', 'demo-sticker-small', 'Demo: Small sticker', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(12, 5, 1, 'product', 'demo-sticker-large', 'Demo: Large sticker', 3, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute_list`
--

CREATE TABLE `mshop_attribute_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_attribute_list`
--

INSERT INTO `mshop_attribute_list` (`id`, `typeid`, `parentid`, `siteid`, `domain`, `refid`, `start`, `end`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 4, 1, 1, 'media', '1', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(2, 8, 1, 1, 'text', '1', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(3, 8, 1, 1, 'text', '2', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(4, 8, 1, 1, 'text', '3', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(5, 8, 1, 1, 'text', '4', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(6, 5, 2, 1, 'price', '1', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(7, 5, 2, 1, 'price', '2', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(8, 8, 2, 1, 'text', '5', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(9, 8, 2, 1, 'text', '6', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(10, 8, 2, 1, 'text', '7', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(11, 8, 2, 1, 'text', '8', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(12, 5, 3, 1, 'price', '3', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(13, 5, 3, 1, 'price', '4', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(14, 8, 3, 1, 'text', '9', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(15, 8, 3, 1, 'text', '10', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(16, 8, 3, 1, 'text', '11', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(17, 8, 3, 1, 'text', '12', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(18, 8, 4, 1, 'text', '13', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(19, 8, 4, 1, 'text', '14', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(20, 4, 5, 1, 'media', '6', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(21, 8, 5, 1, 'text', '20', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(22, 8, 5, 1, 'text', '21', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(23, 8, 5, 1, 'text', '22', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(24, 8, 5, 1, 'text', '23', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(25, 8, 6, 1, 'text', '24', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(26, 8, 6, 1, 'text', '25', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(27, 8, 6, 1, 'text', '26', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(28, 8, 7, 1, 'text', '27', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(29, 8, 7, 1, 'text', '28', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(30, 8, 7, 1, 'text', '29', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(31, 4, 8, 1, 'media', '7', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(32, 8, 8, 1, 'text', '30', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(33, 8, 8, 1, 'text', '31', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(34, 8, 8, 1, 'text', '32', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(35, 8, 8, 1, 'text', '33', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(36, 8, 9, 1, 'text', '34', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(37, 8, 9, 1, 'text', '35', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(38, 8, 9, 1, 'text', '36', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(39, 8, 10, 1, 'text', '37', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(40, 8, 10, 1, 'text', '38', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(41, 8, 10, 1, 'text', '39', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(42, 5, 11, 1, 'price', '11', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(43, 5, 11, 1, 'price', '12', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(44, 8, 11, 1, 'text', '40', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(45, 8, 11, 1, 'text', '41', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(46, 8, 11, 1, 'text', '42', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(47, 8, 11, 1, 'text', '43', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(48, 5, 12, 1, 'price', '13', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(49, 5, 12, 1, 'price', '14', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(50, 8, 12, 1, 'text', '44', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(51, 8, 12, 1, 'text', '45', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(52, 8, 12, 1, 'text', '46', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(53, 8, 12, 1, 'text', '47', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute_list_type`
--

CREATE TABLE `mshop_attribute_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_attribute_list_type`
--

INSERT INTO `mshop_attribute_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(2, 1, 'catalog', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(3, 1, 'media', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(4, 1, 'media', 'icon', 'Icon', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(5, 1, 'price', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(6, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(7, 1, 'service', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(8, 1, 'text', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_attribute_type`
--

CREATE TABLE `mshop_attribute_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_attribute_type`
--

INSERT INTO `mshop_attribute_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'product', 'color', 'Color', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(2, 1, 'product', 'size', 'Size', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(3, 1, 'product', 'width', 'Width', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(4, 1, 'product', 'length', 'Length', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(5, 1, 'product', 'option', 'Option', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(6, 1, 'product', 'download', 'Download', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(7, 1, 'product', 'text', 'Text', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_catalog`
--

CREATE TABLE `mshop_catalog` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `level` smallint(6) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `nleft` int(11) NOT NULL,
  `nright` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_catalog`
--

INSERT INTO `mshop_catalog` (`id`, `parentid`, `siteid`, `level`, `code`, `label`, `config`, `nleft`, `nright`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 0, 1, 0, 'home', 'Home', '[]', 1, 2, 1, '2017-01-11 11:13:15', '2016-12-08 08:34:40', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_catalog_list`
--

CREATE TABLE `mshop_catalog_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_catalog_list`
--

INSERT INTO `mshop_catalog_list` (`id`, `typeid`, `parentid`, `siteid`, `domain`, `refid`, `start`, `end`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(2, 10, 1, 1, 'product', '1', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(3, 7, 1, 1, 'product', '4', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(4, 7, 1, 1, 'product', '1', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(5, 7, 1, 1, 'product', '5', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(6, 9, 1, 1, 'text', '61', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(7, 9, 1, 1, 'text', '62', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(8, 9, 1, 1, 'text', '63', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(9, 9, 1, 1, 'text', '64', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(10, 9, 1, 1, 'text', '65', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(11, 9, 1, 1, 'text', '66', NULL, NULL, '[]', 4, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(12, 7, 1, 1, 'product', '8', NULL, NULL, '[]', 0, 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(13, 7, 1, 1, 'product', '11', NULL, NULL, '[]', 0, 1, '2017-01-10 16:13:22', '2017-01-10 16:13:22', 'admin@remise.be'),
(16, 5, 1, 1, 'media', '16', NULL, NULL, '[]', 0, 1, '2017-01-11 11:13:16', '2017-01-11 11:13:16', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_catalog_list_type`
--

CREATE TABLE `mshop_catalog_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_catalog_list_type`
--

INSERT INTO `mshop_catalog_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(2, 1, 'catalog', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(3, 1, 'media', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(4, 1, 'media', 'icon', 'Icon', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(5, 1, 'media', 'stage', 'Stage', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(6, 1, 'price', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(7, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(8, 1, 'service', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(9, 1, 'text', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(10, 1, 'product', 'promotion', 'Promotion', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_coupon`
--

CREATE TABLE `mshop_coupon` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_coupon`
--

INSERT INTO `mshop_coupon` (`id`, `siteid`, `label`, `provider`, `config`, `start`, `end`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'demo-fixed', 'FixedRebate', '{"fixedrebate.productcode":"demo-rebate","fixedrebate.rebate":{"EUR":125,"USD":150}}', NULL, NULL, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(2, 1, 'demo-percent', 'PercentRebate', '{"percentrebate.productcode":"demo-rebate","percentrebate.rebate":"10"}', NULL, NULL, 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_coupon_code`
--

CREATE TABLE `mshop_coupon_code` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `count` int(11) NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_coupon_code`
--

INSERT INTO `mshop_coupon_code` (`id`, `parentid`, `siteid`, `code`, `count`, `start`, `end`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, 'fixed', 1000, NULL, NULL, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(2, 2, 1, 'percent', 1000, NULL, NULL, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer`
--

CREATE TABLE `mshop_customer` (
  `id` int(11) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vatid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryid` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `telefax` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `vdate` date DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_address`
--

CREATE TABLE `mshop_customer_address` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vatid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryid` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `telefax` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL,
  `pos` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_group`
--

CREATE TABLE `mshop_customer_group` (
  `id` int(11) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_customer_group`
--

INSERT INTO `mshop_customer_group` (`id`, `siteid`, `code`, `label`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'admin', 'Administrator', '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_list`
--

CREATE TABLE `mshop_customer_list` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_customer_list_type`
--

CREATE TABLE `mshop_customer_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_index_attribute`
--

CREATE TABLE `mshop_index_attribute` (
  `prodid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `attrid` int(11) DEFAULT NULL,
  `listtype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_index_catalog`
--

CREATE TABLE `mshop_index_catalog` (
  `prodid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `listtype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_index_catalog`
--

INSERT INTO `mshop_index_catalog` (`prodid`, `siteid`, `catid`, `listtype`, `pos`, `mtime`, `ctime`, `editor`) VALUES
(11, 1, 1, 'default', 0, '2017-01-11 10:44:31', '2017-01-11 10:44:31', 'admin@remise.be'),
(12, 1, 1, 'default', 0, '2017-01-10 16:15:57', '2017-01-10 16:15:57', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_index_price`
--

CREATE TABLE `mshop_index_price` (
  `prodid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `priceid` int(11) DEFAULT NULL,
  `listtype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `currencyid` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(12,2) NOT NULL,
  `costs` decimal(12,2) NOT NULL,
  `rebate` decimal(12,2) NOT NULL,
  `taxrate` decimal(5,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_index_price`
--

INSERT INTO `mshop_index_price` (`prodid`, `siteid`, `priceid`, `listtype`, `type`, `currencyid`, `value`, `costs`, `rebate`, `taxrate`, `quantity`, `mtime`, `ctime`, `editor`) VALUES
(12, 1, 53, 'default', 'default', 'EUR', '3.00', '0.00', '0.00', '21.00', 10, '2017-01-10 16:15:57', '2017-01-10 16:15:57', 'admin@remise.be'),
(11, 1, 52, 'default', 'default', 'EUR', '3.00', '0.00', '0.00', '21.00', 10, '2017-01-11 10:44:31', '2017-01-11 10:44:31', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_index_text`
--

CREATE TABLE `mshop_index_text` (
  `prodid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `textid` int(11) DEFAULT NULL,
  `listtype` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_index_text`
--

INSERT INTO `mshop_index_text` (`prodid`, `siteid`, `textid`, `listtype`, `domain`, `type`, `langid`, `value`, `mtime`, `ctime`, `editor`) VALUES
(12, 1, NULL, 'default', 'product', 'code', NULL, 'TESTBIER1_copy', '2017-01-10 16:15:57', '2017-01-10 16:15:57', 'admin@remise.be'),
(12, 1, 115, 'default', 'product', 'short', 'ar', 'Blond bier', '2017-01-10 16:15:57', '2017-01-10 16:15:57', 'admin@remise.be'),
(11, 1, NULL, 'default', 'product', 'code', NULL, 'TESTBIER1', '2017-01-11 10:44:31', '2017-01-11 10:44:31', 'admin@remise.be'),
(12, 1, 114, 'default', 'product', 'name', 'ar', 'Remise blond', '2017-01-10 16:15:57', '2017-01-10 16:15:57', 'admin@remise.be'),
(11, 1, 112, 'default', 'product', 'name', 'ar', 'Remise blond', '2017-01-11 10:44:31', '2017-01-11 10:44:31', 'admin@remise.be'),
(11, 1, 113, 'default', 'product', 'short', 'ar', 'Blond bier', '2017-01-11 10:44:31', '2017-01-11 10:44:31', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_locale`
--

CREATE TABLE `mshop_locale` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `currencyid` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_locale`
--

INSERT INTO `mshop_locale` (`id`, `siteid`, `langid`, `currencyid`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'nl_BE', 'EUR', 0, 1, '2017-01-11 11:01:40', '2016-12-06 15:30:18', 'admin@remise.be'),
(2, 1, 'en', 'USD', 1, 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'core:setup'),
(3, 1, 'de', 'EUR', 2, 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_locale_currency`
--

CREATE TABLE `mshop_locale_currency` (
  `id` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_locale_currency`
--

INSERT INTO `mshop_locale_currency` (`id`, `siteid`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
('AED', NULL, 'United Arab Emirates dirham', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('AFN', NULL, 'Afghan afghani', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ALL', NULL, 'Albanian Lek', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('AMD', NULL, 'Armenian Dram', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ANG', NULL, 'Netherlands Antillean gulden', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('AOA', NULL, 'Angolan Kwanza', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ARS', NULL, 'Argentine Peso', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('AUD', NULL, 'Australian Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('AWG', NULL, 'Aruban Guilder', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('AZN', NULL, 'Azerbaijani Manat', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BAM', NULL, 'Bosnia-Herzegovina Conv. Mark', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BBD', NULL, 'Barbados Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BDT', NULL, 'Bangladeshi taka', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BGN', NULL, 'Bulgarian Lev', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BHD', NULL, 'Bahraini Dinar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BIF', NULL, 'Burundi Franc', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BMD', NULL, 'Bermuda Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BND', NULL, 'Brunei Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BOB', NULL, 'Boliviano', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BRL', NULL, 'Brazilian Real', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BSD', NULL, 'Bahamian Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BTN', NULL, 'Bhutanese Ngultrum', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BWP', NULL, 'Botswana pula', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BYR', NULL, 'Belarussian Ruble', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('BZD', NULL, 'Belize Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CAD', NULL, 'Canadian Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CDF', NULL, 'Congolese franc', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CHF', NULL, 'Swiss franc', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CLP', NULL, 'Chilean Peso', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CNY', NULL, 'Chinese Yuan Renminbi', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('COP', NULL, 'Colombian Peso', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CRC', NULL, 'Costa Rican colón', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CUP', NULL, 'Cuban peso', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CVE', NULL, 'Cape Verde Escudo', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('CZK', NULL, 'Czech koruna', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('DJF', NULL, 'Djibouti franc', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('DKK', NULL, 'Danish krone', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('DOP', NULL, 'Dominican peso', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('DZD', NULL, 'Algerian Dinar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('EGP', NULL, 'Egyptian pound', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ERN', NULL, 'Eritrean nakfa', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ETB', NULL, 'Ethiopian birr', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('EUR', NULL, 'Euro', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('FJD', NULL, 'Fijian dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('FKP', NULL, 'Falkland Islands pound', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('GBP', NULL, 'Pound sterling', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('GEL', NULL, 'Georgian lari', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('GHC', NULL, 'Ghanaian cedi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('GIP', NULL, 'Gibraltar pound', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('GMD', NULL, 'Gambian dalasi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('GNF', NULL, 'Guinea Franc', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('GTQ', NULL, 'Guatemalan quetzal', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('GYD', NULL, 'Guyana Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('HKD', NULL, 'Hong Kong dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('HNL', NULL, 'Honduran lempira', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('HRK', NULL, 'Croatian kuna', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('HTG', NULL, 'Haitian gourde', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('HUF', NULL, 'Hungarian forint', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('IDR', NULL, 'Indonesian rupiah', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ILS', NULL, 'New Israeli Sheqel', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('INR', NULL, 'Indian rupee', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('IQD', NULL, 'Iraqi dinar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('IRR', NULL, 'Iranian rial', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ISK', NULL, 'Icelandic króna', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('JMD', NULL, 'Jamaican dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('JOD', NULL, 'Jordanian dinar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('JPY', NULL, 'Japanese yen', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KES', NULL, 'Kenyan shilling', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KGS', NULL, 'Kyrgyzstani som', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KHR', NULL, 'Cambodian riel', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KMF', NULL, 'Comorian Franc', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KPW', NULL, 'North Korean won', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KRW', NULL, 'South Corean won', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KWD', NULL, 'Kuwaiti dinar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KYD', NULL, 'Cayman Islands Dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('KZT', NULL, 'Kazakhstani tenge', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('LAK', NULL, 'Lao kip', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('LBP', NULL, 'Lebanese pound', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('LKR', NULL, 'Sri Lankan rupee', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('LRD', NULL, 'Liberian dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('LSL', NULL, 'Lesotho loti', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('LTL', NULL, 'Lithuanian litas', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('LVL', NULL, 'Latvian lats', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('LYD', NULL, 'Libyan dinar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MAD', NULL, 'Moroccan dirham', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MDL', NULL, 'Moldovan leu', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MGA', NULL, 'Malagasy ariary', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MKD', NULL, 'Macedonian denar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MMK', NULL, 'Myanmar kyat', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MNT', NULL, 'Mongolian tugrug', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MOP', NULL, 'Macanese pataca', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MRO', NULL, 'Mauritanian ouguiya', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MUR', NULL, 'Mauritian rupee', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MVR', NULL, 'Maldivian rufiyaa', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MWK', NULL, 'Malawian kwacha', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MXN', NULL, 'Mexican peso', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MYR', NULL, 'Malaysian ringgit', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('MZM', NULL, 'Mozambican metical', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('NAD', NULL, 'Namibian dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('NGN', NULL, 'Nigerian naira', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('NIO', NULL, 'Nicaraguan córdoba', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('NOK', NULL, 'Norvegian krone', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('NPR', NULL, 'Nepalese rupee', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('NZD', NULL, 'New Zealand dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('OMR', NULL, 'Omani rial', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('PAB', NULL, 'Panamanian balboa', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('PEN', NULL, 'Peruvian nuevo sol', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('PGK', NULL, 'Papua New Guinean kina', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('PHP', NULL, 'Philippine peso', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('PKR', NULL, 'Pakistani rupee', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('PLN', NULL, 'Polish złoty', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('PYG', NULL, 'Paraguayan guaraní', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('QAR', NULL, 'Qatari riyal', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('RON', NULL, 'Romanian leu', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('RSD', NULL, 'Serbian dinar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('RUB', NULL, 'Russian ruble', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('RWF', NULL, 'Rwandan franc', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SAR', NULL, 'Saudi riyal', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SBD', NULL, 'Solomon Islands dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SCR', NULL, 'Seychelles rupee', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SDG', NULL, 'Sudanese pound', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SEK', NULL, 'Swedish krona', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SGD', NULL, 'Singapore dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SHP', NULL, 'Saint Helena pound', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SLL', NULL, 'Sierra Leonean leone', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SOS', NULL, 'Somali shilling', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SRD', NULL, 'Suriname dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('STD', NULL, 'São Tomé and Príncipe dobra', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SYP', NULL, 'Syrian pound', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('SZL', NULL, 'Swazi lilangeni', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('THB', NULL, 'Baht', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('TJS', NULL, 'Tajikistani somoni', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('TMT', NULL, 'Turkmenistani manat', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('TND', NULL, 'Tunisian dinar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('TOP', NULL, 'Tongan pa''anga', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('TRY', NULL, 'Turkish new lira', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('TTD', NULL, 'Trinidad and Tobago dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('TWD', NULL, 'New Taiwan dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('TZS', NULL, 'Tanzanian shilling', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('UAH', NULL, 'Ukrainian hryvnia', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('UGX', NULL, 'Ugandan shilling', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('USD', NULL, 'US dollar', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('UYU', NULL, 'Uruguayan peso', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('UZS', NULL, 'Uzbekistani som', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('VEF', NULL, 'Venezuelan bolivar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('VND', NULL, 'Vietnamese dong', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('VUV', NULL, 'Vatu', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('WST', NULL, 'Samoan tala', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('XAF', NULL, 'CFA Franc BEAC', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('XCD', NULL, 'East Caribbean dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('XOF', NULL, 'CFA Franc BCEAO', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('XPF', NULL, 'CFP Franc', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('YER', NULL, 'Yemeni rial', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ZAR', NULL, 'South African rand', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ZMW', NULL, 'Zambian kwacha', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ZWL', NULL, 'Zimbabwean dollar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_locale_language`
--

CREATE TABLE `mshop_locale_language` (
  `id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_locale_language`
--

INSERT INTO `mshop_locale_language` (`id`, `siteid`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
('aa', NULL, 'Afar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ab', NULL, 'Abkhazian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('af', NULL, 'Afrikaans', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ak', NULL, 'Akan', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('am', NULL, 'Amharic', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('an', NULL, 'Aragonese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ar', NULL, 'Arabic', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('as', NULL, 'Assamese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('av', NULL, 'Avar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ay', NULL, 'Aymara', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('az', NULL, 'Azerbaijani', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ba', NULL, 'Bashkir', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('be', NULL, 'Belarusian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('bg', NULL, 'Bulgarian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('bh', NULL, 'Bihari', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('bi', NULL, 'Bislama', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('bm', NULL, 'Bambara', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('bn', NULL, 'Bengali', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('bo', NULL, 'Tibetan', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('br', NULL, 'Breton', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('bs', NULL, 'Bosnian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ca', NULL, 'Catalan', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ce', NULL, 'Chechen', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ch', NULL, 'Chamorro', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('co', NULL, 'Corsican', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('cr', NULL, 'Cree', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('cs', NULL, 'Czech', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('cu', NULL, 'Church Slavonic', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('cv', NULL, 'Chuvash', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('cy', NULL, 'Welsh', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('da', NULL, 'Danish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('de', NULL, 'German', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('dv', NULL, 'Dhivehi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('dz', NULL, 'Dzongkha', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ee', NULL, 'Ewe', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('el', NULL, 'Greek', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('en', NULL, 'English', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('eo', NULL, 'Esperanto', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('es', NULL, 'Spanish', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('et', NULL, 'Estonian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('eu', NULL, 'Basque', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('fa', NULL, 'Persian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('fa_IR', NULL, 'Persian (Iran)', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ff', NULL, 'Fula', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('fi', NULL, 'Finnish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('fj', NULL, 'Fijian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('fo', NULL, 'Faeroese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('fr', NULL, 'French', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('fy', NULL, 'Frisian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ga', NULL, 'Irish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('gd', NULL, 'Scottish Gaelic', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('gl', NULL, 'Galician', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('gn', NULL, 'Guaraní', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('gu', NULL, 'Gujarati', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('gv', NULL, 'Manx', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ha', NULL, 'Hausa', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('he', NULL, 'Hebrew', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('hi', NULL, 'Hindi', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ho', NULL, 'Hiri motu', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('hr', NULL, 'Croatian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ht', NULL, 'Haïtian Creole', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('hu', NULL, 'Hungarian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('hy', NULL, 'Armenian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('hz', NULL, 'Herero', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ia', NULL, 'Interlingua', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('id', NULL, 'Indonesian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ie', NULL, 'Interlingue', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ig', NULL, 'Igbo', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ii', NULL, 'Yi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ik', NULL, 'Inupiaq', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('io', NULL, 'Ido', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('is', NULL, 'Icelandic', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('it', NULL, 'Italian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('iu', NULL, 'Inuktitut', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ja', NULL, 'Japanese', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('jv', NULL, 'Javanese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ka', NULL, 'Georgian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('kg', NULL, 'Kongo', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ki', NULL, 'Kikuyu', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('kj', NULL, 'Kuanyama', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('kk', NULL, 'Kazakh', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('kl', NULL, 'Greenlandic', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('km', NULL, 'Khmer', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('kn', NULL, 'Kannada', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ko', NULL, 'Korean', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('kr', NULL, 'Kanuri', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ks', NULL, 'Kashmiri', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ku', NULL, 'Kurdish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('kv', NULL, 'Komi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('kw', NULL, 'Cornish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ky', NULL, 'Kirghiz', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('lb', NULL, 'Luxembourgish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('lg', NULL, 'Luganda', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('li', NULL, 'Limburgish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ln', NULL, 'Lingala', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('lo', NULL, 'Lao', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('lt', NULL, 'Lithuanian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('lu', NULL, 'Luba-Katanga', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('lv', NULL, 'Latvian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('mg', NULL, 'Malagasy', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('mh', NULL, 'Marshallese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('mi', NULL, 'Māori', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('mk', NULL, 'Macedonian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ml', NULL, 'Malayalam', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('mn', NULL, 'Mongolian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('mo', NULL, 'Moldavian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('mr', NULL, 'Marathi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ms', NULL, 'Malay', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('mt', NULL, 'Maltese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('my', NULL, 'Burmese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('na', NULL, 'Nauru', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('nb', NULL, 'Norwegian Bokmål', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('nd', NULL, 'North Ndebele', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ne', NULL, 'Nepali', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ng', NULL, 'Ndonga', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('nl', 1, 'Dutch', 1, '2017-01-11 10:40:01', '2016-12-06 15:30:18', 'admin@remise.be'),
('nl_BE', 1, 'Dutch (Belgium)', 1, '2017-01-11 10:43:27', '2016-12-06 15:30:18', 'admin@remise.be'),
('nn', NULL, 'Norwegian Nynorsk', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('no', NULL, 'Norwegian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('nr', NULL, 'South Ndebele', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('nv', NULL, 'Navajo', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ny', NULL, 'Chichewa', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('oc', NULL, 'Occitan', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('oj', NULL, 'Ojibwa', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('om', NULL, 'Oromo', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('or', NULL, 'Oriya', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('os', NULL, 'Ossetic', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('pa', NULL, 'Punjabi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('pi', NULL, 'Pali', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('pl', NULL, 'Polish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ps', NULL, 'Pashto', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('pt', NULL, 'Portuguese', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('qu', NULL, 'Quechua', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('rm', NULL, 'Rhaeto-Romance', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('rn', NULL, 'Kirundi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ro', NULL, 'Romanian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ru', NULL, 'Russian', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('rw', NULL, 'Kinyarwanda', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sa', NULL, 'Sanskrit', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sc', NULL, 'Sardinian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sd', NULL, 'Sindhi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('se', NULL, 'Northern Sami', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sg', NULL, 'Sango', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('si', NULL, 'Sinhala', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sk', NULL, 'Slovak', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sl', NULL, 'Slovenian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sm', NULL, 'Samoan', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sn', NULL, 'Shona', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('so', NULL, 'Somali', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sq', NULL, 'Albanian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sr', NULL, 'Serbian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sr_RS', NULL, 'Serbian (Serbia)', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ss', NULL, 'Swati', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('st', NULL, 'Sesotho', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('su', NULL, 'Sundanese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sv', NULL, 'Swedish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('sw', NULL, 'Swahili', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ta', NULL, 'Tamil', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('te', NULL, 'Telugu', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('tg', NULL, 'Tajik', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('th', NULL, 'Thai', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ti', NULL, 'Tigrinya', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('tk', NULL, 'Turkmen', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('tl', NULL, 'Tagalog', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('tn', NULL, 'Setswana', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('to', NULL, 'Tongan', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('tr', NULL, 'Turkish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('tr_TR', NULL, 'Turkish (Turkey)', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ts', NULL, 'Tsonga', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('tt', NULL, 'Tatar', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('tw', NULL, 'Twi', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ty', NULL, 'Tahitian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ug', NULL, 'Uyghur', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('uk', NULL, 'Ukrainian', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ur', NULL, 'Urdu', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('uz', NULL, 'Uzbek', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('ve', NULL, 'Venda', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('vi', NULL, 'Vietnamese', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('vo', NULL, 'Volapük', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('wa', NULL, 'Walloon', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('wo', NULL, 'Wolof', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('xh', NULL, 'Xhosa', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('yi', NULL, 'Yiddish', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('yo', NULL, 'Yoruba', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('za', NULL, 'Zhuang', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('zh', NULL, 'Chinese', 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('zh_CN', NULL, 'Chinese (China)', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup'),
('zu', NULL, 'Zulu', 0, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'aimeos:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_locale_site`
--

CREATE TABLE `mshop_locale_site` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `level` smallint(6) NOT NULL,
  `nleft` int(11) NOT NULL,
  `nright` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_locale_site`
--

INSERT INTO `mshop_locale_site` (`id`, `parentid`, `code`, `label`, `config`, `level`, `nleft`, `nright`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 0, 'default', 'Default', '[]', 0, 1, 2, 1, '2016-12-06 15:30:18', '2016-12-06 15:30:18', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media`
--

CREATE TABLE `mshop_media` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `preview` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mimetype` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_media`
--

INSERT INTO `mshop_media` (`id`, `typeid`, `siteid`, `langid`, `domain`, `label`, `link`, `preview`, `mimetype`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 2, 1, NULL, 'attribute', 'Demo: black.gif', 'data:image/gif;base64,R0lGODdhAQABAIAAAAAAAAAAACwAAAAAAQABAAACAkQBADs=', 'data:image/gif;base64,R0lGODdhAQABAIAAAAAAAAAAACwAAAAAAQABAAACAkQBADs=', 'image/gif', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(2, 1, 1, NULL, 'product', 'Demo: Article 1.jpg', 'http://demo.aimeos.org/media/1-big.jpg', 'http://demo.aimeos.org/media/1.jpg', 'image/jpeg', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(3, 1, 1, NULL, 'product', 'Demo: Article 2.jpg', 'http://demo.aimeos.org/media/2-big.jpg', 'http://demo.aimeos.org/media/2.jpg', 'image/jpeg', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(4, 1, 1, NULL, 'product', 'Demo: Article 3.jpg', 'http://demo.aimeos.org/media/3-big.jpg', 'http://demo.aimeos.org/media/3.jpg', 'image/jpeg', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(5, 1, 1, NULL, 'product', 'Demo: Article 4.jpg', 'http://demo.aimeos.org/media/4-big.jpg', 'http://demo.aimeos.org/media/4.jpg', 'image/jpeg', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(6, 2, 1, NULL, 'attribute', 'Demo: blue.gif', 'data:image/gif;base64,R0lGODdhAQABAIAAAAAA/wAAACwAAAAAAQABAAACAkQBADs=', 'data:image/gif;base64,R0lGODdhAQABAIAAAAAA/wAAACwAAAAAAQABAAACAkQBADs=', 'image/gif', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(7, 2, 1, NULL, 'attribute', 'Demo: beige.gif', 'data:image/gif;base64,R0lGODdhAQABAIAAAPX13AAAACwAAAAAAQABAAACAkQBADs=', 'data:image/gif;base64,R0lGODdhAQABAIAAAPX13AAAACwAAAAAAQABAAACAkQBADs=', 'image/gif', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(8, 1, 1, NULL, 'product', 'Demo: Selection article 1.jpg', 'http://demo.aimeos.org/media/1-big.jpg', 'http://demo.aimeos.org/media/1.jpg', 'image/jpeg', 1, '2017-01-10 16:02:55', '2016-12-08 08:34:40', 'admin@remise.be'),
(9, 1, 1, NULL, 'product', 'Demo: Selection article 2.jpg', 'http://demo.aimeos.org/media/2-big.jpg', 'http://demo.aimeos.org/media/2.jpg', 'image/jpeg', 1, '2017-01-10 16:02:55', '2016-12-08 08:34:40', 'admin@remise.be'),
(10, 1, 1, NULL, 'product', 'Demo: Selection article 3.jpg', 'http://demo.aimeos.org/media/3-big.jpg', 'http://demo.aimeos.org/media/3.jpg', 'image/jpeg', 1, '2017-01-10 16:02:55', '2016-12-08 08:34:40', 'admin@remise.be'),
(11, 1, 1, NULL, 'product', 'Demo: Selection article 4.jpg', 'http://demo.aimeos.org/media/4-big.jpg', 'http://demo.aimeos.org/media/4.jpg', 'image/jpeg', 1, '2017-01-10 16:02:55', '2016-12-08 08:34:40', 'admin@remise.be'),
(12, 1, 1, NULL, 'product', 'Demo: Bundle article 1.jpg', 'http://demo.aimeos.org/media/1-big.jpg', 'http://demo.aimeos.org/media/1.jpg', 'image/jpeg', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(13, 1, 1, NULL, 'product', 'Demo: Bundle article 2.jpg', 'http://demo.aimeos.org/media/2-big.jpg', 'http://demo.aimeos.org/media/2.jpg', 'image/jpeg', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(14, 1, 1, NULL, 'product', 'Demo: Bundle article 3.jpg', 'http://demo.aimeos.org/media/3-big.jpg', 'http://demo.aimeos.org/media/3.jpg', 'image/jpeg', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(15, 1, 1, NULL, 'product', 'Demo: Bundle article 4.jpg', 'http://demo.aimeos.org/media/4-big.jpg', 'http://demo.aimeos.org/media/4.jpg', 'image/jpeg', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(16, 8, 1, NULL, 'catalog', 'Demo: Home stage image', 'files/1/5/1596b5f78958a317917f04af41b0f374.jpg', 'preview/1/5/1596b5f78958a317917f04af41b0f374.jpg', 'image/jpeg', 1, '2017-01-11 11:12:57', '2016-12-08 08:34:40', 'admin@remise.be'),
(17, 6, 1, NULL, 'service', 'Demo: dhl.png', 'http://demo.aimeos.org/media/service/dhl.png', 'http://demo.aimeos.org/media/service/dhl.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(18, 6, 1, NULL, 'service', 'Demo: dhl-express.png', 'http://demo.aimeos.org/media/service/dhl-express.png', 'http://demo.aimeos.org/media/service/dhl-express.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(19, 6, 1, NULL, 'service', 'Demo: fedex.png', 'http://demo.aimeos.org/media/service/fedex.png', 'http://demo.aimeos.org/media/service/fedex.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(20, 6, 1, NULL, 'service', 'Demo: tnt.png', 'http://demo.aimeos.org/media/service/tnt.png', 'http://demo.aimeos.org/media/service/tnt.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(21, 6, 1, 'de', 'service', 'Demo: payment-in-advance.png', 'http://demo.aimeos.org/media/service/payment-in-advance.png', 'http://demo.aimeos.org/media/service/payment-in-advance.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(22, 6, 1, 'de', 'service', 'Demo: sepa.png', 'http://demo.aimeos.org/media/service/sepa.png', 'http://demo.aimeos.org/media/service/sepa.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(23, 6, 1, 'en', 'service', 'Demo: direct-debit.png', 'http://demo.aimeos.org/media/service/direct-debit.png', 'http://demo.aimeos.org/media/service/direct-debit.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(24, 6, 1, NULL, 'service', 'Demo: paypal.png', 'http://demo.aimeos.org/media/service/paypal.png', 'http://demo.aimeos.org/media/service/paypal.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(25, 6, 1, 'de', 'service', 'Demo: dhl-cod.png', 'http://demo.aimeos.org/media/service/dhl-cod.png', 'http://demo.aimeos.org/media/service/dhl-cod.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(26, 6, 1, 'de', 'service', 'Demo: payment-in-advance-alternative.png', 'http://demo.aimeos.org/media/service/payment-in-advance-alternative.png', 'http://demo.aimeos.org/media/service/payment-in-advance-alternative.png', 'image/png', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(27, 1, 1, NULL, 'product', 'remiseblond2.jpeg', 'files/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg', 'preview/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg', 'image/jpeg', 1, '2017-01-10 16:15:57', '2017-01-10 16:13:22', 'admin@remise.be'),
(28, 1, 1, NULL, 'product', 'image001.jpeg', 'files/1/5/1596b5f78958a317917f04af41b0f374.jpg', 'preview/1/5/1596b5f78958a317917f04af41b0f374.jpg', 'image/jpeg', 1, '2017-01-11 11:12:02', '2017-01-11 11:12:02', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media_list`
--

CREATE TABLE `mshop_media_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media_list_type`
--

CREATE TABLE `mshop_media_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_media_list_type`
--

INSERT INTO `mshop_media_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'attribute', 'variant', 'Variant', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(4, 1, 'catalog', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(5, 1, 'media', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(6, 1, 'price', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(7, 1, 'service', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(8, 1, 'text', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_media_type`
--

CREATE TABLE `mshop_media_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_media_type`
--

INSERT INTO `mshop_media_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'catalog', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(4, 1, 'media', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(5, 1, 'price', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(6, 1, 'service', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(7, 1, 'text', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(8, 1, 'catalog', 'stage', 'Stage', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order`
--

CREATE TABLE `mshop_order` (
  `id` bigint(20) NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `datepayment` datetime NOT NULL,
  `datedelivery` datetime DEFAULT NULL,
  `statuspayment` smallint(6) NOT NULL DEFAULT '-1',
  `statusdelivery` smallint(6) NOT NULL DEFAULT '-1',
  `relatedid` bigint(20) DEFAULT NULL,
  `cdate` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `cweek` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `cmonth` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `chour` char(255) COLLATE utf8_unicode_ci NOT NULL,
  `ctime` datetime NOT NULL,
  `mtime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_order`
--

INSERT INTO `mshop_order` (`id`, `baseid`, `siteid`, `type`, `datepayment`, `datedelivery`, `statuspayment`, `statusdelivery`, `relatedid`, `cdate`, `cweek`, `cmonth`, `chour`, `ctime`, `mtime`, `editor`) VALUES
(1, 1, 1, 'web', '2017-01-10 16:08:25', NULL, 4, -1, NULL, '2017-01-10', '2017-02', '2017-01', '16', '2017-01-10 16:08:25', '2017-01-10 16:08:26', 'admin@remise.be'),
(2, 2, 1, 'web', '2017-01-12 11:17:11', NULL, 4, -1, NULL, '2017-01-12', '2017-02', '2017-01', '11', '2017-01-12 11:17:11', '2017-01-12 11:17:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order_base`
--

CREATE TABLE `mshop_order_base` (
  `id` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `customerid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sitecode` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `currencyid` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `costs` decimal(12,2) NOT NULL,
  `rebate` decimal(12,2) NOT NULL,
  `tax` decimal(14,4) NOT NULL,
  `taxflag` smallint(6) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_order_base`
--

INSERT INTO `mshop_order_base` (`id`, `siteid`, `customerid`, `sitecode`, `langid`, `currencyid`, `price`, `costs`, `rebate`, `tax`, `taxflag`, `comment`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, '3', 'default', 'en', 'EUR', '150.00', '15.90', '0.00', '15.5288', 1, '', 0, '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(2, 1, '', 'default', 'nl_BE', 'EUR', '66.00', '5.90', '0.00', '12.4387', 1, '', 0, '2017-01-12 11:17:11', '2017-01-12 11:17:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order_base_address`
--

CREATE TABLE `mshop_order_base_address` (
  `id` bigint(20) NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `addrid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vatid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryid` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `telefax` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_order_base_address`
--

INSERT INTO `mshop_order_base_address` (`id`, `baseid`, `siteid`, `addrid`, `type`, `salutation`, `company`, `vatid`, `title`, `firstname`, `lastname`, `address1`, `address2`, `address3`, `postal`, `city`, `state`, `langid`, `countryid`, `telephone`, `telefax`, `email`, `website`, `flag`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, '3', 'payment', 'mr', '', '', '', 'Admin', 'Admin', 'Admin', '', '', '0000', 'Admin', '', 'en', 'BE', '', '', 'admin@remise.be', '', 0, '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(2, 2, 1, '', 'payment', 'mr', '', '', '', 'Alexander', 'Bielen', 'test', '', '', '0000', 'test', '', 'nl_be', 'BE', '', '', 'alexander.bielen@hotmail.com', '', 0, '2017-01-12 11:17:11', '2017-01-12 11:17:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order_base_coupon`
--

CREATE TABLE `mshop_order_base_coupon` (
  `id` bigint(20) NOT NULL,
  `ordprodid` bigint(20) DEFAULT NULL,
  `baseid` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order_base_product`
--

CREATE TABLE `mshop_order_base_product` (
  `id` bigint(20) NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `ordprodid` bigint(20) DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `prodid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `prodcode` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `suppliercode` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `warehousecode` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mediaurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `costs` decimal(12,2) NOT NULL,
  `rebate` decimal(12,2) NOT NULL,
  `tax` decimal(14,4) NOT NULL,
  `taxrate` decimal(5,2) NOT NULL,
  `taxflag` smallint(6) NOT NULL,
  `flags` int(11) NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '-1',
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_order_base_product`
--

INSERT INTO `mshop_order_base_product` (`id`, `baseid`, `siteid`, `ordprodid`, `type`, `prodid`, `prodcode`, `suppliercode`, `warehousecode`, `name`, `mediaurl`, `quantity`, `price`, `costs`, `rebate`, `tax`, `taxrate`, `taxflag`, `flags`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, NULL, 'select', '4', 'demo-selection-article-1', '', 'default', 'Demo selection article', 'http://demo.aimeos.org/media/2.jpg', 1, '150.00', '10.00', '0.00', '14.5455', '10.00', 1, 0, 1, -1, '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(2, 2, 1, NULL, 'default', '11', 'TESTBIER1', '', 'default', 'Remise blond', 'preview/4/7/47dece8e6c1b398a0b15746203e7e6b8.jpg', 22, '3.00', '0.00', '0.00', '0.5207', '21.00', 1, 0, 1, -1, '2017-01-12 11:17:11', '2017-01-12 11:17:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order_base_product_attr`
--

CREATE TABLE `mshop_order_base_product_attr` (
  `id` bigint(20) NOT NULL,
  `ordprodid` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `attrid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_order_base_product_attr`
--

INSERT INTO `mshop_order_base_product_attr` (`id`, `ordprodid`, `siteid`, `attrid`, `type`, `code`, `name`, `value`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, '5', 'variant', 'color', 'Blue', '"demo-blue"', '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(2, 1, 1, '6', 'variant', 'width', '32', '"demo-width-32"', '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(3, 1, 1, '7', 'variant', 'length', '34', '"demo-length-34"', '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order_base_service`
--

CREATE TABLE `mshop_order_base_service` (
  `id` bigint(20) NOT NULL,
  `baseid` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `servid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mediaurl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `costs` decimal(12,2) NOT NULL,
  `rebate` decimal(12,2) NOT NULL,
  `tax` decimal(14,4) NOT NULL,
  `taxrate` decimal(5,2) NOT NULL,
  `taxflag` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_order_base_service`
--

INSERT INTO `mshop_order_base_service` (`id`, `baseid`, `siteid`, `servid`, `type`, `code`, `name`, `mediaurl`, `price`, `costs`, `rebate`, `tax`, `taxrate`, `taxflag`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, '1', 'delivery', 'demo-dhl', 'DHL', 'http://demo.aimeos.org/media/service/dhl.png', '0.00', '5.90', '0.00', '0.9833', '20.00', 1, '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(2, 1, 1, '9', 'payment', 'demo-prepay', 'Prepayment', '', '0.00', '0.00', '0.00', '0.0000', '20.00', 1, '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(3, 2, 1, '1', 'delivery', 'demo-dhl', 'DHL', 'http://demo.aimeos.org/media/service/dhl.png', '0.00', '5.90', '0.00', '0.9833', '20.00', 1, '2017-01-12 11:17:11', '2017-01-12 11:17:11', ''),
(4, 2, 1, '9', 'payment', 'demo-prepay', 'Prepayment', '', '0.00', '0.00', '0.00', '0.0000', '20.00', 1, '2017-01-12 11:17:11', '2017-01-12 11:17:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order_base_service_attr`
--

CREATE TABLE `mshop_order_base_service_attr` (
  `id` bigint(20) NOT NULL,
  `ordservid` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `attrid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_order_status`
--

CREATE TABLE `mshop_order_status` (
  `id` bigint(20) NOT NULL,
  `parentid` bigint(20) NOT NULL,
  `siteid` int(11) DEFAULT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_order_status`
--

INSERT INTO `mshop_order_status` (`id`, `parentid`, `siteid`, `type`, `value`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, 'stock-update', '1', '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(2, 1, 1, 'coupon-update', '1', '2017-01-10 16:08:25', '2017-01-10 16:08:25', 'admin@remise.be'),
(3, 1, 1, 'status-payment', '4', '2017-01-10 16:08:26', '2017-01-10 16:08:26', 'admin@remise.be'),
(4, 2, 1, 'stock-update', '1', '2017-01-12 11:17:11', '2017-01-12 11:17:11', ''),
(5, 2, 1, 'coupon-update', '1', '2017-01-12 11:17:11', '2017-01-12 11:17:11', ''),
(6, 2, 1, 'status-payment', '4', '2017-01-12 11:17:12', '2017-01-12 11:17:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_plugin`
--

CREATE TABLE `mshop_plugin` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_plugin`
--

INSERT INTO `mshop_plugin` (`id`, `typeid`, `siteid`, `label`, `provider`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, 'Adds addresses/delivery/payment to basket', 'Autofill', '{"autofill.useorder":1,"autofill.orderaddress":1,"autofill.orderservice":1,"autofill.delivery":1,"autofill.payment":0}', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(2, 1, 1, 'Updates delivery/payment options on basket change', 'ServicesUpdate', '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(3, 1, 1, 'Checks for required addresses (billing/delivery)', 'AddressesAvailable', '{"payment":1,"delivery":""}', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(4, 1, 1, 'Checks for required services (delivery/payment)', 'ServicesAvailable', '{"payment":1,"delivery":1}', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(5, 1, 1, 'Checks for deleted products', 'ProductGone', '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(6, 1, 1, 'Checks for changed product prices', 'ProductPrice', '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(7, 1, 1, 'Checks for products out of stock', 'ProductStock', '[]', 5, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(8, 1, 1, 'Checks for necessary basket limits', 'BasketLimits', '{"min-products":1,"max-products":100,"min-value":{"EUR":"1.00"},"max-value":{"EUR":"10000.00"}}', 6, 0, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(9, 1, 1, 'Limits maximum amount of products', 'ProductLimit', '{"single-number-max":10,"total-number-max":100,"single-value-max":{"EUR":"1000.00"},"total-value-max":{"EUR":"10000.00"}}', 7, 0, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(10, 1, 1, 'Free shipping above threshold', 'Shipping', '{"threshold":{"EUR":"1.00"}}', 8, 0, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(11, 1, 1, 'Coupon update', 'Coupon', '[]', 100, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_plugin_type`
--

CREATE TABLE `mshop_plugin_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_plugin_type`
--

INSERT INTO `mshop_plugin_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'plugin', 'order', 'Order', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price`
--

CREATE TABLE `mshop_price` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `currencyid` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `value` decimal(12,2) NOT NULL,
  `costs` decimal(12,2) NOT NULL,
  `rebate` decimal(12,2) NOT NULL,
  `taxrate` decimal(5,2) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_price`
--

INSERT INTO `mshop_price` (`id`, `typeid`, `siteid`, `domain`, `label`, `currencyid`, `quantity`, `value`, `costs`, `rebate`, `taxrate`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, 'attribute', 'Demo: Small print', 'EUR', 1, '5.00', '0.00', '0.00', '20.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(2, 1, 1, 'attribute', 'Demo: Small print', 'USD', 1, '7.00', '0.00', '0.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(3, 1, 1, 'attribute', 'Demo: Large print', 'EUR', 1, '15.00', '0.00', '0.00', '20.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(4, 1, 1, 'attribute', 'Demo: Large print', 'USD', 1, '20.00', '0.00', '0.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(5, 3, 1, 'product', 'Demo: Article from 1', 'EUR', 1, '100.00', '5.00', '20.00', '20.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(6, 3, 1, 'product', 'Demo: Article from 5', 'EUR', 5, '90.00', '5.00', '30.00', '20.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(7, 3, 1, 'product', 'Demo: Article from 10', 'EUR', 10, '80.00', '5.00', '40.00', '20.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(8, 3, 1, 'product', 'Demo: Article from 1', 'USD', 1, '130.00', '7.50', '30.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(9, 3, 1, 'product', 'Demo: Article from 5', 'USD', 5, '120.00', '7.50', '40.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(10, 3, 1, 'product', 'Demo: Article from 10', 'USD', 10, '100.00', '7.50', '60.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(11, 1, 1, 'attribute', 'Demo: Small sticker', 'EUR', 1, '2.50', '0.00', '0.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(12, 1, 1, 'attribute', 'Demo: Small sticker', 'USD', 1, '3.50', '0.00', '0.00', '5.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(13, 1, 1, 'attribute', 'Demo: Large sticker', 'EUR', 1, '5.00', '0.00', '0.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(14, 1, 1, 'attribute', 'Demo: Large sticker', 'USD', 1, '7.00', '0.00', '0.00', '5.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(15, 3, 1, 'product', 'Demo: Selection article from 1', 'EUR', 1, '150.00', '10.00', '0.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(16, 3, 1, 'product', 'Demo: Selection article from 5', 'EUR', 5, '135.00', '10.00', '15.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(17, 3, 1, 'product', 'Demo: Selection article from 10', 'EUR', 10, '120.00', '10.00', '30.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(18, 3, 1, 'product', 'Demo: Selection article from 1', 'USD', 1, '200.00', '15.00', '0.00', '5.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(19, 3, 1, 'product', 'Demo: Selection article from 5', 'USD', 5, '175.00', '15.00', '25.00', '5.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(20, 3, 1, 'product', 'Demo: Selection article from 10', 'USD', 10, '150.00', '15.00', '50.00', '5.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(21, 3, 1, 'product', 'Demo: Bundle article from 1', 'EUR', 1, '250.00', '10.00', '0.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(22, 3, 1, 'product', 'Demo: Bundle article from 5', 'EUR', 5, '235.00', '10.00', '15.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(23, 3, 1, 'product', 'Demo: Bundle article from 10', 'EUR', 10, '220.00', '10.00', '30.00', '10.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(24, 3, 1, 'product', 'Demo: Bundle article from 1', 'USD', 1, '250.00', '15.00', '0.00', '5.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(25, 3, 1, 'product', 'Demo: Bundle article from 5', 'USD', 5, '225.00', '15.00', '25.00', '5.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(26, 3, 1, 'product', 'Demo: Bundle article from 10', 'USD', 10, '200.00', '15.00', '50.00', '5.00', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(27, 2, 1, 'service', 'Demo: DHL', 'EUR', 1, '0.00', '5.90', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(28, 2, 1, 'service', 'Demo: DHL', 'USD', 1, '0.00', '7.90', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(29, 2, 1, 'service', 'Demo: DHL', 'EUR', 1, '0.00', '11.90', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(30, 2, 1, 'service', 'Demo: DHL', 'USD', 1, '0.00', '15.90', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(31, 2, 1, 'service', 'Demo: Fedex', 'EUR', 1, '0.00', '6.90', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(32, 2, 1, 'service', 'Demo: Fedex', 'USD', 1, '0.00', '8.50', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(33, 2, 1, 'service', 'Demo: TNT', 'EUR', 1, '0.00', '8.90', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(34, 2, 1, 'service', 'Demo: TNT', 'USD', 1, '0.00', '12.90', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(35, 2, 1, 'service', 'Demo: Invoice', 'EUR', 1, '0.00', '0.00', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(36, 2, 1, 'service', 'Demo: Invoice', 'USD', 1, '0.00', '0.00', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(37, 2, 1, 'service', 'Demo: Direct debit', 'EUR', 1, '0.00', '0.00', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(38, 2, 1, 'service', 'Demo: Direct debit', 'USD', 1, '0.00', '0.00', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(39, 2, 1, 'service', 'Demo: PayPal', 'EUR', 1, '0.00', '0.00', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(40, 2, 1, 'service', 'Demo: PayPal', 'USD', 1, '0.00', '0.00', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(41, 2, 1, 'service', 'Demo: Cache on delivery', 'EUR', 1, '0.00', '8.00', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(42, 2, 1, 'service', 'Demo: Cache on delivery', 'USD', 1, '0.00', '12.00', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(43, 2, 1, 'service', 'Demo: Prepayment', 'EUR', 1, '0.00', '0.00', '0.00', '20.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(44, 2, 1, 'service', 'Demo: Prepayment', 'USD', 1, '0.00', '0.00', '0.00', '10.00', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(45, 3, 1, 'product', 'Tripel', 'EUR', 100, '3.00', '0.00', '0.00', '21.00', 1, '2017-01-10 16:01:03', '2017-01-10 16:01:03', 'admin@remise.be'),
(46, 3, 1, 'product', 'Demo: Selection article from 1', 'EUR', 1, '150.00', '10.00', '0.00', '10.00', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(47, 3, 1, 'product', 'Demo: Selection article from 5', 'EUR', 5, '135.00', '10.00', '15.00', '10.00', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(48, 3, 1, 'product', 'Demo: Selection article from 10', 'EUR', 10, '120.00', '10.00', '30.00', '10.00', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(49, 3, 1, 'product', 'Demo: Selection article from 1', 'USD', 1, '200.00', '15.00', '0.00', '5.00', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(50, 3, 1, 'product', 'Demo: Selection article from 5', 'USD', 5, '175.00', '15.00', '25.00', '5.00', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(51, 3, 1, 'product', 'Demo: Selection article from 10', 'USD', 10, '150.00', '15.00', '50.00', '5.00', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(52, 3, 1, 'product', 'Normaal', 'EUR', 10, '3.00', '0.00', '0.00', '21.00', 1, '2017-01-10 16:13:22', '2017-01-10 16:13:22', 'admin@remise.be'),
(53, 3, 1, 'product', 'Normaal', 'EUR', 10, '3.00', '0.00', '0.00', '21.00', 1, '2017-01-10 16:15:57', '2017-01-10 16:15:57', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price_list`
--

CREATE TABLE `mshop_price_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price_list_type`
--

CREATE TABLE `mshop_price_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_price_list_type`
--

INSERT INTO `mshop_price_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'customer', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'customer/group', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_price_type`
--

CREATE TABLE `mshop_price_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_price_type`
--

INSERT INTO `mshop_price_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'service', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product`
--

CREATE TABLE `mshop_product` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_product`
--

INSERT INTO `mshop_product` (`id`, `typeid`, `siteid`, `code`, `label`, `config`, `start`, `end`, `status`, `mtime`, `ctime`, `editor`) VALUES
(11, 1, 1, 'TESTBIER1', 'Remise blond', '[]', NULL, NULL, 1, '2017-01-11 10:44:30', '2017-01-10 16:13:21', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_list`
--

CREATE TABLE `mshop_product_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_product_list`
--

INSERT INTO `mshop_product_list` (`id`, `typeid`, `parentid`, `siteid`, `domain`, `refid`, `start`, `end`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(92, 8, 11, 1, 'media', '27', NULL, NULL, '[]', 0, 1, '2017-01-10 16:13:22', '2017-01-10 16:13:22', 'admin@remise.be'),
(93, 13, 11, 1, 'text', '112', NULL, NULL, '[]', 0, 1, '2017-01-10 16:13:22', '2017-01-10 16:13:22', 'admin@remise.be'),
(94, 13, 11, 1, 'text', '113', NULL, NULL, '[]', 0, 1, '2017-01-10 16:13:22', '2017-01-10 16:13:22', 'admin@remise.be'),
(95, 10, 11, 1, 'price', '52', NULL, NULL, '[]', 0, 1, '2017-01-10 16:13:22', '2017-01-10 16:13:22', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_list_type`
--

CREATE TABLE `mshop_product_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_product_list_type`
--

INSERT INTO `mshop_product_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'attribute', 'config', 'Configurable', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(4, 1, 'attribute', 'variant', 'Variant', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(5, 1, 'attribute', 'hidden', 'Hidden', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(6, 1, 'attribute', 'custom', 'Custom value', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(7, 1, 'catalog', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(8, 1, 'media', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(9, 1, 'media', 'download', 'Download', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(10, 1, 'price', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(11, 1, 'service', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(12, 1, 'supplier', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(13, 1, 'text', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(14, 1, 'tag', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(15, 1, 'product', 'suggestion', 'Suggestion', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(16, 1, 'product', 'bought-together', 'Bought together', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_property`
--

CREATE TABLE `mshop_product_property` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_property_type`
--

CREATE TABLE `mshop_product_property_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_product_property_type`
--

INSERT INTO `mshop_product_property_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'product', 'package-height', 'Package height', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'product', 'package-length', 'Package length', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'product', 'package-width', 'Package width', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(4, 1, 'product', 'package-weight', 'Package weight', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_stock`
--

CREATE TABLE `mshop_product_stock` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `warehouseid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `stocklevel` int(11) DEFAULT NULL,
  `backdate` datetime DEFAULT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_product_stock`
--

INSERT INTO `mshop_product_stock` (`id`, `parentid`, `warehouseid`, `siteid`, `stocklevel`, `backdate`, `mtime`, `ctime`, `editor`) VALUES
(6, 11, 1, 1, NULL, NULL, '2017-01-12 11:17:11', '2017-01-11 10:44:28', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_stock_warehouse`
--

CREATE TABLE `mshop_product_stock_warehouse` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_product_stock_warehouse`
--

INSERT INTO `mshop_product_stock_warehouse` (`id`, `siteid`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_product_type`
--

CREATE TABLE `mshop_product_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_product_type`
--

INSERT INTO `mshop_product_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'product', 'default', 'Article', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'product', 'select', 'Selection', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'product', 'bundle', 'Bundle', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_service`
--

CREATE TABLE `mshop_service` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_service`
--

INSERT INTO `mshop_service` (`id`, `typeid`, `siteid`, `code`, `label`, `provider`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 2, 1, 'demo-dhl', 'DHL', 'Manual,Reduction', '{"reduction.basket-value-min":{"EUR":"200.00"},"reduction.percent":100}', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(2, 2, 1, 'demo-dhlexpress', 'DHL Express', 'Manual', '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(3, 2, 1, 'demo-fedex', 'Fedex', 'Manual', '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(4, 2, 1, 'demo-tnt', 'TNT', 'Manual', '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(5, 1, 1, 'demo-invoice', 'Invoice', 'PostPay', '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(6, 1, 1, 'demo-sepa', 'Direct debit', 'DirectDebit', '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(7, 1, 1, 'demo-paypal', 'PayPal', 'PayPalExpress', '{"paypalexpress.AccountEmail":"selling2@metaways.de","paypalexpress.ApiUsername":"unit_1340199666_biz_api1.yahoo.de","paypalexpress.ApiPassword":"1340199685","paypalexpress.ApiSignature":"A34BfbVoMVoHt7Sf8BlufLXS8tKcAVxmJoDiDUgBjWi455pJoZXGoJ87","paypalexpress.PaypalUrl":"https:\\/\\/www.sandbox.paypal.com\\/webscr&cmd=_express-checkout&useraction=commit&token=%1$s","paypalexpress.ApiEndpoint":"https:\\/\\/api-3t.sandbox.paypal.com\\/nvp"}', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(8, 1, 1, 'demo-cashondelivery', 'Cash on delivery', 'PostPay', '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(9, 1, 1, 'demo-prepay', 'Prepayment', 'PrePay', '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_service_list`
--

CREATE TABLE `mshop_service_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_service_list`
--

INSERT INTO `mshop_service_list` (`id`, `typeid`, `parentid`, `siteid`, `domain`, `refid`, `start`, `end`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 4, 1, 1, 'media', '17', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(2, 6, 1, 1, 'price', '27', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(3, 6, 1, 1, 'price', '28', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(4, 8, 1, 1, 'text', '67', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(5, 8, 1, 1, 'text', '68', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(6, 8, 1, 1, 'text', '69', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(7, 8, 1, 1, 'text', '70', NULL, NULL, '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(8, 4, 2, 1, 'media', '18', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(9, 6, 2, 1, 'price', '29', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(10, 6, 2, 1, 'price', '30', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(11, 8, 2, 1, 'text', '71', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(12, 8, 2, 1, 'text', '72', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(13, 8, 2, 1, 'text', '73', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(14, 8, 2, 1, 'text', '74', NULL, NULL, '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(15, 4, 3, 1, 'media', '19', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(16, 6, 3, 1, 'price', '31', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(17, 6, 3, 1, 'price', '32', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(18, 8, 3, 1, 'text', '75', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(19, 8, 3, 1, 'text', '76', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(20, 8, 3, 1, 'text', '77', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(21, 8, 3, 1, 'text', '78', NULL, NULL, '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(22, 4, 4, 1, 'media', '20', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(23, 6, 4, 1, 'price', '33', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(24, 6, 4, 1, 'price', '34', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(25, 8, 4, 1, 'text', '79', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(26, 8, 4, 1, 'text', '80', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(27, 8, 4, 1, 'text', '81', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(28, 8, 4, 1, 'text', '82', NULL, NULL, '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(29, 4, 5, 1, 'media', '21', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(30, 6, 5, 1, 'price', '35', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(31, 6, 5, 1, 'price', '36', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(32, 8, 5, 1, 'text', '83', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(33, 8, 5, 1, 'text', '84', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(34, 8, 5, 1, 'text', '85', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(35, 8, 5, 1, 'text', '86', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(36, 8, 5, 1, 'text', '87', NULL, NULL, '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(37, 4, 6, 1, 'media', '22', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(38, 4, 6, 1, 'media', '23', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(39, 6, 6, 1, 'price', '37', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(40, 6, 6, 1, 'price', '38', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(41, 8, 6, 1, 'text', '88', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(42, 8, 6, 1, 'text', '89', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(43, 8, 6, 1, 'text', '90', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(44, 8, 6, 1, 'text', '91', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(45, 8, 6, 1, 'text', '92', NULL, NULL, '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(46, 4, 7, 1, 'media', '24', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(47, 6, 7, 1, 'price', '39', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(48, 6, 7, 1, 'price', '40', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(49, 8, 7, 1, 'text', '93', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(50, 8, 7, 1, 'text', '94', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(51, 8, 7, 1, 'text', '95', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(52, 8, 7, 1, 'text', '96', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(53, 4, 8, 1, 'media', '25', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(54, 6, 8, 1, 'price', '41', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(55, 6, 8, 1, 'price', '42', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(56, 8, 8, 1, 'text', '97', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(57, 8, 8, 1, 'text', '98', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(58, 8, 8, 1, 'text', '99', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(59, 8, 8, 1, 'text', '100', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(60, 4, 9, 1, 'media', '26', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(61, 6, 9, 1, 'price', '43', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(62, 6, 9, 1, 'price', '44', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(63, 8, 9, 1, 'text', '101', NULL, NULL, '[]', 0, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(64, 8, 9, 1, 'text', '102', NULL, NULL, '[]', 1, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(65, 8, 9, 1, 'text', '103', NULL, NULL, '[]', 2, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(66, 8, 9, 1, 'text', '104', NULL, NULL, '[]', 3, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(67, 8, 9, 1, 'text', '105', NULL, NULL, '[]', 4, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_service_list_type`
--

CREATE TABLE `mshop_service_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_service_list_type`
--

INSERT INTO `mshop_service_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'catalog', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(4, 1, 'media', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(5, 1, 'media', 'icon', 'Icon', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(6, 1, 'price', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(7, 1, 'service', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(8, 1, 'text', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_service_type`
--

CREATE TABLE `mshop_service_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_service_type`
--

INSERT INTO `mshop_service_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'service', 'payment', 'Payment', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'service', 'delivery', 'Delivery', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_supplier`
--

CREATE TABLE `mshop_supplier` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_supplier_address`
--

CREATE TABLE `mshop_supplier_address` (
  `id` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vatid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryid` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `telefax` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL,
  `pos` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_supplier_list`
--

CREATE TABLE `mshop_supplier_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_supplier_list_type`
--

CREATE TABLE `mshop_supplier_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_supplier_list_type`
--

INSERT INTO `mshop_supplier_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'media', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(4, 1, 'text', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_tag`
--

CREATE TABLE `mshop_tag` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_tag_type`
--

CREATE TABLE `mshop_tag_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_tag_type`
--

INSERT INTO `mshop_tag_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'catalog', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_text`
--

CREATE TABLE `mshop_text` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_text`
--

INSERT INTO `mshop_text` (`id`, `typeid`, `siteid`, `langid`, `domain`, `label`, `content`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, 'de', 'attribute', 'Demo name/de: Schwarz', 'Schwarz', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(2, 1, 1, 'en', 'attribute', 'Demo name/en: Black', 'Black', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(3, 4, 1, 'de', 'attribute', 'Demo url/de: Schwarz', 'Schwarz', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(4, 4, 1, 'en', 'attribute', 'Demo url/en: Black', 'Black', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(5, 1, 1, 'de', 'attribute', 'Demo name/de: Kleiner Aufdruck', 'Kleiner Aufdruck', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(6, 1, 1, 'en', 'attribute', 'Demo name/en: Small print', 'Small print', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(7, 4, 1, 'de', 'attribute', 'Demo url/de: Kleiner Aufdruck', 'Kleiner_Aufdruck', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(8, 4, 1, 'en', 'attribute', 'Demo url/en: Small print', 'small_print', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(9, 1, 1, 'de', 'attribute', 'Demo name/de: Grosser Aufdruck', 'Grosser Aufdruck', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(10, 1, 1, 'en', 'attribute', 'Demo name/en: Large print', 'Large print', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(11, 4, 1, 'de', 'attribute', 'Demo url/de: Grosser Aufdruck', 'Grosser_Aufdruck', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(12, 4, 1, 'en', 'attribute', 'Demo url/en: Large print', 'large_print', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(13, 4, 1, 'de', 'attribute', 'Demo url/de: Kleiner Aufdruck', 'Text_Aufdruck', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(14, 4, 1, 'en', 'attribute', 'Demo url/en: Small print', 'print_text', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(15, 15, 1, 'de', 'product', 'Demo name/de: Demoartikel', 'Demoartikel', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(16, 16, 1, 'de', 'product', 'Demo short/de: Dies ist die Kurzbeschreibung', 'Dies ist die Kurzbeschreibung des Demoartikels', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(17, 17, 1, 'de', 'product', 'Demo long/de: Hier folgt eine ausführliche Beschreibung', 'Hier folgt eine ausführliche Beschreibung des Artikels, die gerne etwas länger sein darf.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(18, 16, 1, 'en', 'product', 'Demo short/en: This is the short description', 'This is the short description of the demo article.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(19, 17, 1, 'en', 'product', 'Demo long/en: Add a detailed description', 'Add a detailed description of the demo article that may be a little bit longer.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(20, 1, 1, 'de', 'attribute', 'Demo name/de: Blau', 'Blau', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(21, 1, 1, 'en', 'attribute', 'Demo name/en: Blue', 'Blue', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(22, 4, 1, 'de', 'attribute', 'Demo url/de: Blau', 'Blau', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(23, 4, 1, 'en', 'attribute', 'Demo url/en: Blue', 'blue', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(24, 1, 1, NULL, 'attribute', 'Demo name: Width 32', '32', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(25, 4, 1, 'de', 'attribute', 'Demo url: Width 32', 'Weite_32', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(26, 4, 1, 'en', 'attribute', 'Demo url: Width 32', 'width_32', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(27, 1, 1, NULL, 'attribute', 'Demo name: Length 34', '34', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(28, 4, 1, 'de', 'attribute', 'Demo url: Length 34', 'Länge_34', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(29, 4, 1, 'en', 'attribute', 'Demo url: Length 34', 'length_34', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(30, 1, 1, 'de', 'attribute', 'Demo name/de: Beige', 'Beige', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(31, 1, 1, 'en', 'attribute', 'Demo name/en: Beige', 'Beige', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(32, 4, 1, 'de', 'attribute', 'Demo url/de: Beige', 'Beige', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(33, 4, 1, 'en', 'attribute', 'Demo url/en: Beige', 'beige', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(34, 1, 1, NULL, 'attribute', 'Demo name: Width 33', '33', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(35, 4, 1, 'de', 'attribute', 'Demo url: Width 33', 'Weite_33', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(36, 4, 1, 'en', 'attribute', 'Demo url: Width 33', 'width_33', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(37, 1, 1, NULL, 'attribute', 'Demo name: Length 36', '36', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(38, 4, 1, NULL, 'attribute', 'Demo url: Length 36', 'Länge_36', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(39, 4, 1, NULL, 'attribute', 'Demo url: Length 36', 'length_36', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(40, 1, 1, 'de', 'attribute', 'Demo name/de: Kleines Etikett', 'Kleines Etikett', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(41, 1, 1, 'en', 'attribute', 'Demo name/en: Small sticker', 'Small sticker', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(42, 4, 1, 'de', 'attribute', 'Demo url/de: Kleines Etikett', 'Kleines_Etikett', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(43, 4, 1, 'en', 'attribute', 'Demo url/en: Small sticker', 'small_sticker', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(44, 1, 1, 'de', 'attribute', 'Demo name/de: Grosses Etikett', 'Grosses Etikett', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(45, 1, 1, 'en', 'attribute', 'Demo name/en: Large sticker', 'Large sticker', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(46, 4, 1, 'de', 'attribute', 'Demo url/de: Grosses Etikett', 'Grosses_Etikett', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(47, 4, 1, 'en', 'attribute', 'Demo url/en: Large sticker', 'large_sticker', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(48, 15, 1, 'de', 'product', 'Demo name/de: Demoartikel mit Auswahl', 'Demoartikel mit Auswahl', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(49, 18, 1, 'de', 'product', 'Demo url/de: Demoartikel mit Auswahl', 'Demoartikel_mit_Auswahl', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(50, 16, 1, 'de', 'product', 'Demo short/de: Dies ist die Kurzbeschreibung', 'Dies ist die Kurzbeschreibung des Demoartikels mit Auswahl', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(51, 17, 1, 'de', 'product', 'Demo long/de: Hier folgt eine ausführliche Beschreibung', 'Hier folgt eine ausführliche Beschreibung des Artikels mit Auswahl, die gerne etwas länger sein darf.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(52, 16, 1, 'en', 'product', 'Demo short/en: This is the short description', 'This is the short description of the selection demo article.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(53, 17, 1, 'en', 'product', 'Demo long/en: Add a detailed description', 'Add a detailed description of the selection demo article that may be a little bit longer.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(54, 15, 1, 'de', 'product', 'Demo name/de: Demoartikel mit Bundle', 'Demoartikel mit Bundle', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(55, 18, 1, 'de', 'product', 'Demo url/de: Demoartikel mit Bundle', 'Demoartikel_mit_Bundle', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(56, 16, 1, 'de', 'product', 'Demo short/de: Dies ist die Kurzbeschreibung', 'Dies ist die Kurzbeschreibung des Demoartikels mit Bundle', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(57, 17, 1, 'de', 'product', 'Demo long/de: Hier folgt eine ausführliche Beschreibung', 'Hier folgt eine ausführliche Beschreibung des Artikels mit Bundle, die gerne etwas länger sein darf.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(58, 16, 1, 'en', 'product', 'Demo short/en: This is the short description', 'This is the short description of the bundle demo article.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(59, 17, 1, 'en', 'product', 'Demo long/en: Add a detailed description', 'Add a detailed description of the bundle demo article that may be a little bit longer.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(60, 15, 1, 'de', 'product', 'Demo name/de: Rabatt', 'Demorabatt', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(61, 7, 1, 'de', 'catalog', 'Demo name/de: Start', 'Start', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(62, 9, 1, 'de', 'catalog', 'Demo url/de: Start', 'Start', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(63, 5, 1, 'de', 'catalog', 'Demo short/de: Dies ist der Kurztext', 'Dies ist der Kurztext für die Hauptkategorie ihres neuen Webshops.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(64, 5, 1, 'en', 'catalog', 'Demo short/en: This is the short text', 'This is the short text for the main category of your new web shop.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(65, 6, 1, 'de', 'catalog', 'Demo long/de: Hier kann eine ausführliche Einleitung', 'Hier kann eine ausführliche Einleitung für ihre Hauptkategorie stehen.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(66, 6, 1, 'en', 'catalog', 'Demo long/en: Here you can add a long introduction', 'Here you can add a long introduction for you main category.', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', 'core:setup'),
(67, 22, 1, 'de', 'service', 'Demo short/de: Lieferung innerhalb von drei Tagen', 'Lieferung innerhalb von drei Tagen.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(68, 23, 1, 'de', 'service', 'Demo long/de: Die Lieferung erfolgt in der Regel', 'Die Lieferung erfolgt in der Regel innerhalb von drei Werktagen', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(69, 22, 1, 'en', 'service', 'Demo short/en: Delivery within three days', 'Delivery within three days', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(70, 23, 1, 'en', 'service', 'Demo long/en: The parcel is usually delivered', 'The parcel is usually delivered within three working days', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(71, 22, 1, 'de', 'service', 'Demo short/de: Lieferung am nächsten Tag', 'Lieferung am nächsten Tag.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(72, 23, 1, 'de', 'service', 'Demo long/de: Bei Bestellungen bis 16:00 Uhr', 'Bei Bestellungen bis 16:00 Uhr erfolgt die Lieferung am nächsten Werktag', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(73, 22, 1, 'en', 'service', 'Demo short/en: Delivery on the next day', 'Delivery on the next day', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(74, 23, 1, 'en', 'service', 'Demo long/en: If you order till 16 o''clock', 'If you order till 16 o''clock the delivery will be on the next working day', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(75, 22, 1, 'de', 'service', 'Demo short/de: Lieferung innerhalb von drei Tagen', 'Lieferung innerhalb von drei Tagen.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(76, 23, 1, 'de', 'service', 'Demo long/de: Die Lieferung erfolgt in der Regel', 'Die Lieferung erfolgt in der Regel innerhalb von drei Werktagen', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(77, 22, 1, 'en', 'service', 'Demo short/en: Delivery within three days', 'Delivery within three days', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(78, 23, 1, 'en', 'service', 'Demo long/en: The parcel is usually delivered', 'The parcel is usually delivered within three working days', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(79, 22, 1, 'de', 'service', 'Demo short/de: Lieferung innerhalb von drei Tagen', 'Lieferung innerhalb von drei Tagen.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(80, 23, 1, 'de', 'service', 'Demo long/de: Die Lieferung erfolgt in der Regel', 'Die Lieferung erfolgt in der Regel innerhalb von drei Werktagen', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(81, 22, 1, 'en', 'service', 'Demo short/en: Delivery within three days', 'Delivery within three days', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(82, 23, 1, 'en', 'service', 'Demo long/en: The parcel is usually delivered', 'The parcel is usually delivered within three working days', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(83, 21, 1, 'de', 'service', 'Demo name/de: Rechnung', 'Rechnung', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(84, 22, 1, 'de', 'service', 'Demo short/de: Zahlung per Rechnung', 'Zahlung per Rechnung innerhalb von 14 Tagen.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(85, 23, 1, 'de', 'service', 'Demo long/de: Bitte überweisen Sie den Betrag', 'Bitte überweisen Sie den Betrag innerhalb von 14 Tagen an BIC: XXX, IBAN: YYY', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(86, 22, 1, 'en', 'service', 'Demo short/en: Pay by invoice', 'Pay by invoice within 14 days', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(87, 23, 1, 'en', 'service', 'Demo long/en: Please transfer the money', 'Please transfer the money within 14 days to BIC: XXX, IBAN: YYY', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(88, 21, 1, 'de', 'service', 'Demo name/de: Lastschrift', 'Lastschrift', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(89, 22, 1, 'de', 'service', 'Demo short/de: Abbuchung vom angegebenen Konto', 'Abbuchung vom angegebenen Konto.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(90, 23, 1, 'de', 'service', 'Demo long/de: Der Betrag wird in den nächsten 1-3 Tagen', 'Der Betrag wird in den nächsten 1-3 Tagen von Ihrem Konto abgebucht', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(91, 22, 1, 'en', 'service', 'Demo short/en: Payment via your bank account', 'Payment via your bank account', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(92, 23, 1, 'en', 'service', 'Demo long/en: The money will be collected', 'The money will be collected from your bank account within 1-3 days', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(93, 22, 1, 'de', 'service', 'Demo short/de: Zahlung mit ihrem PayPal Konto', 'Zahlung mit PayPal', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(94, 23, 1, 'de', 'service', 'Demo long/de: Einfache Bezahlung mit Ihrem PayPal Konto', 'Einfache Bezahlung mit Ihrem PayPal Konto.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(95, 22, 1, 'en', 'service', 'Demo short/en: Payment via your PayPal account', 'Payment via PayPal', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(96, 23, 1, 'en', 'service', 'Demo long/en: Easy and secure payment with your PayPal account', 'Easy and secure payment with your PayPal account', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(97, 21, 1, 'de', 'service', 'Demo name/de: Nachnahme', 'Nachnahme', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(98, 22, 1, 'de', 'service', 'Demo short/de: Zahlung bei Lieferung', 'Zahlung bei Lieferung.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(99, 23, 1, 'de', 'service', 'Demo long/de: Die Bezahlung erfolgt bei Übergabe der Ware', 'Die Bezahlung erfolgt bei Übergabe der Ware', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(100, 22, 1, 'en', 'service', 'Demo short/en: Pay cash on delivery of the parcel', 'Pay cash on delivery of the parcel', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(101, 21, 1, 'de', 'service', 'Demo name/de: Vorauskasse', 'Vorauskasse', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(102, 22, 1, 'de', 'service', 'Demo short/de: Versand der Ware nach Zahlungseingang', 'Versand der Ware nach Zahlungseingang.', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(103, 23, 1, 'de', 'service', 'Demo long/de: Bitte überweisen Sie den Betrag', 'Bitte überweisen Sie den Betrag an BIC: XXX, IBAN: YYY', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(104, 22, 1, 'en', 'service', 'Demo short/en: The parcel will be shipped after the payment has been received', 'The parcel will be shipped after the payment has been received', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(105, 23, 1, 'en', 'service', 'Demo long/en: Please transfer the money', 'Please transfer the money to BIC: XXX, IBAN: YYY', 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(106, 15, 1, 'de', 'product', 'Demoartikel mit Auswahl', 'Demoartikel mit Auswahl', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(107, 16, 1, 'de', 'product', 'Dies ist die Kurzbeschreibung des Demoartikels mit Auswahl', 'Dies ist die Kurzbeschreibung des Demoartikels mit Auswahl', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(108, 17, 1, 'de', 'product', '<p>Hier folgt eine ausf&uuml;hrliche Beschreibung des Artikels mit Auswahl, die gerne etwas l&auml;nger sein darf.</p>', '<p>Hier folgt eine ausf&uuml;hrliche Beschreibung des Artikels mit Auswahl, die gerne etwas l&auml;nger sein darf.</p>', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(109, 18, 1, 'de', 'product', 'Demoartikel_mit_Auswahl', 'Demoartikel_mit_Auswahl', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(110, 16, 1, 'en', 'product', 'This is the short description of the selection demo article.', 'This is the short description of the selection demo article.', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(111, 17, 1, 'en', 'product', '<p>Add a detailed description of the selection demo article that may be a little bit longer.</p>', '<p>Add a detailed description of the selection demo article that may be a little bit longer.</p>', 1, '2017-01-10 16:02:55', '2017-01-10 16:02:55', 'admin@remise.be'),
(112, 15, 1, 'ar', 'product', 'Remise blond', 'Remise blond', 1, '2017-01-10 16:13:22', '2017-01-10 16:13:22', 'admin@remise.be'),
(113, 16, 1, 'ar', 'product', 'Blond bier', 'Blond bier', 1, '2017-01-10 16:13:22', '2017-01-10 16:13:22', 'admin@remise.be'),
(114, 15, 1, 'ar', 'product', 'Remise blond', 'Remise blond', 1, '2017-01-10 16:15:57', '2017-01-10 16:15:57', 'admin@remise.be'),
(115, 16, 1, 'ar', 'product', 'Blond bier', 'Blond bier', 1, '2017-01-10 16:15:57', '2017-01-10 16:15:57', 'admin@remise.be');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_text_list`
--

CREATE TABLE `mshop_text_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mshop_text_list_type`
--

CREATE TABLE `mshop_text_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_text_list_type`
--

INSERT INTO `mshop_text_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'attribute', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'catalog', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(4, 1, 'media', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(5, 1, 'price', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(6, 1, 'service', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(7, 1, 'text', 'default', 'Standard', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `mshop_text_type`
--

CREATE TABLE `mshop_text_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mshop_text_type`
--

INSERT INTO `mshop_text_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'attribute', 'name', 'Name', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(2, 1, 'attribute', 'short', 'Short description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(3, 1, 'attribute', 'long', 'Long description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(4, 1, 'attribute', 'url', 'URL segment', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(5, 1, 'catalog', 'short', 'Short description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(6, 1, 'catalog', 'long', 'Long description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(7, 1, 'catalog', 'name', 'Name', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(8, 1, 'catalog', 'quote', 'Quote', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(9, 1, 'catalog', 'url', 'URL segment', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(10, 1, 'catalog', 'meta-keyword', 'Meta keywords', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(11, 1, 'catalog', 'meta-description', 'Meta description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(12, 1, 'media', 'short', 'Short description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(13, 1, 'media', 'long', 'Long description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(14, 1, 'media', 'name', 'Name', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(15, 1, 'product', 'name', 'Name', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(16, 1, 'product', 'short', 'Short description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(17, 1, 'product', 'long', 'Long description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(18, 1, 'product', 'url', 'URL segment', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(19, 1, 'product', 'meta-keyword', 'Meta keywords', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(20, 1, 'product', 'meta-description', 'Meta description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(21, 1, 'service', 'name', 'Name', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(22, 1, 'service', 'short', 'Short description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', ''),
(23, 1, 'service', 'long', 'Long description', 1, '2016-12-08 08:34:40', '2016-12-08 08:34:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uitleg` text COLLATE utf8_unicode_ci NOT NULL,
  `padNaarFoto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `titel`, `uitleg`, `padNaarFoto`) VALUES
(16, 'Winter 2016', 'Het winterbier is uit', 'remiseblond2.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `paginas`
--

CREATE TABLE `paginas` (
  `id` int(10) unsigned NOT NULL,
  `paginaNaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `templates` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `master` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `paginas`
--

INSERT INTO `paginas` (`id`, `paginaNaam`, `templates`, `master`) VALUES
(5, 'brouwerij', 'hoofdBlok;bierTemplate;Geschiedenis', 'brouwerij'),
(6, 'grandcafe', 'hoofdBlok;grandCafeInfo;360view;Geschiedenis', 'grandcafe'),
(7, 'menu', 'menu', 'grandcafe'),
(10, 'media', 'gallerij', 'alle'),
(11, 'rondleiding', 'hoofdBlok;reservatie;contactGegevens', 'brouwerij'),
(15, 'reservatie', 'hoofdBlok;reservatie;contactGegevens', 'grandcafe'),
(1000, 'contact', 'contactGegevens;reistijden;map', 'alle');

-- --------------------------------------------------------

--
-- Table structure for table `personeel`
--

CREATE TABLE `personeel` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `naam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gebruikersnaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wachtwoord` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservaties`
--

CREATE TABLE `reservaties` (
  `id` int(10) unsigned NOT NULL,
  `datumtijd` datetime NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shift` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `soort` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `aantal_personen` int(11) NOT NULL,
  `voornaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `naam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefoon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bevestigd` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `bevestigingscode` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reservaties`
--

INSERT INTO `reservaties` (`id`, `datumtijd`, `email`, `shift`, `soort`, `aantal_personen`, `voornaam`, `naam`, `telefoon`, `nota`, `bevestigd`, `bevestigingscode`) VALUES
(2, '2016-12-06 11:00:00', 'bielenalexander@gmail.com', 'Lunch', 'Restaurant', 1, 'Alexander', 'Bielen', '0118246180', '', '1', '08edb3a5f7c71ba9d4f66113a57255f3'),
(3, '2016-12-18 15:00:00', 'bielenalexander@gmail.com', 'Lunch', 'Restaurant', 4, 'rudi', 'blabla', '4523424670', 'allergie voor bier', '1', 'f488ccbb0dcded340d13b23ad76ae243'),
(4, '2017-01-13 11:00:00', 'bielenalexander@gmail.com', 'Lunch', 'Restaurant', 1, 'alexander', 'bielen', '0000000000', '', '0', '6f0473643df1220df554717f9757ceaf'),
(5, '2017-01-13 14:30:00', 'bielenalexander@gmail.com', 'Lunch', 'Restaurant', 2, 'alexander', 'bielen', '0000000000', '', '0', '6fada957bbc962d2640eb25c6f797447'),
(6, '2017-01-13 16:00:00', 'bielenalexander@gmail.com', 'Lunch', 'Restaurant', 7, 'Alexander', 'Bielen', '0000000000', '', '1', '5a96621644ed0c5c649efa4e4f9ad9c6'),
(7, '2017-01-12 18:00:00', 'bielenalexander@gmail.com', 'Diner', 'Restaurant', 1, 'Alexander', 'bielen', '0000000000', '', '1', 'ad6eb26ca0f07a3adc8462fa68186bb4');

-- --------------------------------------------------------

--
-- Table structure for table `sluitingsdag`
--

CREATE TABLE `sluitingsdag` (
  `id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `titel` varchar(255) NOT NULL,
  `beschrijving` varchar(255) NOT NULL,
  `actief` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sluitingsdag`
--

INSERT INTO `sluitingsdag` (`id`, `datum`, `titel`, `beschrijving`, `actief`) VALUES
(1, '2016-12-14', 'Test', 'Test', 1);

-- --------------------------------------------------------

--
-- Table structure for table `templates_inhoud`
--

CREATE TABLE `templates_inhoud` (
  `id` int(10) unsigned NOT NULL,
  `templateNaam` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `templateKey` text COLLATE utf8_unicode_ci NOT NULL,
  `paginaNaam` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `templates_inhoud`
--

INSERT INTO `templates_inhoud` (`id`, `templateNaam`, `templateKey`, `paginaNaam`) VALUES
(5, 'hoofdBlok', '1', 'brouwerij'),
(6, 'Geschiedenis', '2', 'brouwerij'),
(9, 'bierTemplate', '3-4-5', 'brouwerij'),
(10, 'grandCafeInfo', '7', 'grandcafe'),
(12, 'hoofdBlok', '6', 'grandcafe'),
(13, 'Geschiedenis', '8', 'grandcafe'),
(14, 'hoofdBlok', '9', 'rondleiding'),
(15, 'hoofdBlok', '10', 'reservatie');

-- --------------------------------------------------------

--
-- Table structure for table `template_key_inhoud`
--

CREATE TABLE `template_key_inhoud` (
  `templateKey` int(11) NOT NULL,
  `inhoud` text NOT NULL,
  `template` text NOT NULL,
  `pagina` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_key_inhoud`
--

INSERT INTO `template_key_inhoud` (`templateKey`, `inhoud`, `template`, `pagina`) VALUES
(1, 'HoofdTitel§<h2 class="heading">Brouwerij Remise 56</h2>@HoofdOmschrijving§<p class="brouwerijSubHeading">Onze bieren worden getapt uit de grote schenktanks boven de toog. <br>Recht uit de brouwerij, supervers. </p>', 'hoofdBlok', 'brouwerij'),
(2, 'GeschiedenisTitel§<h2 class="heading">Geschiedenis</h2>@GeschiedenisOmschrijving§<p>\n                        Dit authentieke pand werd gebouwd in 1907 om dienst te doen als stelplaats voor de locomotieven en de passagiersrijtuigen van de tramlijn Diest - Koersel.\n                        Aanvankelijk werd hier de stoomtram gestald (jawel, stoomtram), daarna kwamen de gemotoriseerde rijtuigen.\n                        In 1954 werd de tramlijn vervangen door een busdienst, en dus werden hier lijnbussen gestald.\n                        <br>\n                        <br>\n                        Vanaf 2001 stond het gebouw leeg… Enkele jaren geleden leek dit gebouw nog bestemd voor de sloophamer.\n                        Maar wij gaven het een grondige facelift, met respect voor de eigenheid en het verleden.\n                        <br>\n                        <br>\n                        En vanaf juni 2016 is hier dus een kleine brouwerij en een grand café gevestigd…..\n                        We doopten de brouwerij “Remise 56”.\n                        “Remise” is de internationaal gebruikte vakterm voor een stelplaats, 56 is ons …huisnummer.\n                    </p>', 'Geschiedenis', 'brouwerij'),
(3, 'Bier1Foto§<img src="/images/remiseblond2.jpg" style="width: 400px; height: 500px" alt="RemiseBlond" class="img-circle"/>@Bier1Titel§<h1 class="brouwerijSubTitles">REMISE TRIPEL</h1>@Bier1Omschrijving§<p class="sub-heading">Voor onze tripel gebruiken we de beste bleke mouten en bleke kandijsuikers. Hij is met zijn 8.5 % alcohol een ‘stevige blonde’.\n                        <br>\n                        <br>\n                        Een fruitige neus, en een mooie zachte bitterheid, een stroblonde kleur, en een klein toetsje hoparoma,….\n                        Ongefilterd en ongepasteuriseerd.\n                        <br>\n                        <br>\n\n                        Echt een aanrader voor wie houdt van een mooie tripel….\n                    </p>', 'bierTemplate', 'brouwerij'),
(4, 'Bier2Foto§<img src="/images/remiseDonker.jpg" style="width: 400px; height: 500px" alt="RemiseBlond" class="img-circle"/>@Bier2Titel§<h2 class="brouwerijSubTitles">REMISE DUBBEL</h2>@Bier2Omschrijving§<p class="sub-heading">Voor het brouwen van deze volmondige diepdonkere dubbel gebruiken we speciaal geselecteerde donkere moutsoorten en donkere kandijsuikers.\n                        <br />\n                        <br />\n                        Dit bier van hoge gisting heeft een zachte typerende karameltoets, is volmondig en heeft een diepdonkere warme kleur.\n                        <br />\n                        <br />\n                        Ongefilterd en ongepasteuriseerd.\n                        <br />\n                        <br />\n                        Alcoholpercentage: 7%\n                    </p>', 'bierTemplate', 'brouwerij'),
(5, 'Bier3Foto§<img src="/images/remiseblond2.jpg" style="width: 400px; height: 500px" alt="RemiseBlond" class="img-circle"/>@Bier3Titel§<h2 class="brouwerijSubTitles">“56” SUPERPILS</h2>@Bier3Omschrijving§<p class="sub-heading">Een pils zoals een pils bedoeld is: fris en lichtjes fruitig, supervers, een mooie bitterheid.\n                        <br />\n                        Een bier voor de kleine en grote dorst. Kortom, een superpils.\n                        <br />\n                        <br />\n\n                        UNIEK: In onze brouwerij serveren wij u onze pils ongefilterd; daardoor is hij nog heel lichtjes troebel.\n                        <br />\n                        <br />\n                        De “56” Superpils is ongepasteuriseerd en heeft een alcoholpercentage van 5.6%.\n                        <br />\n                        <br />\n                    </p>', 'bierTemplate', 'brouwerij'),
(6, 'HoofdTitel§<h2 class="heading">Grand Café Remise 56</h2>@HoofdOmschrijving§<p class="brouwerijSubHeading">Voor de grote en kleine honger: we verwennen uw smaakpapillen met onze<br />‘Vlaamse klassiekers’, verrassende foodpairing suggesties, <br />heerlijke internationale tapas hapjes, …. </p>', 'hoofdBlok', 'grandcafe'),
(7, 'Foto§<img src="/images/grandCafe1.jpg" style="width: 102%; height: 102%" alt="GrandCafe" class="img-rounded" />@Omschrijving§<p class="sub-heading">                         We zijn dagelijks open vanaf 10 uur. <br/><br />                         Ben je een ervaren bierkenner, een prille lokale genieter, een vaste klant                         of een toevallige passant?<br /><br />                         Iedereen is hier elke dag welkom om in het grand café onze bieren te degusteren, rechtstreeks getapt <br />                         uit de grote schenktanks boven onze toog.                      </p>', 'grandCafeInfo', 'grandcafe'),
(8, 'GeschiedenisTitel§<h2 class="heading">Geschiedenis</h2>@GeschiedenisOmschrijving§<p>\r\n                            Dit authentieke pand werd gebouwd in 1907 om dienst te doen als stelplaats voor de locomotieven en de passagiersrijtuigen van de tramlijn Diest - Koersel.\r\n                            Aanvankelijk werd hier de stoomtram gestald (jawel, stoomtram), daarna kwamen de gemotoriseerde rijtuigen.\r\n                            In 1954 werd de tramlijn vervangen door een busdienst, en dus werden hier lijnbussen gestald.\r\n                            <br />\r\n                            <br />\r\n                            Vanaf 2001 stond het gebouw leeg… Enkele jaren geleden leek dit gebouw nog bestemd voor de sloophamer.\r\n                            Maar wij gaven het een grondige facelift, met respect voor de eigenheid en het verleden.\r\n                            <br />\r\n                            <br />\r\n                            En vanaf juni 2016 is hier dus een kleine brouwerij en een grand café gevestigd…..\r\n                            We doopten de brouwerij “Remise 56”.\r\n                            “Remise” is de internationaal gebruikte vakterm voor een stelplaats, 56 is ons …huisnummer.\r\n                        </p>', 'Geschiedenis', 'grandcafe'),
(9, 'HoofdTitel§<h2 class="heading">Reservatie</h2>@HoofdOmschrijving§<p>Vanaf 2016 is ons restaurant enkel geopend voor de lunch op vrijdagmiddag en voor diner op vrijdag en zaterdag.\n                        Uitzonderingen hierop zijn :11,12 en 13 oktober zijn wij uitzonderlijk geopend voor het diner en dit voor een drie, vier of vijfgangenmenu vanaf 40 euro*Donderdag 10 november (wij serveren het 6g maandmenu puur natuur)\n                    </p>', 'hoofdBlok', 'rondleiding'),
(10, 'HoofdTitel§<h2 class="heading">Reservatie</h2>@HoofdOmschrijving§<p>Vanaf 2016 is ons restaurant enkel geopend voor de lunch op vrijdagmiddag en voor diner op vrijdag en zaterdag.\r\n                            Uitzonderingen hierop zijn :11,12 en 13 oktober zijn wij uitzonderlijk geopend voor het diner en dit voor een drie, vier of vijfgangenmenu vanaf 40 euro*Donderdag 10 november (wij serveren het 6g maandmenu puur natuur)\r\n                        </p>', 'hoofdBlok', 'reservatie');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salutation` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vatid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryid` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telefax` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `vdate` date DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `label`, `name`, `remember_token`, `salutation`, `company`, `vatid`, `title`, `firstname`, `lastname`, `address1`, `address2`, `address3`, `postal`, `city`, `state`, `langid`, `countryid`, `telephone`, `telefax`, `website`, `email`, `password`, `birthday`, `vdate`, `status`, `updated_at`, `created_at`, `editor`) VALUES
(1, 'Test user', 'demo-test', NULL, 'mr', 'Test company', 'DE999999999', '', 'Test', 'User', 'Test street', '1', '', '10000', 'Test city', 'CA', 'en', 'US', '', '', '', 'demo@example.com', '$2y$10$T91r.OD8tW3vYBo3KYdyNOZEM2ZXEGOjkWcPfnsB4BFkq0cTCaPx2', NULL, NULL, 1, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup'),
(2, 'test@test.be', 'test@test.be', 'DILx7Yq3vqWygjJUEAha2qXcfjJRwa6zF01E9Hp07jZCVhXhcPtAbHBku01y', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, '', '', '', 'test@test.be', '$2y$10$NpY8R8pa2eNIdBlzIj89ROT.bsu9YZfH2Q8cmPVG1AUECG9lfoOim', NULL, NULL, 1, '2016-12-20 11:32:27', '2016-12-18 17:40:16', 'aimeos:account'),
(3, 'admin@remise.be', 'admin@remise.be', '0E1gKksxONLga9arZ51o14Fe7x6UzBD4np5OqcyBKQ3sLdyhUZCGV9tp73Zb', 'mr', '', '', '', 'Admin', 'Admin', 'Admin', '', '', '0000', 'Admin', '', 'en', 'BE', '', '', '', 'admin@remise.be', '$2y$10$He2zC0Ej0P37otC9mUYoPOs67/LeIXOkt/u5RK.lM66fue3srQ9ca', NULL, NULL, 1, '2017-01-12 14:04:56', '2017-01-10 15:26:58', 'admin@remise.be'),
(4, NULL, 'alexander', 'fUgpeslrSs35FfE1iPYh99RjIBj1yzcDE1wDGTsCYrrueXofKOPmvtZshP1k', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ik@user.com', '$2y$10$pFlDFcBzjpnvXaoNYoPbNuTzTjoaeRRG/wfshLxFXqIvEwtwmdf3i', NULL, NULL, NULL, '2017-01-12 12:06:09', '2017-01-11 20:10:26', NULL),
(5, NULL, 'Alessio', 'qqlRyokmBpdeKo56yOerTtit5x4XCG3N0eHVyMOtiyRZc7OE8KWkcSZuszq5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'a@alessio.com', '$2y$10$YX4tMU6mEdMmc67lKFfRAOK8CduQlhmDeBW7Ni1VcG6675uWO07E6', NULL, NULL, NULL, '2017-01-12 13:20:44', '2017-01-12 12:20:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_address`
--

CREATE TABLE `users_address` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `vatid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `salutation` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postal` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `langid` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `countryid` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL,
  `pos` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_address`
--

INSERT INTO `users_address` (`id`, `siteid`, `parentid`, `company`, `vatid`, `salutation`, `title`, `firstname`, `lastname`, `address1`, `address2`, `address3`, `postal`, `city`, `state`, `langid`, `countryid`, `telephone`, `email`, `telefax`, `website`, `flag`, `pos`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 1, 'Demo company', 'DE999999999', 'mrs', '', 'Test', 'User', 'Demo street', '100', '', '12345', 'Demo city', 'NY', 'en', 'US', '', 'demo@example.com', '', '', 0, 0, '2016-12-08 08:34:41', '2016-12-08 08:34:41', 'core:setup');

-- --------------------------------------------------------

--
-- Table structure for table `users_list`
--

CREATE TABLE `users_list` (
  `id` int(11) NOT NULL,
  `typeid` int(11) NOT NULL,
  `parentid` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `refid` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `config` text COLLATE utf8_unicode_ci NOT NULL,
  `pos` int(11) NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_list`
--

INSERT INTO `users_list` (`id`, `typeid`, `parentid`, `siteid`, `domain`, `refid`, `start`, `end`, `config`, `pos`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 3, 2, 1, 'customer/group', '1', NULL, NULL, '[]', 0, 1, '2016-12-18 17:40:16', '2016-12-18 17:40:16', 'aimeos:account'),
(2, 3, 3, 1, 'customer/group', '1', NULL, NULL, '[]', 0, 1, '2017-01-10 15:26:58', '2017-01-10 15:26:58', 'aimeos:account');

-- --------------------------------------------------------

--
-- Table structure for table `users_list_type`
--

CREATE TABLE `users_list_type` (
  `id` int(11) NOT NULL,
  `siteid` int(11) NOT NULL,
  `domain` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL,
  `mtime` datetime NOT NULL,
  `ctime` datetime NOT NULL,
  `editor` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users_list_type`
--

INSERT INTO `users_list_type` (`id`, `siteid`, `domain`, `code`, `label`, `status`, `mtime`, `ctime`, `editor`) VALUES
(1, 1, 'customer', 'account', 'Account', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(2, 1, 'customer', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(3, 1, 'customer/group', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(4, 1, 'order', 'download', 'Download', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(5, 1, 'product', 'default', 'Standard', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(6, 1, 'product', 'favorite', 'Favorite', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', ''),
(7, 1, 'product', 'watch', 'Watch list', 1, '2016-12-08 08:34:39', '2016-12-08 08:34:39', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `madmin_cache`
--
ALTER TABLE `madmin_cache`
  ADD UNIQUE KEY `unq_macac_id_siteid` (`id`,`siteid`),
  ADD KEY `idx_majob_expire` (`expire`);

--
-- Indexes for table `madmin_cache_tag`
--
ALTER TABLE `madmin_cache_tag`
  ADD UNIQUE KEY `unq_macacta_tid_tsid_tname` (`tid`,`tsiteid`,`tname`),
  ADD KEY `fk_macac_tid_tsid` (`tid`,`tsiteid`);

--
-- Indexes for table `madmin_job`
--
ALTER TABLE `madmin_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_majob_sid_ctime` (`siteid`,`ctime`),
  ADD KEY `idx_majob_sid_status` (`siteid`,`status`);

--
-- Indexes for table `madmin_log`
--
ALTER TABLE `madmin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_malog_sid_time_facility_prio` (`siteid`,`timestamp`,`facility`,`priority`);

--
-- Indexes for table `madmin_queue`
--
ALTER TABLE `madmin_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_maque_queue_cname_rtime` (`queue`,`cname`,`rtime`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `menuitem`
--
ALTER TABLE `menuitem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuItem_categorie`
--
ALTER TABLE `menuItem_categorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menuItem_subcategorie`
--
ALTER TABLE `menuItem_subcategorie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mshop_attribute`
--
ALTER TABLE `mshop_attribute`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattr_sid_dom_cod_tid` (`siteid`,`domain`,`code`,`typeid`),
  ADD KEY `idx_msatt_sid_dom_label` (`siteid`,`domain`,`label`),
  ADD KEY `idx_msatt_sid_dom_pos` (`siteid`,`domain`,`pos`),
  ADD KEY `fk_msatt_typeid` (`typeid`);

--
-- Indexes for table `mshop_attribute_list`
--
ALTER TABLE `mshop_attribute_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_msattli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_msattli_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_msattli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_msattli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_msattli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_msattli_typeid` (`typeid`),
  ADD KEY `fk_msattli_pid` (`parentid`);

--
-- Indexes for table `mshop_attribute_list_type`
--
ALTER TABLE `mshop_attribute_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msattlity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msattlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msattlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_attribute_type`
--
ALTER TABLE `mshop_attribute_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msattty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msattty_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msattty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msattty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_catalog`
--
ALTER TABLE `mshop_catalog`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscat_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mscat_sid_nlt_nrt_lvl_pid` (`siteid`,`nleft`,`nright`,`level`,`parentid`),
  ADD KEY `idx_mscat_sid_status` (`siteid`,`status`);

--
-- Indexes for table `mshop_catalog_list`
--
ALTER TABLE `mshop_catalog_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscatli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_mscatli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_mscatli_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_mscatli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_mscatli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_mscatli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_mscatli_typeid` (`typeid`),
  ADD KEY `fk_mscatli_pid` (`parentid`);

--
-- Indexes for table `mshop_catalog_list_type`
--
ALTER TABLE `mshop_catalog_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscatlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mscatlity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mscatlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mscatlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_coupon`
--
ALTER TABLE `mshop_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mscou_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_mscou_sid_provider` (`siteid`,`provider`),
  ADD KEY `idx_mscou_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mscou_sid_start` (`siteid`,`start`),
  ADD KEY `idx_mscou_sid_end` (`siteid`,`end`);

--
-- Indexes for table `mshop_coupon_code`
--
ALTER TABLE `mshop_coupon_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscouco_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mscouco_sid_ct_start_end` (`siteid`,`count`,`start`,`end`),
  ADD KEY `idx_mscouco_sid_start` (`siteid`,`start`),
  ADD KEY `idx_mscouco_sid_end` (`siteid`,`end`),
  ADD KEY `fk_mscouco_pid` (`parentid`);

--
-- Indexes for table `mshop_customer`
--
ALTER TABLE `mshop_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscus_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mscus_sid_st_ln_fn` (`siteid`,`status`,`lastname`,`firstname`),
  ADD KEY `idx_mscus_sid_st_ad1_ad2` (`siteid`,`status`,`address1`,`address2`),
  ADD KEY `idx_mscus_sid_st_post_ci` (`siteid`,`status`,`postal`,`city`),
  ADD KEY `idx_mscus_sid_st_city` (`siteid`,`status`,`city`),
  ADD KEY `idx_mscus_sid_langid` (`siteid`,`langid`),
  ADD KEY `idx_mscus_sid_email` (`siteid`,`email`);

--
-- Indexes for table `mshop_customer_address`
--
ALTER TABLE `mshop_customer_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mscusad_langid` (`langid`),
  ADD KEY `idx_mscusad_sid_ln_fn` (`siteid`,`lastname`,`firstname`),
  ADD KEY `idx_mscusad_sid_ad1_ad2` (`siteid`,`address1`,`address2`),
  ADD KEY `idx_mscusad_sid_post_ci` (`siteid`,`postal`,`city`),
  ADD KEY `idx_mscusad_sid_city` (`siteid`,`city`),
  ADD KEY `idx_mscusad_sid_email` (`siteid`,`email`),
  ADD KEY `fk_mscusad_pid` (`parentid`);

--
-- Indexes for table `mshop_customer_group`
--
ALTER TABLE `mshop_customer_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscusgr_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mscusgr_sid_label` (`siteid`,`label`);

--
-- Indexes for table `mshop_customer_list`
--
ALTER TABLE `mshop_customer_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscusli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_mscusli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_mscusli_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_mscusli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_mscusli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_mscusli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_mscusli_pid` (`parentid`),
  ADD KEY `fk_mscusli_typeid` (`typeid`);

--
-- Indexes for table `mshop_customer_list_type`
--
ALTER TABLE `mshop_customer_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mscuslity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mscuslity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mscuslity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mscuslity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_index_attribute`
--
ALTER TABLE `mshop_index_attribute`
  ADD UNIQUE KEY `unq_msindat_p_s_aid_lt` (`prodid`,`siteid`,`attrid`,`listtype`),
  ADD KEY `idx_msindat_p_s_lt_t_c` (`prodid`,`siteid`,`listtype`,`type`,`code`),
  ADD KEY `idx_msindat_s_at_lt` (`siteid`,`attrid`,`listtype`);

--
-- Indexes for table `mshop_index_catalog`
--
ALTER TABLE `mshop_index_catalog`
  ADD UNIQUE KEY `unq_msindca_p_s_cid_lt_po` (`prodid`,`siteid`,`catid`,`listtype`,`pos`),
  ADD KEY `idx_msindca_s_ca_lt_po` (`siteid`,`catid`,`listtype`,`pos`);

--
-- Indexes for table `mshop_index_price`
--
ALTER TABLE `mshop_index_price`
  ADD UNIQUE KEY `unq_msindpr_p_s_prid_lt` (`prodid`,`siteid`,`priceid`,`listtype`),
  ADD KEY `idx_msindpr_s_lt_cu_ty_va` (`siteid`,`listtype`,`currencyid`,`type`,`value`),
  ADD KEY `idx_msindpr_p_s_lt_cu_ty_va` (`prodid`,`siteid`,`listtype`,`currencyid`,`type`,`value`);

--
-- Indexes for table `mshop_index_text`
--
ALTER TABLE `mshop_index_text`
  ADD UNIQUE KEY `unq_msindte_p_s_tid_lt` (`prodid`,`siteid`,`textid`,`listtype`),
  ADD KEY `idx_msindte_p_s_lt_la_ty_do_va` (`prodid`,`siteid`,`listtype`,`langid`,`type`,`domain`,`value`(16)),
  ADD FULLTEXT KEY `idx_msindte_value` (`value`);

--
-- Indexes for table `mshop_locale`
--
ALTER TABLE `mshop_locale`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msloc_sid_lang_curr` (`siteid`,`langid`,`currencyid`),
  ADD KEY `idx_msloc_sid_curid` (`siteid`,`currencyid`),
  ADD KEY `idx_msloc_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msloc_sid_pos` (`siteid`,`pos`),
  ADD KEY `fk_mslocsi_id` (`siteid`),
  ADD KEY `fk_mslocla_id` (`siteid`),
  ADD KEY `fk_msloccu_id` (`siteid`),
  ADD KEY `IDX_628DFA7F2271845` (`langid`),
  ADD KEY `IDX_628DFA7F4842F28` (`currencyid`);

--
-- Indexes for table `mshop_locale_currency`
--
ALTER TABLE `mshop_locale_currency`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msloccu_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mslocla_label` (`siteid`,`label`),
  ADD KEY `fk_msloccu_siteid` (`siteid`);

--
-- Indexes for table `mshop_locale_language`
--
ALTER TABLE `mshop_locale_language`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mslocla_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mslocla_sid_label` (`siteid`,`label`),
  ADD KEY `fk_mslocla_siteid` (`siteid`);

--
-- Indexes for table `mshop_locale_site`
--
ALTER TABLE `mshop_locale_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mslocsi_code` (`code`),
  ADD KEY `idx_mslocsi_nlt_nrt_lvl_pid` (`nleft`,`nright`,`level`,`parentid`),
  ADD KEY `idx_mslocsi_level_status` (`level`,`status`);

--
-- Indexes for table `mshop_media`
--
ALTER TABLE `mshop_media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msmed_sid_dom_langid` (`siteid`,`domain`,`langid`),
  ADD KEY `idx_msmed_sid_dom_label` (`siteid`,`domain`,`label`),
  ADD KEY `idx_msmed_sid_dom_mime` (`siteid`,`domain`,`mimetype`),
  ADD KEY `idx_msmed_sid_dom_link` (`siteid`,`domain`,`link`),
  ADD KEY `fk_msmed_typeid` (`typeid`);

--
-- Indexes for table `mshop_media_list`
--
ALTER TABLE `mshop_media_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msmedli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_msmedli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_msmedli_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_msmedli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_msmedli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_msmedli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_msmedli_typeid` (`typeid`),
  ADD KEY `fk_msmedli_pid` (`parentid`);

--
-- Indexes for table `mshop_media_list_type`
--
ALTER TABLE `mshop_media_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msmedlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msmedlity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msmedlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msmedlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_media_type`
--
ALTER TABLE `mshop_media_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msmedty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msmedty_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msmedty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msmedty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_order`
--
ALTER TABLE `mshop_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msord_sid_type` (`siteid`,`type`),
  ADD KEY `idx_msord_sid_mtime_pstat` (`siteid`,`mtime`,`statuspayment`),
  ADD KEY `idx_msord_sid_mtime_dstat` (`siteid`,`mtime`,`statusdelivery`),
  ADD KEY `idx_msord_sid_dstatus` (`siteid`,`statusdelivery`),
  ADD KEY `idx_msord_sid_ddate` (`siteid`,`datedelivery`),
  ADD KEY `idx_msord_sid_pdate` (`siteid`,`datepayment`),
  ADD KEY `idx_msord_sid_editor` (`siteid`,`editor`),
  ADD KEY `idx_msord_sid_ctime` (`siteid`,`ctime`),
  ADD KEY `idx_msord_sid_cdate` (`siteid`,`cdate`),
  ADD KEY `idx_msord_sid_cmonth` (`siteid`,`cmonth`),
  ADD KEY `idx_msord_sid_cweek` (`siteid`,`cweek`),
  ADD KEY `idx_msord_sid_chour` (`siteid`,`chour`),
  ADD KEY `fk_msord_baseid` (`baseid`);

--
-- Indexes for table `mshop_order_base`
--
ALTER TABLE `mshop_order_base`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msordba_scode_custid` (`sitecode`,`customerid`),
  ADD KEY `idx_msordba_sid_custid` (`siteid`,`customerid`),
  ADD KEY `idx_msordba_sid_ctime` (`siteid`,`ctime`);

--
-- Indexes for table `mshop_order_base_address`
--
ALTER TABLE `mshop_order_base_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msordbaad_bid_type` (`baseid`,`type`),
  ADD KEY `idx_msordbaad_sid_bid_typ` (`siteid`,`baseid`,`type`),
  ADD KEY `idx_msordbaad_bid_sid_lname` (`baseid`,`siteid`,`lastname`),
  ADD KEY `idx_msordbaad_bid_sid_addr1` (`baseid`,`siteid`,`address1`),
  ADD KEY `idx_msordbaad_bid_sid_postal` (`baseid`,`siteid`,`postal`),
  ADD KEY `idx_msordbaad_bid_sid_city` (`baseid`,`siteid`,`city`),
  ADD KEY `idx_msordbaad_bid_sid_email` (`baseid`,`siteid`,`email`),
  ADD KEY `fk_msordbaad_baseid` (`baseid`);

--
-- Indexes for table `mshop_order_base_coupon`
--
ALTER TABLE `mshop_order_base_coupon`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msordbaco_sid_bid_code` (`siteid`,`baseid`,`code`),
  ADD KEY `fk_msordbaco_ordprodid` (`ordprodid`),
  ADD KEY `fk_msordbaco_baseid` (`baseid`);

--
-- Indexes for table `mshop_order_base_product`
--
ALTER TABLE `mshop_order_base_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msordbapr_bid_pos` (`baseid`,`pos`),
  ADD KEY `idx_msordbapr_sid_bid_pcd` (`siteid`,`baseid`,`prodcode`),
  ADD KEY `idx_msordbapr_sid_ct_pid_bid` (`siteid`,`ctime`,`prodid`,`baseid`),
  ADD KEY `fk_msordbapr_baseid` (`baseid`);

--
-- Indexes for table `mshop_order_base_product_attr`
--
ALTER TABLE `mshop_order_base_product_attr`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msordbaprat_opid_type_code` (`ordprodid`,`type`,`code`),
  ADD KEY `fk_msordbaprat_ordprodid` (`ordprodid`),
  ADD KEY `idx_msordbaprat_si_cd_va` (`siteid`,`code`,`value`(16));

--
-- Indexes for table `mshop_order_base_service`
--
ALTER TABLE `mshop_order_base_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msordbase_bid_type_code` (`baseid`,`type`,`code`),
  ADD KEY `idx_msordbase_sid_bid_cd_typ` (`siteid`,`baseid`,`code`,`type`),
  ADD KEY `idx_msordbase_sid_code_type` (`siteid`,`code`,`type`),
  ADD KEY `fk_msordbase_baseid` (`baseid`);

--
-- Indexes for table `mshop_order_base_service_attr`
--
ALTER TABLE `mshop_order_base_service_attr`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msordbaseat_osid_type_code` (`ordservid`,`type`,`code`),
  ADD KEY `fk_msordbaseat_ordservid` (`ordservid`),
  ADD KEY `idx_msordbaseat_si_cd_va` (`siteid`,`code`,`value`(16));

--
-- Indexes for table `mshop_order_status`
--
ALTER TABLE `mshop_order_status`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_msordstatus_val_sid` (`siteid`,`parentid`,`type`,`value`),
  ADD KEY `fk_msordst_pid` (`parentid`);

--
-- Indexes for table `mshop_plugin`
--
ALTER TABLE `mshop_plugin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msplu_sid_tid_prov` (`siteid`,`typeid`,`provider`),
  ADD KEY `idx_msplu_sid_prov` (`siteid`,`provider`),
  ADD KEY `idx_msplu_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msplu_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msplu_sid_pos` (`siteid`,`pos`),
  ADD KEY `fk_msplu_typeid` (`typeid`);

--
-- Indexes for table `mshop_plugin_type`
--
ALTER TABLE `mshop_plugin_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mspluty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mspluty_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mspluty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mspluty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_price`
--
ALTER TABLE `mshop_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mspri_sid_dom_currid` (`siteid`,`domain`,`currencyid`),
  ADD KEY `idx_mspri_sid_dom_quantity` (`siteid`,`domain`,`quantity`),
  ADD KEY `idx_mspri_sid_dom_value` (`siteid`,`domain`,`value`),
  ADD KEY `idx_mspri_sid_dom_costs` (`siteid`,`domain`,`costs`),
  ADD KEY `idx_mspri_sid_dom_rebate` (`siteid`,`domain`,`rebate`),
  ADD KEY `idx_mspri_sid_dom_taxrate` (`siteid`,`domain`,`taxrate`),
  ADD KEY `fk_mspri_typeid` (`typeid`);

--
-- Indexes for table `mshop_price_list`
--
ALTER TABLE `mshop_price_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprili_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_msprili_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_msprili_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_msprili_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_msprili_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_msprili_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_msprili_pid` (`parentid`),
  ADD KEY `fk_msprili_typeid` (`typeid`);

--
-- Indexes for table `mshop_price_list_type`
--
ALTER TABLE `mshop_price_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprility_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msprility_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msprility_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msprility_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_price_type`
--
ALTER TABLE `mshop_price_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msprity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msprity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msprity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_product`
--
ALTER TABLE `mshop_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mspro_siteid_code` (`siteid`,`code`),
  ADD KEY `idx_mspro_id_sid_stat_st_end` (`id`,`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_mspro_sid_stat_st_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_mspro_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mspro_sid_start` (`siteid`,`start`),
  ADD KEY `idx_mspro_sid_end` (`siteid`,`end`),
  ADD KEY `fk_mspro_typeid` (`typeid`);

--
-- Indexes for table `mshop_product_list`
--
ALTER TABLE `mshop_product_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msproli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_msproli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_msproli_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_msproli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_msproli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_msproli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_msproli_typeid` (`typeid`),
  ADD KEY `fk_msproli_pid` (`parentid`);

--
-- Indexes for table `mshop_product_list_type`
--
ALTER TABLE `mshop_product_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprolity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msprolity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msprolity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msprolity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_product_property`
--
ALTER TABLE `mshop_product_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mspropr_sid_tid_lid_value` (`parentid`,`siteid`,`typeid`,`langid`,`value`),
  ADD KEY `idx_mspropr_sid_langid` (`siteid`,`langid`),
  ADD KEY `idx_mspropr_sid_value` (`siteid`,`value`),
  ADD KEY `fk_mspropr_typeid` (`typeid`),
  ADD KEY `fk_mspropr_pid` (`parentid`);

--
-- Indexes for table `mshop_product_property_type`
--
ALTER TABLE `mshop_product_property_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msproprty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msproprty_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msproprty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msproprty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_product_stock`
--
ALTER TABLE `mshop_product_stock`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprost_sid_pid_wid` (`siteid`,`parentid`,`warehouseid`),
  ADD KEY `idx_msprost_sid_stocklevel` (`siteid`,`stocklevel`),
  ADD KEY `idx_msprost_sid_backdate` (`siteid`,`backdate`),
  ADD KEY `fk_msprost_whid` (`warehouseid`),
  ADD KEY `fk_msprost_pid` (`parentid`);

--
-- Indexes for table `mshop_product_stock_warehouse`
--
ALTER TABLE `mshop_product_stock_warehouse`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msprostwa_sid_code` (`siteid`,`code`),
  ADD KEY `idx_msprostwa_sid_label` (`siteid`,`label`);

--
-- Indexes for table `mshop_product_type`
--
ALTER TABLE `mshop_product_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msproty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msproty_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msproty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msproty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_service`
--
ALTER TABLE `mshop_service`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msser_siteid_typeid_code` (`siteid`,`typeid`,`code`),
  ADD KEY `idx_msser_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msser_sid_prov` (`siteid`,`provider`),
  ADD KEY `idx_msser_sid_code` (`siteid`,`code`),
  ADD KEY `idx_msser_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msser_sid_pos` (`siteid`,`pos`),
  ADD KEY `fk_msser_typeid` (`typeid`);

--
-- Indexes for table `mshop_service_list`
--
ALTER TABLE `mshop_service_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msserli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_msserli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_msserli_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_msserli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_msserli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_msserli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_msserli_typeid` (`typeid`),
  ADD KEY `fk_msserli_pid` (`parentid`);

--
-- Indexes for table `mshop_service_list_type`
--
ALTER TABLE `mshop_service_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msserlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msserlity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msserlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msserlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_service_type`
--
ALTER TABLE `mshop_service_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_msserty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_msserty_sid_status` (`siteid`,`status`),
  ADD KEY `idx_msserty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_msserty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_supplier`
--
ALTER TABLE `mshop_supplier`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mssup_sid_code` (`siteid`,`code`),
  ADD KEY `idx_mssup_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mssup_sid_label` (`siteid`,`label`);

--
-- Indexes for table `mshop_supplier_address`
--
ALTER TABLE `mshop_supplier_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mssupad_sid_rid` (`siteid`,`parentid`),
  ADD KEY `fk_mssupad_pid` (`parentid`);

--
-- Indexes for table `mshop_supplier_list`
--
ALTER TABLE `mshop_supplier_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mssupli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_mssupli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_mssupli_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_mssupli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_mssupli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_mssupli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_mssupli_pid` (`parentid`),
  ADD KEY `fk_mssupli_typeid` (`typeid`);

--
-- Indexes for table `mshop_supplier_list_type`
--
ALTER TABLE `mshop_supplier_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mssuplity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mssuplity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mssuplity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mssuplity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_tag`
--
ALTER TABLE `mshop_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstag_sid_dom_tid_lid_lab` (`siteid`,`domain`,`typeid`,`langid`,`label`),
  ADD KEY `idx_mstag_sid_dom_langid` (`siteid`,`domain`,`langid`),
  ADD KEY `idx_mstag_sid_dom_label` (`siteid`,`domain`,`label`),
  ADD KEY `fk_mstag_typeid` (`typeid`);

--
-- Indexes for table `mshop_tag_type`
--
ALTER TABLE `mshop_tag_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstagty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mstagty_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mstagty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mstagty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_text`
--
ALTER TABLE `mshop_text`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mstex_sid_domain_status` (`siteid`,`domain`,`status`),
  ADD KEY `idx_mstex_sid_domain_langid` (`siteid`,`domain`,`langid`),
  ADD KEY `idx_mstex_sid_dom_label` (`siteid`,`domain`,`label`),
  ADD KEY `fk_mstex_typeid` (`typeid`),
  ADD KEY `idx_mstex_sid_dom_cont` (`siteid`,`domain`,`content`(255));

--
-- Indexes for table `mshop_text_list`
--
ALTER TABLE `mshop_text_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstexli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_mstexli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_mstexli_pid_sid_rid_dm_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_mstexli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_mstexli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_mstexli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `fk_mstexli_typeid` (`typeid`),
  ADD KEY `fk_mstexli_pid` (`parentid`);

--
-- Indexes for table `mshop_text_list_type`
--
ALTER TABLE `mshop_text_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstexlity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mstexlity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mstexlity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mstexlity_sid_code` (`siteid`,`code`);

--
-- Indexes for table `mshop_text_type`
--
ALTER TABLE `mshop_text_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_mstexty_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_mstexty_sid_status` (`siteid`,`status`),
  ADD KEY `idx_mstexty_sid_label` (`siteid`,`label`),
  ADD KEY `idx_mstexty_sid_code` (`siteid`,`code`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paginas`
--
ALTER TABLE `paginas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personeel`
--
ALTER TABLE `personeel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservaties`
--
ALTER TABLE `reservaties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `templates_inhoud`
--
ALTER TABLE `templates_inhoud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_key_inhoud`
--
ALTER TABLE `template_key_inhoud`
  ADD PRIMARY KEY (`templateKey`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_langid_index` (`langid`),
  ADD KEY `users_status_lastname_firstname_index` (`status`,`lastname`,`firstname`),
  ADD KEY `users_status_address1_address2_index` (`status`,`address1`,`address2`),
  ADD KEY `users_status_postal_city_index` (`status`,`postal`,`city`),
  ADD KEY `users_lastname_index` (`lastname`),
  ADD KEY `users_address1_index` (`address1`),
  ADD KEY `users_city_index` (`city`),
  ADD KEY `users_postal_index` (`postal`);

--
-- Indexes for table `users_address`
--
ALTER TABLE `users_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lvuad_ln_fn` (`lastname`,`firstname`),
  ADD KEY `idx_lvuad_ad1_ad2` (`address1`,`address2`),
  ADD KEY `idx_lvuad_post_ci` (`postal`,`city`),
  ADD KEY `idx_lvuad_pid` (`parentid`),
  ADD KEY `idx_lvuad_city` (`city`),
  ADD KEY `idx_lvuad_email` (`email`);

--
-- Indexes for table `users_list`
--
ALTER TABLE `users_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_lvuli_sid_dm_rid_tid_pid` (`siteid`,`domain`,`refid`,`typeid`,`parentid`),
  ADD KEY `idx_lvuli_sid_stat_start_end` (`siteid`,`status`,`start`,`end`),
  ADD KEY `idx_lvuli_pid_sid_rid_dom_tid` (`parentid`,`siteid`,`refid`,`domain`,`typeid`),
  ADD KEY `idx_lvuli_pid_sid_start` (`parentid`,`siteid`,`start`),
  ADD KEY `idx_lvuli_pid_sid_end` (`parentid`,`siteid`,`end`),
  ADD KEY `idx_lvuli_pid_sid_pos` (`parentid`,`siteid`,`pos`),
  ADD KEY `IDX_8B41B616E70B032` (`typeid`);

--
-- Indexes for table `users_list_type`
--
ALTER TABLE `users_list_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unq_lvulity_sid_dom_code` (`siteid`,`domain`,`code`),
  ADD KEY `idx_lvulity_sid_status` (`siteid`,`status`),
  ADD KEY `idx_lvulity_sid_label` (`siteid`,`label`),
  ADD KEY `idx_lvulity_sid_code` (`siteid`,`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `madmin_job`
--
ALTER TABLE `madmin_job`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `madmin_log`
--
ALTER TABLE `madmin_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `madmin_queue`
--
ALTER TABLE `madmin_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `menuitem`
--
ALTER TABLE `menuitem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `menuItem_categorie`
--
ALTER TABLE `menuItem_categorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menuItem_subcategorie`
--
ALTER TABLE `menuItem_subcategorie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mshop_attribute`
--
ALTER TABLE `mshop_attribute`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mshop_attribute_list`
--
ALTER TABLE `mshop_attribute_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `mshop_attribute_list_type`
--
ALTER TABLE `mshop_attribute_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mshop_attribute_type`
--
ALTER TABLE `mshop_attribute_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mshop_catalog`
--
ALTER TABLE `mshop_catalog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mshop_catalog_list`
--
ALTER TABLE `mshop_catalog_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mshop_catalog_list_type`
--
ALTER TABLE `mshop_catalog_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mshop_coupon`
--
ALTER TABLE `mshop_coupon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_coupon_code`
--
ALTER TABLE `mshop_coupon_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_customer`
--
ALTER TABLE `mshop_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_customer_address`
--
ALTER TABLE `mshop_customer_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_customer_group`
--
ALTER TABLE `mshop_customer_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mshop_customer_list`
--
ALTER TABLE `mshop_customer_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_customer_list_type`
--
ALTER TABLE `mshop_customer_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_locale`
--
ALTER TABLE `mshop_locale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mshop_locale_site`
--
ALTER TABLE `mshop_locale_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mshop_media`
--
ALTER TABLE `mshop_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `mshop_media_list`
--
ALTER TABLE `mshop_media_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_media_list_type`
--
ALTER TABLE `mshop_media_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mshop_media_type`
--
ALTER TABLE `mshop_media_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mshop_order`
--
ALTER TABLE `mshop_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_order_base`
--
ALTER TABLE `mshop_order_base`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_order_base_address`
--
ALTER TABLE `mshop_order_base_address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_order_base_coupon`
--
ALTER TABLE `mshop_order_base_coupon`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_order_base_product`
--
ALTER TABLE `mshop_order_base_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_order_base_product_attr`
--
ALTER TABLE `mshop_order_base_product_attr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mshop_order_base_service`
--
ALTER TABLE `mshop_order_base_service`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mshop_order_base_service_attr`
--
ALTER TABLE `mshop_order_base_service_attr`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_order_status`
--
ALTER TABLE `mshop_order_status`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mshop_plugin`
--
ALTER TABLE `mshop_plugin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `mshop_plugin_type`
--
ALTER TABLE `mshop_plugin_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mshop_price`
--
ALTER TABLE `mshop_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `mshop_price_list`
--
ALTER TABLE `mshop_price_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_price_list_type`
--
ALTER TABLE `mshop_price_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_price_type`
--
ALTER TABLE `mshop_price_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mshop_product`
--
ALTER TABLE `mshop_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `mshop_product_list`
--
ALTER TABLE `mshop_product_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `mshop_product_list_type`
--
ALTER TABLE `mshop_product_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `mshop_product_property`
--
ALTER TABLE `mshop_product_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mshop_product_property_type`
--
ALTER TABLE `mshop_product_property_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mshop_product_stock`
--
ALTER TABLE `mshop_product_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mshop_product_stock_warehouse`
--
ALTER TABLE `mshop_product_stock_warehouse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mshop_product_type`
--
ALTER TABLE `mshop_product_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `mshop_service`
--
ALTER TABLE `mshop_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `mshop_service_list`
--
ALTER TABLE `mshop_service_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `mshop_service_list_type`
--
ALTER TABLE `mshop_service_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mshop_service_type`
--
ALTER TABLE `mshop_service_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_supplier`
--
ALTER TABLE `mshop_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_supplier_address`
--
ALTER TABLE `mshop_supplier_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_supplier_list`
--
ALTER TABLE `mshop_supplier_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_supplier_list_type`
--
ALTER TABLE `mshop_supplier_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `mshop_tag`
--
ALTER TABLE `mshop_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_tag_type`
--
ALTER TABLE `mshop_tag_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mshop_text`
--
ALTER TABLE `mshop_text`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT for table `mshop_text_list`
--
ALTER TABLE `mshop_text_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mshop_text_list_type`
--
ALTER TABLE `mshop_text_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mshop_text_type`
--
ALTER TABLE `mshop_text_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `paginas`
--
ALTER TABLE `paginas`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1001;
--
-- AUTO_INCREMENT for table `personeel`
--
ALTER TABLE `personeel`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reservaties`
--
ALTER TABLE `reservaties`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `templates_inhoud`
--
ALTER TABLE `templates_inhoud`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users_address`
--
ALTER TABLE `users_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_list`
--
ALTER TABLE `users_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_list_type`
--
ALTER TABLE `users_list_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `madmin_cache_tag`
--
ALTER TABLE `madmin_cache_tag`
  ADD CONSTRAINT `fk_macac_tid_tsid` FOREIGN KEY (`tid`, `tsiteid`) REFERENCES `madmin_cache` (`id`, `siteid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_attribute`
--
ALTER TABLE `mshop_attribute`
  ADD CONSTRAINT `fk_msatt_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_attribute_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_attribute_list`
--
ALTER TABLE `mshop_attribute_list`
  ADD CONSTRAINT `fk_msattli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_attribute` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msattli_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_attribute_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_catalog_list`
--
ALTER TABLE `mshop_catalog_list`
  ADD CONSTRAINT `fk_mscatli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mscatli_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_catalog_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_coupon_code`
--
ALTER TABLE `mshop_coupon_code`
  ADD CONSTRAINT `fk_mscouco_parentid` FOREIGN KEY (`parentid`) REFERENCES `mshop_coupon` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_customer_address`
--
ALTER TABLE `mshop_customer_address`
  ADD CONSTRAINT `fk_mscusad_parentid` FOREIGN KEY (`parentid`) REFERENCES `mshop_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_customer_list`
--
ALTER TABLE `mshop_customer_list`
  ADD CONSTRAINT `fk_mscusli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mscusli_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_customer_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_locale`
--
ALTER TABLE `mshop_locale`
  ADD CONSTRAINT `fk_msloc_currid` FOREIGN KEY (`currencyid`) REFERENCES `mshop_locale_currency` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msloc_langid` FOREIGN KEY (`langid`) REFERENCES `mshop_locale_language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msloc_siteid` FOREIGN KEY (`siteid`) REFERENCES `mshop_locale_site` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_locale_currency`
--
ALTER TABLE `mshop_locale_currency`
  ADD CONSTRAINT `fk_msloccu_siteid` FOREIGN KEY (`siteid`) REFERENCES `mshop_locale_site` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mshop_locale_language`
--
ALTER TABLE `mshop_locale_language`
  ADD CONSTRAINT `fk_mslocla_siteid` FOREIGN KEY (`siteid`) REFERENCES `mshop_locale_site` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mshop_media`
--
ALTER TABLE `mshop_media`
  ADD CONSTRAINT `fk_msmed_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_media_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_media_list`
--
ALTER TABLE `mshop_media_list`
  ADD CONSTRAINT `fk_msmedli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msmedli_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_media_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_order`
--
ALTER TABLE `mshop_order`
  ADD CONSTRAINT `fk_msord_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_order_base_address`
--
ALTER TABLE `mshop_order_base_address`
  ADD CONSTRAINT `fk_msordbaad_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_order_base_coupon`
--
ALTER TABLE `mshop_order_base_coupon`
  ADD CONSTRAINT `fk_msordbaco_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msordbaco_ordprodid` FOREIGN KEY (`ordprodid`) REFERENCES `mshop_order_base_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_order_base_product`
--
ALTER TABLE `mshop_order_base_product`
  ADD CONSTRAINT `fk_msordbapr_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_order_base_product_attr`
--
ALTER TABLE `mshop_order_base_product_attr`
  ADD CONSTRAINT `fk_msordbaprat_ordprodid` FOREIGN KEY (`ordprodid`) REFERENCES `mshop_order_base_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_order_base_service`
--
ALTER TABLE `mshop_order_base_service`
  ADD CONSTRAINT `fk_msordbase_baseid` FOREIGN KEY (`baseid`) REFERENCES `mshop_order_base` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_order_base_service_attr`
--
ALTER TABLE `mshop_order_base_service_attr`
  ADD CONSTRAINT `fk_msordbaseat_ordservid` FOREIGN KEY (`ordservid`) REFERENCES `mshop_order_base_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_order_status`
--
ALTER TABLE `mshop_order_status`
  ADD CONSTRAINT `fk_msordst_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_plugin`
--
ALTER TABLE `mshop_plugin`
  ADD CONSTRAINT `fk_msplu_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_plugin_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_price`
--
ALTER TABLE `mshop_price`
  ADD CONSTRAINT `fk_mspri_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_price_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_price_list`
--
ALTER TABLE `mshop_price_list`
  ADD CONSTRAINT `fk_msprili_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_price` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msprili_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_price_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_product`
--
ALTER TABLE `mshop_product`
  ADD CONSTRAINT `fk_mspro_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_product_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_product_list`
--
ALTER TABLE `mshop_product_list`
  ADD CONSTRAINT `fk_msproli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msproli_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_product_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_product_property`
--
ALTER TABLE `mshop_product_property`
  ADD CONSTRAINT `fk_mspropr_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mspropr_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_product_property_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_product_stock`
--
ALTER TABLE `mshop_product_stock`
  ADD CONSTRAINT `fk_msprost_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msprost_whid` FOREIGN KEY (`warehouseid`) REFERENCES `mshop_product_stock_warehouse` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_service`
--
ALTER TABLE `mshop_service`
  ADD CONSTRAINT `fk_msser_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_service_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_service_list`
--
ALTER TABLE `mshop_service_list`
  ADD CONSTRAINT `fk_msserli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_service` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_msserli_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_service_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_supplier_address`
--
ALTER TABLE `mshop_supplier_address`
  ADD CONSTRAINT `fk_mssupad_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_supplier_list`
--
ALTER TABLE `mshop_supplier_list`
  ADD CONSTRAINT `fk_mssupli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_supplier` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mssupli_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_supplier_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_tag`
--
ALTER TABLE `mshop_tag`
  ADD CONSTRAINT `fk_mstag_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_tag_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_text`
--
ALTER TABLE `mshop_text`
  ADD CONSTRAINT `fk_mstex_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_text_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mshop_text_list`
--
ALTER TABLE `mshop_text_list`
  ADD CONSTRAINT `fk_mstexli_pid` FOREIGN KEY (`parentid`) REFERENCES `mshop_text` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_mstexli_typeid` FOREIGN KEY (`typeid`) REFERENCES `mshop_text_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users_list`
--
ALTER TABLE `users_list`
  ADD CONSTRAINT `fk_lvuli_typeid` FOREIGN KEY (`typeid`) REFERENCES `users_list_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
