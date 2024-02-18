-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 15 fév. 2024 à 05:22
-- Version du serveur : 8.2.0
-- Version de PHP : 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mvc`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id_article` int NOT NULL AUTO_INCREMENT,
  `article_categorie` int NOT NULL,
  `titre` varchar(100) NOT NULL,
  `contenu` text NOT NULL,
  `slug` varchar(40) NOT NULL,
  `image_id` int DEFAULT NULL,
  PRIMARY KEY (`id_article`),
  KEY `fk_article_image` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_article`, `article_categorie`, `titre`, `contenu`, `slug`, `image_id`) VALUES
(1, 2, 'Les statistiques sur les plus gros mensonges des programmeurs viennent de tomber', '1) Le site devrait fonctionner maintenant.<br/>\r\n2) ça ne prendra qu\'un instant.<br/>\r\n3) Je le ferai plus tard.<br/>\r\n4) C\'est un bug facile à corriger.<br/>', 'dev_web_et_mensonges', NULL),
(2, 1, 'Jeanne d\'arc a la fibre', 'Et oui, elle a Free !', 'jeanne_d_arc', NULL),
(3, 1, 'Quel IDE choisir ?', 'Visual Studio Code ? Non aucun challenge.<br/>\r\nAtom ? Encore trop simple !<br/>\r\nWord ? Voilà, ça c\'est un défi.<br/>', 'quel_ide', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id_categories` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  PRIMARY KEY (`id_categories`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id_categories`, `titre`, `slug`) VALUES
(1, 'Paul Itique', 'paul_itique'),
(2, 'Aime Otion', 'aime_otion');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id_image` int NOT NULL,
  `image_url` varchar(2048) DEFAULT NULL,
  `article_id` int DEFAULT NULL,
  PRIMARY KEY (`id_image`),
  KEY `fk_image_article` (`article_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_article_image` FOREIGN KEY (`image_id`) REFERENCES `images` (`id_image`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `fk_image_article` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id_article`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
