-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 24 avr. 2023 à 16:20
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
-- Base de données : `bibliotheque2`
--
CREATE DATABASE IF NOT EXISTS `bibliotheque2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bibliotheque2`;

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
  `resume_li` varchar(1000) DEFAULT NULL,
  `type_li` varchar(42) DEFAULT NULL,
  `auteur_li` varchar(42) DEFAULT NULL,
  `nb_exemplaire_li` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_li`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_li`, `titre_li`, `date_parution_li`, `resume_li`, `type_li`, `auteur_li`, `nb_exemplaire_li`) VALUES
(1, 'Harry Potter  à l\'école des sorciers ', '1999', 'sorcier à l\'école de magie', 'merveilleux', 'jk rowling', '3'),
(4, 'Jamais sans ma fille ', '1990', 'histoire d\'une enfant volé par son père', 'Dramatique et histoire vrai ', 'Mapoucq', '10'),
(5, 'harry potter et la chambre des secrets ', '2000', 'la deuxième année au collège Poudlard', 'merveilleux', 'JK Rowling', '3'),
(6, 'Parce que je t\'aime ', '2017', 'Layla, une petite fille de cinq ans, disparaît dans un centre commercial de Los Angeles. Brisés, ses parents finissent par se séparer. Cinq ans plus tard, Layla est retrouvée à l\'endroit exact où on avait perdu sa trace. Elle est vivante, mais reste plongée dans un étrange mutisme. À la joie des retrouvailles, succèdent les interrogations. Où était Layla pendant toutes ces années ? Avec qui ? Et surtout : pourquoi est-elle revenue ?', 'suspense', 'Guillaume Musso', '4'),
(7, 'La jeune fille et la nuit', '2019', 'Un campus prestigieux figé sous la neige Trois amis liés par un secret tragique Une jeune fille emportée par la nuit  Côte d’Azur - Hiver 1992 Une nuit glaciale, alors que le campus de son lycée est paralysé par une tempête de neige, Vinca Rockwell, 19 ans, s’enfuit avec son professeur de philo avec qui elle entretenait une relation secrète. Personne ne la reverra jamais.  Côte d’Azur - Printemps 2017 Autrefois inséparables, Fanny, Thomas et Maxime – les meilleurs amis de Vinca – ne se sont plus parlé depuis la fin...', 'suspense', 'Guillaume Musso', '2'),
(8, 'l\'Inconnue de la Seine ', '2021', 'Par une nuit brumeuse de décembre, une jeune femme est repêchée dans la Seine au niveau du Pont-Neuf. Nue, amnésique, mais vivante. Très agitée, elle est conduite à l’infirmerie de la préfecture de police de Paris… d’où elle s’échappe au bout de quelques heures.  Les analyses ADN et les photos révèlent son identité : il s’agit de la célèbre pianiste Milena Bergman. Mais c’est impossible, car Milena est morte dans un crash d’avion, il y a plus d’un an.', 'suspense', 'Guillaume Musso', '1'),
(9, 'Trois vies par semaine', '2023', 'Habiter trois villes différentes ? Posséder trois identités reconnues ? Aimer trois femmes intensément ? Avoir trois vies par semaine. Pour tirer les fils de ce nouveau suspense qui mêle les thèmes de l\'exil, la vengeance, la multiplicité d\'une vie... l\'unique Michel Bussi.Un mort Deux disparus Trois femmes amoureuses  Un corps est retrouvé dans la vallée de la Meuse, au cœur des Ardennes. Accident, suicide, meurtre ? La révélation de l\'identité de la victime plonge la capitaine Katel Marelle dans la sidération....', 'drame', 'Michel Bussi', '2'),
(10, 'Nympheas noirs', '2013', 'Le jour paraît sur Giverny. Du haut de son moulin, une vieille dame veille, surveille. Le quotidien du village, les cars de touristes... Des silhouettes et des vies. Deux femmes, en particulier, se détachent : l\'une, les yeux couleur nymphéa, rêve d\'amour et d\'évasion ; l\'autre, onze ans, ne vit déjà que pour la peinture. Deux femmes qui vont se trouver au cœur d\'un tourbillon orageux. Car dans le village de Monet, où chacun est une énigme, où chaque âme a son secret, des drames vont venir diluer les illusions et raviver...', 'drame', 'Michel Bussi', '1'),
(11, 'Gagner n\'est pas jouer', '2022', 'Ne jamais sous-estimer les victimes...Un vieil homme est sauvagement assassiné à New York. À ses côtés, une toile de maître disparue depuis vingt ans et une valise portant les inscriptions WHL III. Windsor Horne Lockwood III. Win. Un privé aux méthodes très spéciales, héritier d\'une influente famille américaine. Quel lien entre ce crime abject et les Lockwood ?', 'policier', 'Harlan Coben', '1'),
(12, 'L\'inconnue de la foret ', '2021', 'Vous ignorez tout de lui. Mais il est le seul à pouvoir vous aider.Wilde. Son nom est une énigme, tout comme son passé. Il a grandi dans les bois. Seul. Aujourd\'hui, c\'est un enquêteur aux méthodes très spéciales. Vous ignorez tout de lui. Il est pourtant le seul à pouvoir retrouver votre fille et cet autre lycéen disparu. Le seul à pouvoir les délivrer d\'un chantage cruel. D\'un piège aux ramifications inimaginables. ', 'policier', 'Harlan Coben', '2'),
(13, 'L\'illusion', '2022', 'Au croisement du roman policier et du fantastique, L\'Illusion est un thriller en huis-clos qui ne cessera de vous oppresser.Bienvenue à Val Quarios, petite station de ski familiale qui ferme ses portes l\'été. Ne reste alors qu\'une douzaine de saisonniers au milieu de bâtiments déserts. Hugo vient à peine d\'arriver, mais, déjà, quelque chose l\'inquiète. Ce sentiment d\'être épié, ces \" visions \" qui le hantent et cette disparition soudaine... Quels secrets terrifiants se cachent derrière ces murs ? Hugo va devoir affronter...', 'fantastique', 'Maxime Chattam', '1'),
(14, 'Le signal', '2020', 'La famille Spencer vient de s\'installer à Mahingan Falls, une petite ville de la Nouvelle-Angleterre. Jusqu\'ici, tout va bien. Un vrai paradis. Si ce n\'étaient ces vieilles rumeurs de sorcellerie, ces communications téléphoniques brouillées par des cris inhumains, ce quelque chose d\'effrayant dans la forêt qui pourchasse les adolescents, et ce shérif complètement dépassé par des crimes horribles.  Avez-vous déjà eu vraiment peur en lisant un livre ?', 'horreur', 'Maxime Chattam', '2');

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
