-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 01 juin 2020 à 11:43
-- Version du serveur :  8.0.18
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `groot`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `authorId` int(10) NOT NULL,
  `isPublished` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `date`, `title`, `content`, `authorId`, `isPublished`) VALUES
(10, '2020-05-11', 'First article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non lectus dapibus, sollicitudin velit ut, ultricies ipsum. Sed venenatis, nisi vel lacinia euismod, lectus arcu cursus metus, ultrices pulvinar urna metus euismod nunc. Maecenas faucibus interdum iaculis. Fusce tortor odio, aliquam vitae mi ac, fringilla efficitur enim. Fusce non lectus elit. ', 16, 1),
(8, '2020-05-11', 'Sample article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin non lectus dapibus, sollicitudin velit ut, ultricies ipsum. Sed venenatis, nisi vel lacinia euismod, lectus arcu cursus metus, ultrices pulvinar urna metus euismod nunc. Maecenas faucibus interdum iaculis. Fusce tortor odio, aliquam vitae mi ac, fringilla efficitur enim. Fusce non lectus elit. ', 2, 1),
(19, '2020-05-22', 'Testing unpublished article', '<h3>Fusce&nbsp;</h3><p>quis augue eget ipsum iaculis malesuada a at massa. Sed id elementum massa. In congue efficitur dolor, a volutpat purus volutpat sit amet. In lacinia <i>tincidunt lectus tempus suscipit. Curabitur sed urna dictum</i>, rhoncus quam ac, porta nibh. Proin mollis ipsum in sem egestas, eget rhoncus erat <strong>feugiat. Donec sed lorem nec felis semper finibus</strong>. Ut luctus pharetra felis ut molestie. Duis consequat dictum nunc et porttitor. Morbi elit sem, vestibulum vitae tortor ut, sodales efficitur erat. Maecenas dignissim auctor lectus, a tincidunt mi vulputate tincidunt. Donec elementum felis neque, at tempus lacus finibus et. Nulla quis odio a nibh tristique vestibulum in ut nisl.&nbsp;</p><blockquote><p>Pellentesque feugiat porttitor quam, in vehicula justo. Phasellus tortor eros, auctor at ante quis, laoreet laoreet ante</p></blockquote>', 4, 1),
(24, '2020-05-25', 'Second article', '<blockquote><p><i><strong>Etiam convallis accumsan</strong> quam in mattis</i>.&nbsp;</p></blockquote><p>Vivamus pulvinar lorem in massa scelerisque aliquet. Pellentesque rhoncus urna vel tortor lacinia fringilla. In dignissim sem id eros sagittis rhoncus. Mauris sollicitudin porta commodo. Morbi ac facilisis purus. Phasellus eget rutrum ante.</p>', 2, 1),
(22, '2020-05-22', 'Sample article', '<h4>Curabitur porta, ex vel auctor consequat, libero libero gravida ante, vel feugiat arcu dolor non nunc. Sed consequat volutpat orci, posuere dictum nulla vestibulum sit amet. Etiam vehicula nulla sit amet porttitor congue. <strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus feugiat vitae magna vel eleifend.</strong></h4>', 4, 1),
(25, '2020-05-25', 'First article', '<h3>Title</h3><p><strong>Etiam convallis accumsan quam in mattis.</strong> Vivamus pulvinar lorem in massa scelerisque aliquet. Pellentesque rhoncus urna vel tortor lacinia fringilla. In dignissim sem id eros sagittis rhoncus. Mauris sollicitudin porta commodo.&nbsp;</p><blockquote><p>Morbi ac facilisis purus. Phasellus eget rutrum ante.</p></blockquote>', 17, 1),
(29, '2020-06-01', 'Definition of ecology', '<p>Ecology is a branch of biology concerning interactions among organisms and their biophysical environment, which includes both biotic and abiotic components. Topics of interest include the biodiversity, distribution, biomass, and populations of organisms, as well as cooperation and competition within and between species.</p>', 16, 0),
(27, '2020-05-25', 'Testing unpublished article', '<p><strong>Cras suscipit mattis tortor sed egestas</strong>. Morbi semper elementum euismod. Nulla sit amet dui commodo, aliquet tellus ac, rutrum mi. Sed ullamcorper egestas est et rutrum. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis lacinia nisi a ligula sagittis, vitae posuere sem hendrerit. Aenean faucibus iaculis mollis. Sed pulvinar, lectus ac porttitor pulvinar, augue nibh dapibus turpis, nec vehicula sem augue a libero. Donec malesuada ligula ut augue ornare, a commodo risus mollis.</p>', 2, 1),
(28, '2020-05-25', 'Second article', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet nisl tempus, fermentum ligula porttitor, venenatis est. Sed<strong> et mattis purus. Quisque sed dapibus libero. Praesent ut sapien eros. Pellentesque posuere eleifend nunc, sed dictum neque lobortis</strong> vitae. Duis non efficitur sapien. Ut tristique augue finibus ligula aliquet sollicitudin. Donec tempor nunc vitae arcu varius fermentum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Curabitur rhoncus risus turpis, vel efficitur dolor aliquam at.</p>', 2, 1),
(30, '2020-06-01', 'Sample article', '<p>Morbi auctor nulla dui, <strong>pulvinar </strong>accumsan quam vestibulum eget. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Integer rhoncus<i> placerat porttitor. Quisque </i>volutpat ante in tellus amet massa vel, vestibulum posuere augue. Morbi interdum imperdiet tellus sed cursus. Sed ac pellentesque orci, nec tempus leo. Etiam facilisis ipsum ac <strong>euismod dapibus. Vivamus scelerisque</strong> vitae lacus et porta. Praesent tem<strong>por erat in felis iaculis, </strong>nec semper elit vestibulum. Proin convallis mi at efficitur fringilla. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas</p>', 2, 0),
(31, '2020-06-01', 'Carbon footprint definition', '<p>A <strong>carbon footprint</strong> is historically defined as the total greenhouse gas (<strong>GHG</strong>) emissions caused by an individual, event, organization, or product, expressed as carbon dioxide equivalent. Greenhouse gases, including the carbon-containing gases carbon dioxide and methane, can be emitted through the burning of fossil fuels, land clearance and the production and consumption of food, manufactured goods, materials, wood, roads, buildings, transportation and other services.</p>', 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateStartTime` varchar(100) NOT NULL,
  `dateEndTime` varchar(100) NOT NULL,
  `isPublished` tinyint(1) NOT NULL DEFAULT '0',
  `authorId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `dateStartTime`, `dateEndTime`, `isPublished`, `authorId`) VALUES
(10, 'COP25', 'The Glasgow Climate Change Conference 2020 is an international conference organised by the United Nations.', '2020-12-12T10:00', '2020-12-12T18:00', 0, 16),
(11, 'Climate strikes, environmental protests', 'Millions of people will demonstrate across the world demanding urgent action to tackle global heating, as they will unite across timezones and cultures to take part in the biggest climate protest in history.', '2020-07-01T14:00', '2020-07-01T23:00', 0, 16),
(7, 'My event', 'Ut in mi et est pulvinar rhoncus. Donec ac ornare leo. Morbi risus nibh, semper placerat orci aliquet, aliquam auctor nulla. In vitae neque in purus posuere scelerisque vitae at urna. Quisque efficitur egestas urna, in posuere arcu. Cras sem justo, rutrum eu tellus vestibulum, efficitur porttitor lorem. Morbi eget tempor elit. Donec vel nibh posuere, aliquet urna a, consectetur diam. Mauris sit amet lacinia nisl. Fusce congue tempor risus, ut feugiat nisl vestibulum sit amet. Sed eget consectetur nulla.\r\n\r\nVestibulum non erat interdum, lacinia turpis quis, accumsan turpis. Aenean tempus eget lacus sit amet egestas. Integer laoreet vel nulla et placerat. Maecenas tristique, ante sed gravida rhoncus, sapien felis lobortis sem, in rutrum ipsum felis a sapien. Nullam erat nisi, pellentesque eleifend sapien a, sodales interdum velit. Vestibulum rutrum lectus et turpis volutpat finibus. Donec in auctor nulla, id venenatis lacus. Donec bibendum massa a nulla tincidunt tempus. Sed non purus erat. Duis tempus nunc nec eros porttitor, ac maximus purus lobortis. Nulla id nulla libero.', '2020-05-12T10:00', '2020-05-12T12:00', 1, 16),
(9, 'Soutenance', 'Une description...', '2021-01-01T10:00', '2021-01-01T11:00', 1, 17);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(50) COLLATE utf8_bin NOT NULL,
  `score` int(4) NOT NULL,
  `userStatus` varchar(20) COLLATE utf8_bin NOT NULL,
  `adminStatus` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `password`, `email`, `score`, `userStatus`, `adminStatus`) VALUES
(1, 'Admin', '21232f297a57a5a743894a0e4a801fc3', 'grootisep@gmail.com', 0, 'on', 1),		/* admin */
(2, 'KANI', '0a5b3913cbc9a9092311630e869b4442', 'kaveh.n@hotmail.fr', 20, 'on', 0),			/* aze */
(4, 'user-1', '202cb962ac59075b964b07152d234b70', 'user1@isep.fr', 10, 'on', 0),			/* 123 for all user-x */
(5, 'user-2', '202cb962ac59075b964b07152d234b70', 'user2@isep.fr', 100, 'on', 0),
(6, 'user-3', '202cb962ac59075b964b07152d234b70', 'user3@isep.fr', 10, 'on', 0),
(7, 'user-4', '202cb962ac59075b964b07152d234b70', 'user4@isep.fr', 70, 'on', 0),
(8, 'user-5', '202cb962ac59075b964b07152d234b70', 'user5@isep.fr', 55, 'on', 0),
(9, 'user-6', '202cb962ac59075b964b07152d234b70', 'user6@isep.fr', 5, 'on', 0),
(10, 'user-7', '202cb962ac59075b964b07152d234b70', 'user7@isep.fr', 20, 'on', 0),
(11, 'user-8', '202cb962ac59075b964b07152d234b70', 'user8@isep.fr', 150, 'on', 0),
(12, 'user-9', '202cb962ac59075b964b07152d234b70', 'user9@isep.fr', 75, 'on', 0),
(13, 'user-10', '202cb962ac59075b964b07152d234b70', 'user10@isep.fr', 0, 'on', 0),
(16, 'Nina', '0a5b3913cbc9a9092311630e869b4442', 'nina.kaveh@isep.fr', 15, 'on', 0);		/* aze */
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
