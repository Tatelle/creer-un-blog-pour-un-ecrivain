-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Mar 08 Mai 2018 à 12:38
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `projet4_blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `author`, `comment`, `comment_date`) VALUES
(8, 2, 'Cloé', 'Moi je trouve ça vachement bien ! Vivement la suite :)', '2018-04-26 15:40:22'),
(10, 2, 'Clément', 'J\'attends de voir la suite pour me prononcer...', '2018-04-28 19:45:07'),
(2, 1, 'Tom', 'Carrément ! J\'ai hâte !', '2018-04-24 14:11:15'),
(3, 1, 'Zoé', '+1', '2018-04-24 19:24:17'),
(4, 2, 'Bob', 'C\'est trop nul !', '2018-04-25 17:14:58'),
(5, 1, 'Méli', 'bof bof', '2018-04-26 11:56:37'),
(1, 1, 'Christelle', 'Trop bien ! Vivement la suite...', '2018-04-23 20:22:11'),
(14, 2, 'Tom', 'Rhalala ! c\'est toujours aussi bien !\r\nJ\'ai hâte de lire le prochain chapitre...', '2018-05-07 18:05:30'),
(15, 4, 'Zoé', 'Petit chapitre cette fois-ci mais très complet !', '2018-05-07 18:07:03'),
(16, 4, 'Julie', 'J\'aime bien, mais je m\'attendais à mieux !', '2018-05-07 18:07:35'),
(17, 4, 'Damien', 'Je trouve que c\'est de plus en plus naze !!', '2018-05-07 18:07:54'),
(18, 5, 'Zoé', 'Haaaa ! Il est beaucoup plus long ce chapitre en comparaison au précédent !\r\nIl faudrait qu\'ils soient tous aussi longs :)', '2018-05-07 18:09:22'),
(19, 5, 'Tom', 'J\'A-DORE !', '2018-05-07 18:09:38'),
(20, 5, 'Clément', 'C\'est nul ! Je vais arrêter de lire ce blog', '2018-05-07 18:10:15'),
(21, 5, 'Tatelle', 'Moi j\'aime bien, c\'est agréable à lire !', '2018-05-07 18:12:14'),
(29, 5, 'Test ', 'test du commentaire', '2018-05-07 19:50:40'),
(30, 5, 'test', 'test', '2018-05-07 19:51:18'),
(34, 4, 'test', 'blabla', '2018-05-08 13:55:43'),
(35, 4, 'test', '&lt;strong&gt;test&lt;/strong&gt;', '2018-05-08 13:56:16');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `creation_date`) VALUES
(1, 'Chapitre 1 : Intro à l\'Alaska', '<p>L\'Alaska (prononc&eacute; [a.las.ka] &Eacute;couter (Fr.) en fran&ccedil;ais et [ə.ˈl&aelig;.skə] &Eacute;couter (&Eacute;.-U.A) en anglais) est le 49e &Eacute;tat des &Eacute;tats-Unis, dont la capitale est Juneau et la plus grande ville Anchorage, o&ugrave; habite environ 40 % de la population de l\'&Eacute;tat. Avec une superficie totale de 1 717 854 km2, il est l\'&Eacute;tat le plus &eacute;tendu et le plus septentrional du pays, mais l\'un des moins peupl&eacute;s, ne comptant que 731 449 habitants en 20121.<br /><br />Comme Hawa&iuml;, l\'Alaska est s&eacute;par&eacute; du Mainland et se situe au nord-ouest du Canada. Bord&eacute; par l\'oc&eacute;an Arctique au nord et la mer de B&eacute;ring et l\'oc&eacute;an Pacifique au sud, ce territoire est s&eacute;par&eacute; de l\'Asie par le d&eacute;troit de B&eacute;ring. En outre, ses divisions administratives ne sont pas des comt&eacute;s mais des boroughs.<br /><br />Alaska signifie &laquo; grande Terre &raquo; ou &laquo; continent &raquo; en al&eacute;oute3. Cette r&eacute;gion, que l\'on appelait au xixe si&egrave;cle l\'&laquo; Am&eacute;rique russe &raquo;, tire son nom d\'une longue presqu\'&icirc;le, au nord-ouest du continent am&eacute;ricain, &agrave; environ 1 000 km au sud du d&eacute;troit de Bering, et qui se lie, vers le sud, aux &icirc;les Al&eacute;outiennes. Le surnom de l\'Alaska est &laquo; la derni&egrave;re fronti&egrave;re &raquo; ou &laquo; la terre du soleil de minuit &raquo;.<br /><br />Peupl&eacute; par des Al&eacute;outes, Esquimaux (notamment I&ntilde;upiak et Yupiks) et peut-&ecirc;tre d\'autres Am&eacute;rindiens depuis plusieurs mill&eacute;naires, le territoire est colonis&eacute; par des trappeurs russes &agrave; la fin du xviiie si&egrave;cle. L\'Alaska vit alors essentiellement du commerce du bois et de la traite des fourrures. En 1867, les &Eacute;tats-Unis l\'ach&egrave;tent &agrave; la Russie pour la somme de 7,2 millions de dollars (environ 120 millions de dollars actuels), et celui-ci adh&egrave;re &agrave; l\'Union le 3 janvier 1959. Les domaines &eacute;conomiques pr&eacute;dominants aujourd\'hui sont la p&ecirc;che, le tourisme, et surtout la production d\'hydrocarbures (p&eacute;trole, gaz) depuis la d&eacute;couverte de gisements &agrave; Prudhoe Bay dans les ann&eacute;es 1970.<br /><br />Le Denali (6 168 m&egrave;tres d\'altitude), point culminant des &Eacute;tats-Unis, se trouve dans la cha&icirc;ne d\'Alaska et constitue le c&oelig;ur du Parc national de Denali.<br /><br />Le climat y est de type polaire, et la faune caract&eacute;ristique des milieux froids (grizzli, caribou, &eacute;lan, ours blanc).<br /><br />Les territoires limitrophes sont le territoire du Yukon et la province de Colombie-Britannique au Canada. Le Kra&iuml; du Kamtchatka et le district autonome de Tchoukotka en Russie se trouvent &agrave; quelques dizaines de kilom&egrave;tres, de l\'autre c&ocirc;t&eacute; du d&eacute;troit de Bering.<br /><br />Bastion du Parti r&eacute;publicain, l\'Alaska fut gouvern&eacute; de 2006 &agrave; 2009 par Sarah Palin, candidate &agrave; la vice-pr&eacute;sidence des &Eacute;tats-Unis en 2008 et &eacute;g&eacute;rie du mouvement des Tea Party.</p>', '2018-04-23 19:34:23'),
(2, 'Chapitre 2 : Histoire des peuples', '<p style="text-align: justify;">L\'Alaska est un ancien territoire russe d\'Am&eacute;rique, vendu aux &Eacute;tats-Unis en 1867 pour la somme de 7,2 millions de dollars. Ce chiffre est &agrave; comparer avec les 15 millions de USD d&eacute;bours&eacute;s par les &Eacute;tats-Unis pour l\'achat de la Louisiane.<br /><br /><strong>Cultures autochtones de l\'Alaska</strong><br />Les savoirs et savoir-faire traditionnels font l\'objet de recherches et colportage, notamment coordonn&eacute;s par l\'Alaska Native Science Commission.<br /><br /><strong>Culture de Denbigh en Alaska (3000 &agrave; 1000 av. J.-C.)</strong><br /><em>Le territoire</em><br />Les gens de Denbigh vivaient dans le nord de l\'Alaska, il y a 5 000 ans. Leur principale ressource &eacute;tait les animaux qu\'ils chassaient dans la toundra, pour leur nourriture, leurs v&ecirc;tements et leurs abris. En 1948, l\'arch&eacute;ologue am&eacute;ricain Louis Giddings (en) excave, au Cap Denbigh, sur la c&ocirc;te de la mer de B&eacute;ring, des microlames de chert et d\'obsidienne, qui ressemblent &agrave; celles trouv&eacute;es pr&eacute;c&eacute;demment dans le d&eacute;sert de Gobi (Pal&eacute;o et m&eacute;solithique asiatique). Giddings remarque &eacute;galement que les pointes de projectiles ont des similitudes avec celles des Pal&eacute;oindiens et des cultures archa&iuml;ques du Nouveau-Monde. Le nom de cette culture, comme beaucoup d\'autres d\'ailleurs, nous vient donc de la situation g&eacute;ographique de cette premi&egrave;re d&eacute;couverte.<br /><br /><em>Ressources naturelles et activit&eacute;s de subsistance</em><br />Ces peuplades passaient l\'&eacute;t&eacute; sur les c&ocirc;tes de la mer de B&eacute;ring et durant les autres saisons, &agrave; l\'int&eacute;rieur des terres &agrave; la recherche de caribou et de poissons anadromes.<br /><br /><em>Organisation sociale</em><br />Ce groupe culturel est connu pour ses outils de pierre taill&eacute;e, comme les grattoirs, les pointes de projectile, les outils pour le travail de l\'os, les lames et les gouges.<br /><br /><em>Origines et descendances</em><br />Le Denbighien est tr&egrave;s proche culturellement des trois autres entit&eacute;s formant ce que l\'on appelle les Pal&eacute;oesquimaux anciens, que nous avons d&eacute;crits pr&eacute;c&eacute;demment. Les origines exactes de cette culture ne sont pas tr&egrave;s bien connues. La technologie microlithique a s&ucirc;rement pris racine dans la tradition pal&eacute;olithique de l\'Alaska et plus s&ucirc;rement dans la culture pal&eacute;osib&eacute;rienne. En revanche, les Denbighiens sont les anc&ecirc;tres de toute une s&eacute;rie de cultures alaskaines : baleini&egrave;res anciennes, Choris et Norton.<br /><br />Pendant que les Pal&eacute;oesquimaux d&eacute;veloppaient leur culture dans le Canada arctique et au Groenland, une &eacute;volution fort diff&eacute;rente se poursuivait en Alaska dans la r&eacute;gion du d&eacute;troit de B&eacute;ring. De leur c&ocirc;t&eacute;, les &icirc;les Al&eacute;outiennes ont connu un d&eacute;veloppement graduel qui a d&eacute;bouch&eacute; sur la culture des Al&eacute;outes d\'aujourd\'hui. La c&ocirc;te pacifique de l\'Alaska, quant &agrave; elle, a connu une &eacute;volution technologique fond&eacute;e sur l\'ardoise polie, qui a pu &ecirc;tre &agrave; l\'origine des cultures esquimaudes de cette r&eacute;gion. Les c&ocirc;tes nord et ouest &eacute;taient occup&eacute;es par des gens de la tradition des outils microlithiques de l\'Arctique, la m&ecirc;me culture que ceux de l\'Arctique canadien. Vers 1000 av. J.-C., l\'activit&eacute; humaine en Alaska a connu un arr&ecirc;t de plusieurs si&egrave;cles. Apr&egrave;s cette pause, appara&icirc;t une s&eacute;rie de groupes comme les cultures baleini&egrave;res anciennes, Choris et Norton qui sont un m&eacute;lange complexe de microlithisme de l\'Arctique, de culture de la c&ocirc;te du Pacifique et de groupes du N&eacute;olithique de la Sib&eacute;rie orientale de la m&ecirc;me &eacute;poque.<br /><br /><strong>Cultures baleini&egrave;res anciennes (1000 av. J.-C. &agrave; 120 av. J.-C.)</strong><br />Nous savons tr&egrave;s peu de choses sur les cultures baleini&egrave;res anciennes. En fait, il n\'y a qu\'un seul village de cinq maisons qui a &eacute;t&eacute; d&eacute;couvert au cap Krusenstern (en), au nord du d&eacute;troit de B&eacute;ring. Il y avait des os de phoque dans les maisons et des os de baleine &eacute;tendus sur les plages environnantes. On peut consid&eacute;rer cette culture comme une tentative &eacute;ph&eacute;m&egrave;re de mixit&eacute;, des Al&eacute;outes peut-&ecirc;tre, des Esquimaux ou des Am&eacute;rindiens.<br /><br /><strong>Culture de Choris (1000 av. J.-C. &agrave; l\'an 1)</strong><br />Les gens de la culture de Choris vivaient dans de grandes maisons semi-souterraines ovales et chassaient le phoque et le caribou. Ils fabriquaient aussi des outils de pierre taill&eacute;e qui rappellent passablement ceux de la Tradition microlithique de l\'Arctique. Comme pour les cultures baleini&egrave;res anciennes, l\'origine des gens de Choris reste n&eacute;buleuse pour l\'instant. Ces petits groupes de chasseurs &eacute;taient peut-&ecirc;tre Esquimaux du sud de l\'Alaska, ou des Al&eacute;outes qui migr&egrave;rent vers le nord, ou des Am&eacute;rindiens qui avaient adopt&eacute; des coutumes esquimaudes, voire des immigrants sib&eacute;riens.</p>', '2018-04-24 17:44:11'),
(4, 'Chapitre 3 : Traite des fourrures', '<p style="text-align: justify;">&Agrave; partir de 1784, les trappeurs russes &eacute;tablissent des comptoirs de traite permanents sur les &icirc;les Al&eacute;outiennes et sur la c&ocirc;te am&eacute;ricaine du Pacifique, jusqu\'&agrave; la Californie (fort Ross, &agrave; moins de 160 kilom&egrave;tres au nord de San Francisco). Pour commencer, des postes c&ocirc;tiers sont &eacute;tablis &agrave; Attu, Agattu (en) et Unalaska, dans les &icirc;les Al&eacute;outiennes, ainsi que dans l\'&icirc;le de Kodiak, au large de l\'embouchure du golfe de Cook. Dix-huit mois plus tard, une colonie est &eacute;tablie sur le continent, en face de l\'anse Cook. L\'objectif est de chasser la loutre de mer, dont la fourrure se vend &agrave; prix d\'or sur les march&eacute;s chinois. Comme en Sib&eacute;rie, les Russes embauchent, alcoolisent et cherchent &agrave; convertir &agrave; l\'orthodoxie les populations locales : la communaut&eacute; orthodoxe alaskane est al&eacute;oute ou kodiak. On comptait environ 25 000 Al&eacute;outes &agrave; l\'arriv&eacute;e des Russes, mais seulement 3 892 en 1885, apr&egrave;s 122 ans de domination russe (au pied du volcan Mont Redoubt, haut de 3 100 m&egrave;tres, la pr&eacute;sence de l\'&eacute;glise russe orthodoxe de Ninilchik rappelle que l\'Alaska fut une colonie russe), puis am&eacute;ricaine&hellip; vodka, bourbon et grippe ont eu ici les m&ecirc;mes effets qu\'ailleurs6. D&egrave;s la fin du xviiie si&egrave;cle, des marchands et des missionnaires am&eacute;ricains et anglais viennent concurrencer les activit&eacute;s russes.<br /><br />En 1787, Aleksandr Andre&iuml;evitch Baranov fonde un poste de traite sur l\'&icirc;le Sitka, o&ugrave; il implante des serfs russes et al&eacute;outes ; de 1799 &agrave; 1804, il est le gouverneur et administrateur r&eacute;sidant de l\'Am&eacute;rique russe et d&eacute;cide d\'y construire sa capitale. Le fort est d&eacute;truit par les Tlingits en 1802. Baranov reprend les lieux deux ans plus tard : l\'&icirc;le est rebaptis&eacute;e de son nom actuel et la capitale prend le nom de Novo-Arkhangelsk (actuelle &laquo; Sitka &raquo;). En 1807, le gouverneur r&eacute;side au ch&acirc;teau Baranov. En 1811, c\'est lui qui &eacute;tablit le poste de fort Ross en Californie. Au total, on peut compter une quarantaine de forts russes en Am&eacute;rique, dans la premi&egrave;re moiti&eacute; du xixe si&egrave;cle. La Russie d&eacute;clare que l\'Am&eacute;rique russe s\'&eacute;tend jusqu\'au d&eacute;troit de la Reine-Charlotte (actuel Canada) et que les &eacute;trangers n\'ont pas droit de passage. La Californie &eacute;tant espagnole, alors que l\'Oregon et la Colombie-Britannique (comprenant encore l\'actuel &Eacute;tat de Washington) sont anglais, l\'acc&egrave;s au Pacifique et &agrave; ses fourrures semble impossible aux &Eacute;tats-Unis. Face &agrave; ce blocage, le pr&eacute;sident am&eacute;ricain James Monroe r&eacute;dige sa c&eacute;l&egrave;bre doctrine qui vise &agrave; &eacute;liminer les influences europ&eacute;ennes du continent. Les &Eacute;tats-Unis, le Royaume-Uni et la Russie finissent par s\'entendre, et un trait&eacute; est sign&eacute; en 1824, par le biais duquel la fronti&egrave;re russe est d&eacute;plac&eacute;e du sud (Californie) vers le nord (actuel Alaska), tandis que les Anglais renoncent &agrave; l\'Or&eacute;gon et au sud de la Colombie-Britannique (d&eacute;sormais territoire de Washington). Par ce trait&eacute;, l\'&eacute;tablissement de nouveaux forts russes hors Alaska est prohib&eacute; et, en 1825, le Royaume-Uni obtient un droit de passage le long de l\'&eacute;troite bande c&ocirc;ti&egrave;re alaskane. Finalement, l\'achat de l\'Alaska par les Am&eacute;ricains, en 1867, met un terme &agrave; la pr&eacute;sence russe en Am&eacute;rique.</p>', '2018-05-07 17:16:11'),
(5, 'Chapitre 4 : Géographie', '<p style="text-align: justify;"><strong>Situation et caract&eacute;ristiques g&eacute;n&eacute;rales</strong><br /><br />Comparaison de la surface de l\'Alaska avec celle des 48 &Eacute;tats contigus.<br />L\'Alaska ne poss&egrave;de de fronti&egrave;re commune avec aucun autre &Eacute;tat am&eacute;ricain. Il partage cette caract&eacute;ristique avec Hawa&iuml;. Il est bord&eacute; &agrave; l\'est par le territoire du Yukon et la Colombie-Britannique, une province du Canada. La fronti&egrave;re entre l\'Alaska et le Canada s\'&eacute;tend sur 2 477 km8. Ailleurs, trois ensembles maritimes entourent l\'Alaska : le golfe d\'Alaska, qui se trouve au nord de l\'oc&eacute;an Pacifique ; la mer de B&eacute;ring et la mer des Tchouktches, qui le s&eacute;pare de l\'Asie &agrave; l\'ouest ; la mer de Beaufort enfin, qui borde les c&ocirc;tes nord et fait partie de l\'oc&eacute;an Arctique. Le d&eacute;troit de B&eacute;ring s&eacute;pare naturellement l\'Alaska de la Russie.<br /><br />L\'Alaska est de loin le plus vaste &Eacute;tat des &Eacute;tats-Unis : une superficie de 1 717 854 km2 dont 1 481 305 km2 de terres, ce qui repr&eacute;sente 18,7 % du territoire am&eacute;ricain et trois fois la superficie de la France m&eacute;tropolitaine9. Le territoire de l\'Alaska s\'&eacute;tire sur 3 700 km d\'est en ouest et 2 200 km du nord au sud, couvrant 4 fuseaux horaires. Il s\'&eacute;tale sur environ 43 &deg; de longitude (130/173 &deg; W) et 16 &deg; de latitude (71/55 &deg; N) : c\'est donc en Alaska que se trouvent le lieu le plus occidental (&icirc;le Attu) et le lieu le plus septentrional (Barrow) des &Eacute;tats-Unis. Le centre g&eacute;ographique de l\'&Eacute;tat se situe &agrave; 63&deg;50\' de latitude nord et 152&deg;00\' de longitude ouest10.<br /><br />Selon une &eacute;tude du Bureau de gestion du territoire datant de 1998, environ 65 % du territoire est la propri&eacute;t&eacute; du Gouvernement f&eacute;d&eacute;ral des &Eacute;tats-Unis, qui g&egrave;re les for&ecirc;ts, les parcs et les r&eacute;serves naturelles nationales de l\'Alaska. Le reste est g&eacute;r&eacute; par l\'&Eacute;tat d\'Alaska (25 %) et par les Corganisations indig&egrave;nes cr&eacute;&eacute;es par l&rsquo;Alaska Native Claims Settlement Act de 1971 (10 %).<br /><br /><strong>Littoral et hydrologie</strong><br /><em>C&ocirc;tes et &icirc;les</em><br /><br />Le rivage alaskien est d&eacute;coup&eacute; et accident&eacute; : les cha&icirc;nes c&ocirc;ti&egrave;res plongent dans l\'oc&eacute;an. Les c&ocirc;tes de l\'Alaska sont baign&eacute;es par la mer de B&eacute;ring, la mer des Tchouktches, l\'Oc&eacute;an Arctique et l\'Oc&eacute;an Pacifique. Ce littoral, long d\'environ 50 000 km, pr&eacute;sente des paysages tr&egrave;s diff&eacute;rents: des plages au nord en passant par des falaises et des fjords majestueux. La transgression flandrienne a provoqu&eacute; une remont&eacute;e du niveau des eaux et form&eacute; des fjords impressionnants. Parmi eux, le Lynn Canal, qui, avec ses 150 km de long, est le plus long fjord d\'Am&eacute;rique du Nord.<br /><br />La navigation est rendue difficile par la pr&eacute;sence d\'obstacles permanents (&icirc;les, &eacute;cueils) ou temporaires (icebergs). Le fait que la c&ocirc;te soit fortement d&eacute;coup&eacute;e a permis l\'installation de plusieurs ports. L\'Alaska comprend de tr&egrave;s nombreuses &icirc;les (1800 en tout), en particulier au sud (archipel Alexandre) et &agrave; l\'ouest (&icirc;les Al&eacute;outiennes), ce qui explique la grande longueur du littoral. Les deux plus grandes &icirc;les sont l\'&icirc;le Kodiak et l\'&icirc;le du Prince-de-Galles. L\'archipel des Al&eacute;outes s\'&eacute;tend sur plusieurs centaines de kilom&egrave;tres.<br /><br />Le Passage Int&eacute;rieur est utilis&eacute; pour la navigation : il mesure 860 km de long et compte 70 grands glaciers entre les 55e et 61e parall&egrave;les, le continent et l\'archipel Alexandre11<br /><br /><em>Lacs et rivi&egrave;res</em><br />Le nombre de lacs est estim&eacute; &agrave; plus de 3 millions. 94 d&eacute;passent 26 km2, les plus grands &eacute;tant le lac Illiamna (3 000 km2), le lac Becharof (1 200 km2), le lac Teshekpuk (800 km2) et le lac Naknek (630 km2). Par comparaison, le lac L&eacute;man fait 580 km2. Le nombre de cours d\'eau est estim&eacute; &agrave; 3 00012. Parmi ces fleuves, le Yukon est le plus c&eacute;l&egrave;bre. Il serpente sur 2 000 km, de la fronti&egrave;re canadienne &agrave; la mer de B&eacute;ring, charriant encore les p&eacute;pites de la ru&eacute;e vers l\'or : une voie l&eacute;gendaire et historique. Ses principaux affluents font &eacute;galement partie des plus longues rivi&egrave;res, comme la Porcupine (890 km), la Koyukuk (890 km), la Kuskokwin (870 km) ou la Tanana (850 km). La plupart sont navigables. Le nom d\'Alaska vient d\'un mot de la langue al&eacute;oute qui veut dire la grande terre ; pourtant, l\'immense r&eacute;seau fluvial et les 3 millions (?) de lacs en font plut&ocirc;t un monde aquatique o&ugrave; l\'hydravion est roi.<br /><br /><strong>Relief et g&eacute;ologie</strong><br /><br />Avec ses glaciers qui produisent des icebergs, ses volcans qui sculptent des vall&eacute;es lunaires, ses montagnes qui continuent de s\'&eacute;lever vers le ciel, l\'Alaska, aux paysages en perp&eacute;tuel devenir, est le contraire d\'une terre ferme. Ce coin de la plan&egrave;te, terre d\'&eacute;lection pour les g&eacute;ologues, est le th&eacute;&acirc;tre de vastes mouvements tectoniques : failles, &eacute;ruptions, s&eacute;ismes sillonnent et secouent ce &laquo; bloc fantastique venu d\'ailleurs &raquo;[r&eacute;f. n&eacute;cessaire].<br /><br /><em>Volcans</em><br />L\'Alaska est une grande zone sismique. Deux des trois plus violents tremblements de terre jamais enregistr&eacute;s ont touch&eacute; l\'&Eacute;tat am&eacute;ricain :<br /><br />&agrave; Prince William Sound, en 1964 (s&eacute;isme de magnitude 9,2)<br />dans les &icirc;les Andreanof, en 1957 (magnitude 9,1)<br />La p&eacute;ninsule de l\'Alaska compte 80 volcans, dont 41 encore en activit&eacute;. Sur la partie nord-est de la Ceinture de feu du Pacifique, les volcans Mont Pavlof (2 518 m&egrave;tres), Augustine (1 227 m&egrave;tres), mont Redoubt (3 108 m&egrave;tres), Mont Spurr (3 374 m&egrave;tres). Le chapelet des &icirc;les Al&eacute;outiennes t&eacute;moignent du choc tectonique : elles ont une forme pointue (exemple : le volcan Mont Shishaldin, (2 857 m&egrave;tres) et prolonge la cordill&egrave;re de la cha&icirc;ne des Al&eacute;outiennes. En 1912, une violente explosion a d&eacute;coiff&eacute; le mont Katmai de ses 600 derniers m&egrave;tres. Plusieurs tonnes d\'oxyde de soufre ont &eacute;t&eacute; projet&eacute;es dans l\'atmosph&egrave;re, &agrave; plus de 15 kilom&egrave;tres du sol et ont perturb&eacute; la mousson en Asie. Haut-lieu mondial de la volcanologie, la vall&eacute;e des Dix Mille Fum&eacute;es a &eacute;t&eacute; recouverte par les cendres sur une surface de 100 km2.<br /><br />La fosse des Kouriles borde le plateau continental de l\'Alaska au sud et atteint une profondeur maximale de 10 498 m&egrave;tres13.<br /><br /><strong>Glaciers</strong><br />Environ 100 000 glaciers sont pr&eacute;sents sur l\'ensemble de l\'Alaska. Ils recouvrent plus de 70 000 km2 (4 % de la surface totale) et se trouvent en majorit&eacute; dans le sud du pays, car les chutes de neige y sont beaucoup plus importantes qu\'au nord. Le plus grand glacier est celui de B&eacute;ring, long de 160 km et recouvrant 5 850 km2. Le plus impressionnant est l\'ensemble de glaciers formant le &laquo; Glacier Bay &raquo; : dans un fjord de 100 km de long se trouvent une douzaine de glaciers d&eacute;versant leurs icebergs dans la baie. Certains glaciers s\'&eacute;talent en plaine, comme le glacier de Malaspina et ses 2 200 km2.</p>', '2018-05-07 17:26:54');

-- --------------------------------------------------------

--
-- Structure de la table `reporting`
--

CREATE TABLE `reporting` (
  `id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `reporting_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `reporting`
--

INSERT INTO `reporting` (`id`, `comment_id`, `reporting_date`) VALUES
(1, 4, '2018-04-26 11:58:08'),
(2, 20, '2018-05-07 19:50:19'),
(3, 17, '2018-05-08 13:55:24');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `pass`) VALUES
(1, 'Admin', '$2y$10$9nqeC8yuJY7kczbR8l3TuOppM8pj80nkw4W7hj8fY6UZdh8n1D.ra');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reporting`
--
ALTER TABLE `reporting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `reporting`
--
ALTER TABLE `reporting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
