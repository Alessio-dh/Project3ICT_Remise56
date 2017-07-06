-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 29, 2016 at 03:15 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(7, '2016_11_22_193825_templates_inhoud', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL,
  `titel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uitleg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `padNaarFoto` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `titel`, `uitleg`, `padNaarFoto`) VALUES
(2, 'test', 'test', '0-weu-d1-c5fbaf7dfb761112f0851d5120f0e3a6.jpg');

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
(10, 'media', '', 'alle'),
(11, 'rondleiding', 'hoofdBlok;reservatie', 'brouwerij'),
(15, 'reservatie', 'hoofdBlok;reservatie', 'grandcafe'),
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reservaties`
--

INSERT INTO `reservaties` (`id`, `datumtijd`, `email`, `shift`, `soort`, `aantal_personen`, `voornaam`, `naam`, `telefoon`, `nota`, `bevestigd`, `bevestigingscode`) VALUES
(18, '2016-11-29 15:30:00', 'a@s.c', 'Lunch', 'Restaurant', 4, 'a', 'b', '0118246180', '', 'ok', 'code'),
(19, '2016-11-29 18:00:00', 'meneerdooz@gmail.com', 'Lunch', 'Restaurant', 1, 'Michel', 'Banken', '0118246180', 'Heel speciaal, veel wensen', 'ok', 'code'),
(20, '2016-11-29 17:00:00', '1@1.1', 'Lunch', 'Restaurant', 8, 'Soufiane', 'Slam', '0118246180', '', 'ok', 'code'),
(21, '2016-11-29 18:00:00', '1@1.x', 'Lunch', 'Restaurant', 2, '1', '1', '1111111111', 'Speciale wensen, Allergieën, ...', 'ok', 'code'),
(22, '2016-11-29 17:30:00', '21@1.c', 'Lunch', 'Restaurant', 7, 'q', 'q', '0118246180', '', 'ok', 'code');

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
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `templates_inhoud`
--
ALTER TABLE `templates_inhoud`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;