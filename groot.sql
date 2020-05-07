-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 07 mai 2020 à 13:37
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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `date`, `title`, `content`, `authorId`, `isPublished`) VALUES
(1, '2020-05-06', 'First article', 'Bonjour', 2, 1),
(2, '2020-05-06', 'First article', 'azerty', 2, 0),
(3, '2020-05-06', 'Second article', 'Test !!!!', 2, 0);

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `dateStartTime`, `dateEndTime`, `isPublished`, `authorId`) VALUES
(1, 'marche pour le climat', 'révolution !!!!!!', '2020-08-12', '2020-08-15', 1, 2),
(3, 'Another event', 'Blabla, hello', '2022-11-11T22:22', '2033-12-12T23:23', 0, 6);

-- --------------------------------------------------------

--
-- Structure de la table `history`
--

DROP TABLE IF EXISTS `history`;
CREATE TABLE IF NOT EXISTS `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(10) NOT NULL,
  `type` varchar(60) NOT NULL,
  `content` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `password`, `email`, `score`, `userStatus`, `adminStatus`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@groot.com', 0, 'on', 1),					/*mdp=admin*/
(2, 'KANI', '0a5b3913cbc9a9092311630e869b4442', 'kaveh.n@hotmail.fr', 15, 'on', 0),					/*mdp=aze*/
(4, 'user-1', '202cb962ac59075b964b07152d234b70', 'user1@isep.fr', 0, 'on', 0),						/*mdp=123*/
(5, 'user-2', '202cb962ac59075b964b07152d234b70', 'user2@isep.fr', 100, 'on', 0),
(6, 'user-3', '202cb962ac59075b964b07152d234b70', 'user3@isep.fr', 10, 'on', 0),
(7, 'user-4', '202cb962ac59075b964b07152d234b70', 'user4@isep.fr', 70, 'on', 0),
(8, 'user-5', '202cb962ac59075b964b07152d234b70', 'user5@isep.fr', 55, 'on', 0),
(9, 'user-6', '202cb962ac59075b964b07152d234b70', 'user6@isep.fr', 5, 'on', 0),
(10, 'user-7', '202cb962ac59075b964b07152d234b70', 'user7@isep.fr', 20, 'on', 0),
(11, 'user-8', '202cb962ac59075b964b07152d234b70', 'user8@isep.fr', 150, 'on', 0),
(12, 'user-9', '202cb962ac59075b964b07152d234b70', 'user9@isep.fr', 75, 'on', 0),
(13, 'user-10', '202cb962ac59075b964b07152d234b70', 'user10@isep.fr', 0, 'on', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
