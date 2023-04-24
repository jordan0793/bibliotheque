-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 17 avr. 2023 à 14:17
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliotheque`
--
CREATE DATABASE `bibliotheque2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
;

-- --------------------------------------------------------

--
-- Structure de la table `abonnement`
--

DROP TABLE IF EXISTS `abonnement`;
CREATE TABLE IF NOT EXISTS `abonnement` (
  `id_abon` int(42) NOT NULL AUTO_INCREMENT,
  `num_abon` varchar(42) DEFAULT NULL,
  `date_abon` varchar(42) DEFAULT NULL,
  `montant_abon` varchar(42) DEFAULT NULL,
  `date_debut_abon` varchar(42) DEFAULT NULL,
  `date_fin_abon` varchar(42) DEFAULT NULL,
  `id_i` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_abon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `appartient`
--

DROP TABLE IF EXISTS `appartient`;
CREATE TABLE IF NOT EXISTS `appartient` (
  `id_li` int(42) NOT NULL AUTO_INCREMENT,
  `id_gen` int(42) NOT NULL,
  PRIMARY KEY (`id_li`,`id_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
CREATE TABLE IF NOT EXISTS `auteur` (
  `id_a` int(42) NOT NULL AUTO_INCREMENT,
  `prenom_a` varchar(42) DEFAULT NULL,
  `nom_a` varchar(42) DEFAULT NULL,
  `date_naissance_a` varchar(42) DEFAULT NULL,
  `pays_origine_auteur` varchar(42) DEFAULT NULL,
  `bio_a` varchar(42) DEFAULT NULL,
  `nom_po` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `concerne`
--

DROP TABLE IF EXISTS `concerne`;
CREATE TABLE IF NOT EXISTS `concerne` (
  `ref_ex` int(42) NOT NULL AUTO_INCREMENT,
  `id_em` int(42) NOT NULL,
  PRIMARY KEY (`ref_ex`,`id_em`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ecrire`
--

DROP TABLE IF EXISTS `ecrire`;
CREATE TABLE IF NOT EXISTS `ecrire` (
  `id_li` int(42) NOT NULL AUTO_INCREMENT,
  `id_a` int(42) NOT NULL,
  PRIMARY KEY (`id_li`,`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `edition`
--

DROP TABLE IF EXISTS `edition`;
CREATE TABLE IF NOT EXISTS `edition` (
  `id_ed` int(42) NOT NULL AUTO_INCREMENT,
  `nom_ed` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_ed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

DROP TABLE IF EXISTS `emprunt`;
CREATE TABLE IF NOT EXISTS `emprunt` (
  `id_em` int(42) NOT NULL AUTO_INCREMENT,
  `date_em` varchar(42) DEFAULT NULL,
  `delai_em` varchar(42) DEFAULT NULL,
  `statut_em` varchar(42) DEFAULT NULL,
  `id_i` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_em`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `exemplaire`
--

DROP TABLE IF EXISTS `exemplaire`;
CREATE TABLE IF NOT EXISTS `exemplaire` (
  `ref_ex` int(42) NOT NULL AUTO_INCREMENT,
  `cote_ex` varchar(42) DEFAULT NULL,
  `id_li` varchar(42) DEFAULT NULL,
  `id_ed` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`ref_ex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id_gen` int(42) NOT NULL AUTO_INCREMENT,
  `livre_gen` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `inscrit`
--

DROP TABLE IF EXISTS `inscrit`;
CREATE TABLE IF NOT EXISTS `inscrit` (
  `id_i` int(42) NOT NULL AUTO_INCREMENT,
  `num_i` varchar(42) DEFAULT NULL,
  `nom_i` varchar(42) DEFAULT NULL,
  `prenom_i` varchar(42) DEFAULT NULL,
  `adresse_i` varchar(42) DEFAULT NULL,
  `tel_i` varchar(42) DEFAULT NULL,
  `email_i` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_i`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `id_li` int(42) NOT NULL AUTO_INCREMENT,
  `titre_li` varchar(42) DEFAULT NULL,
  `date_parution_li` varchar(42) DEFAULT NULL,
  `resume_li` varchar(42) DEFAULT NULL,
  `type_li` varchar(42) DEFAULT NULL,
  `auteur_li` varchar(42) DEFAULT NULL,
  `nb_exemplaire_li` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_li`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_li`, `titre_li`, `date_parution_li`, `resume_li`, `type_li`, `auteur_li`, `nb_exemplaire_li`) VALUES
(1, 'Harry Potter  à l\'école des sorciers ', '1999', 'socrcier à l\'école de magie', 'fantastique ', 'JK Rowling', '3'),
(2, 'lolo', '15 juin 1993', 'resume', 'policier', 'lolo', '3'),
(3, 'Jamais sans ma fille ', '1990', 'histoire d\'une enfant volé par son père', 'Dramatique et histoire vrai ', 'Mapoucq', '10'),
(4, 'Jamais sans ma fille ', '1990', 'histoire d\'une enfant volé par son père', 'Dramatique et histoire vrai ', 'Mapoucq', '10');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `utilisateurs_id` int(4) NOT NULL AUTO_INCREMENT,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL,
  `roles` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`utilisateurs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`utilisateurs_id`, `email`, `password`, `username`, `roles`) VALUES
(1, 'jordanafpa@gmail.com', '$2y$10$xyNVk8vMBCxqgfQlTyJ9UOJjph46z8WM8g5ugAfBiUzU8CseQwIYO', 'jordan', '[\"ROLE_USER\"][\"ROLE_ADMIN\"]'),
(4, 'lala@gmail.com', '$2y$10$Z1Oaei6HyeRp6yuLxQlmAuKi5XnJG/V7aCsiqfu/qHa8wUhkA21fK', 'lala', '[\"ROLE_USER\"]');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
