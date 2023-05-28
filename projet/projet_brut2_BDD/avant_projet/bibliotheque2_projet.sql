-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 19 mai 2023 à 14:48
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
  `titre_li` varchar(100) DEFAULT NULL,
  `date_parution_li` int(10) DEFAULT NULL,
  `resume_li` varchar(1000) DEFAULT NULL,
  `type_li` varchar(42) DEFAULT NULL,
  `auteur_li` varchar(42) DEFAULT NULL,
  `nb_exemplaire_li` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_li`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`id_li`, `titre_li`, `date_parution_li`, `resume_li`, `type_li`, `auteur_li`, `nb_exemplaire_li`) VALUES
(1, 'Harry Potter  à l\'école des sorciers ', 1999, 'Le jour de ses onze ans, Harry Potter, un orphelin élevé par un oncle et une tante qui le détestent, voit son existence bouleversée. Un géant vient le chercher pour l\'emmener à Poudlard, une école de sorcellerie ! Voler en balai, jeter des sorts, combattre les trolls : Harry révèle de grands talents. Mais un mystère entoure sa naissance et l\'effroyable V., le mage dont personne n\'ose prononcer le nom.', 'fantastique', 'jk rowling', 3),
(4, 'Jamais sans ma fille ', 1992, 'Dans l\'avion qui l\'emmène à Téhéran avec son mari, d\'origine iranienne, et sa fille, Betty a le sentiment d\'avoir commis une erreur irréparable... Quelques jours plus tard, son existence bascule dans le cauchemar. Le verdict tombe : \" Tu ne quitteras jamais l\'Iran ! Tu y resteras jusqu\'à ta mort. \" En proie au fanatisme religieux, son mari se transforme en geôlier. Elle n\'a désormais qu\'un objectif : rentrer chez elle, aux États-Unis, avec sa fille. Quitter ce monde incohérent où la femme n\'existe pas. Pour...', 'drame', 'Betty Mahmoody ', 1),
(5, 'harry potter et la chambre des secrets ', 2000, 'Une rentrée fracassante en voiture volante, une étrange malédiction qui s\'abbat sur les élèves... cette nouvelle année à l\'école des sorciers ne s\'annonce pas de tout repos ! Entre les cours de potions magiques, les matchs de Quidditch et les combats de mauvais sorts, Harry et ses amis Ron et Hermione trouveront-ils le temps de percer le mystère de la Chambre des Secrets ?', 'fantastique', 'jk rowling', 3),
(6, 'Parce que je t\'aime ', 2017, 'Layla, une petite fille de cinq ans, disparaît dans un centre commercial de Los Angeles. Brisés, ses parents finissent par se séparer. Cinq ans plus tard, Layla est retrouvée à l\'endroit exact où on avait perdu sa trace. Elle est vivante, mais reste plongée dans un étrange mutisme. À la joie des retrouvailles, succèdent les interrogations. Où était Layla pendant toutes ces années ? Avec qui ? Et surtout : pourquoi est-elle revenue ?', 'suspense', 'Guillaume Musso', 4),
(7, 'La jeune fille et la nuit', 2019, 'Un campus prestigieux figé sous la neige Trois amis liés par un secret tragique Une jeune fille emportée par la nuit  Côte d’Azur - Hiver 1992 Une nuit glaciale, alors que le campus de son lycée est paralysé par une tempête de neige, Vinca Rockwell, 19 ans, s’enfuit avec son professeur de philo avec qui elle entretenait une relation secrète. Personne ne la reverra jamais.  Côte d’Azur - Printemps 2017 Autrefois inséparables, Fanny, Thomas et Maxime – les meilleurs amis de Vinca – ne se sont plus parlé depuis la fin...', 'suspense', 'Guillaume Musso', 2),
(8, 'l\'Inconnue de la Seine ', 2021, 'Par une nuit brumeuse de décembre, une jeune femme est repêchée dans la Seine au niveau du Pont-Neuf. Nue, amnésique, mais vivante. Très agitée, elle est conduite à l’infirmerie de la préfecture de police de Paris… d’où elle s’échappe au bout de quelques heures.  Les analyses ADN et les photos révèlent son identité : il s’agit de la célèbre pianiste Milena Bergman. Mais c’est impossible, car Milena est morte dans un crash d’avion, il y a plus d’un an.', 'suspense', 'Guillaume Musso', 1),
(9, 'Trois vies par semaine', 2023, 'Habiter trois villes différentes ? Posséder trois identités reconnues ? Aimer trois femmes intensément ? Avoir trois vies par semaine. Pour tirer les fils de ce nouveau suspense qui mêle les thèmes de l\'exil, la vengeance, la multiplicité d\'une vie... l\'unique Michel Bussi.Un mort Deux disparus Trois femmes amoureuses  Un corps est retrouvé dans la vallée de la Meuse, au cœur des Ardennes. Accident, suicide, meurtre ? La révélation de l\'identité de la victime plonge la capitaine Katel Marelle dans la sidération....', 'drame', 'Michel Bussi', 2),
(10, 'Nympheas noirs', 2013, 'Le jour paraît sur Giverny. Du haut de son moulin, une vieille dame veille, surveille. Le quotidien du village, les cars de touristes... Des silhouettes et des vies. Deux femmes, en particulier, se détachent : l\'une, les yeux couleur nymphéa, rêve d\'amour et d\'évasion ; l\'autre, onze ans, ne vit déjà que pour la peinture. Deux femmes qui vont se trouver au cœur d\'un tourbillon orageux. Car dans le village de Monet, où chacun est une énigme, où chaque âme a son secret, des drames vont venir diluer les illusions et raviver...', 'drame', 'Michel Bussi', 1),
(11, 'Gagner n\'est pas jouer', 2022, 'Ne jamais sous-estimer les victimes...Un vieil homme est sauvagement assassiné à New York. À ses côtés, une toile de maître disparue depuis vingt ans et une valise portant les inscriptions WHL III. Windsor Horne Lockwood III. Win. Un privé aux méthodes très spéciales, héritier d\'une influente famille américaine. Quel lien entre ce crime abject et les Lockwood ?', 'policier', 'Harlan Coben', 1),
(12, 'L\'inconnue de la foret ', 2021, 'Vous ignorez tout de lui. Mais il est le seul à pouvoir vous aider.Wilde. Son nom est une énigme, tout comme son passé. Il a grandi dans les bois. Seul. Aujourd\'hui, c\'est un enquêteur aux méthodes très spéciales. Vous ignorez tout de lui. Il est pourtant le seul à pouvoir retrouver votre fille et cet autre lycéen disparu. Le seul à pouvoir les délivrer d\'un chantage cruel. D\'un piège aux ramifications inimaginables. ', 'policier', 'Harlan Coben', 2),
(13, 'L\'illusion', 2022, 'Au croisement du roman policier et du fantastique, L\'Illusion est un thriller en huis-clos qui ne cessera de vous oppresser.Bienvenue à Val Quarios, petite station de ski familiale qui ferme ses portes l\'été. Ne reste alors qu\'une douzaine de saisonniers au milieu de bâtiments déserts. Hugo vient à peine d\'arriver, mais, déjà, quelque chose l\'inquiète. Ce sentiment d\'être épié, ces \" visions \" qui le hantent et cette disparition soudaine... Quels secrets terrifiants se cachent derrière ces murs ? Hugo va devoir affronter...', 'fantastique', 'Maxime Chattam', 1),
(14, 'Le signal', 2020, 'La famille Spencer vient de s\'installer à Mahingan Falls, une petite ville de la Nouvelle-Angleterre. Jusqu\'ici, tout va bien. Un vrai paradis. Si ce n\'étaient ces vieilles rumeurs de sorcellerie, ces communications téléphoniques brouillées par des cris inhumains, ce quelque chose d\'effrayant dans la forêt qui pourchasse les adolescents, et ce shérif complètement dépassé par des crimes horribles.  Avez-vous déjà eu vraiment peur en lisant un livre ?', 'horreur', 'Maxime Chattam', 2),
(15, 'harry potter et le prisonnier d\'azkaban', 2004, 'Sirius Black, le dangereux criminel qui s\'est échappé de la forteresse d\'Azkaban, recherche Harry Potter. C\'est donc sous bonne garde que l\'apprenti sorcier fait sa rentrée à Poudlard. Au programme : des cours de divination, la fabrication d\'une potion de Ratatinage, le dressage des hippogriffes... Mais Harry est-il vraiment à l\'abri du danger qui le menace ?', 'fantastique', 'jk rowling', 2),
(16, ' Harry Potter et la Coupe de Feu', 2005, 'En ce début d\'année à Poudlard, une grande nouvelle attend Harry, Ron et Hermione : la tenue d\'un tournoi de magie exceptionnel entre les plus célèbres écoles de sorcellerie. Déjà les délégations étrangères font leur entrée. Harry se réjouit... Trop vite. Il va au-devant des événements les plus dramatiques qu\'il ait jamais connus.', 'fantastique', 'jk rowling', 3),
(17, 'Harry Potter et l\'Ordre du Phénix', 2006, 'À quinze ans, Harry entre en cinquième année à Poudlard, mais il n\'a jamais été si anxieux. L\'adolescence, la perspective des examens et ces étranges cauchemars... Car Celui-Dont-On-Ne-Doit-Pas-Prononcer-Le-Nom est de retour. Le ministère de la Magie semble ne pas prendre cette menace au sérieux, contrairement à Dumbledore. La résistance s\'organise alors autour de Harry, qui va devoir compter sur le courage et la fidélité de ses amis...', 'fantastique', 'jk rowling', 1),
(18, 'Harry Potter et le Prince de Sang-Mêlé', 2006, 'Dans un monde de plus en plus inquiétant, Harry se prépare à retrouver Ron et Hermione. Bientôt, ce sera la rentrée à Poudlard, avec les autres élèves de sixième année. Mais pourquoi Dumbledore vient-il en personne chercher Harry chez les Dursley ?', 'fantastique', 'jk rowling', 1),
(27, 'Harry Potter et les Reliques de la Mort', 2007, 'Cette année, Harry a dix-sept ans et ne retourne pas à Poudlard. Avec Ron et Hermione, il se consacre à la dernière mission confiée par Dumbledore. Mais le Seigneur des Ténèbres règne en maître. Traqués, les trois fidèles amis sont contraints à la clandestinité. D\'épreuves en révélations, le courage, les choix et les sacrifices de Harry seront déterminants dans la lutte contre les forces du Mal.', 'fantastique', 'jk rowling', 3),
(28, 'Ils étaient dix', 2020, 'Ils sont dix à avoir reçu l’invitation  : des vacances d’été sur l’île du Soldat  ! Voilà une proposition à laquelle personne ne saurait résister. Non seulement c’est gratuit, mais l’île a tant fait parler d’elle  ! Chacun se demande qui est son nouveau propriétaire – une star d’Hollywood, un milliardaire américain, ou l’Amirauté britannique qui s’y livrerait à des expériences ultrasecrètes  ? Aussi, sans vraiment connaître leur hôte, ils accourent volontiers  : le médecin, le play-boy, la jeune prof de gym, le juge à la...', 'policier', 'Agatha Christie', 1),
(29, 'La mort n\'est pas une fin', 2014, 'Quand Renisenb revient au foyer après la mort de son époux, elle retrouve sa famille telle qu’elle l’avait quittée. Mais depuis que son père, Imhotep, a ramené une nouvelle concubine de son voyage dans le Nord, tout semble différent. La jeune femme à la beauté sans pareille a ensorcelé le maître. Habitée par un génie maléfique, elle sème le désordre et la haine dans le domaine comme dans la fratrie. Si elle venait à disparaître, le cœur d’Imothep retournerait à ses fils. Il suffirait d’écraser le serpent, et tout...', 'policier', 'Agatha Christie', 1),
(30, 'Mort sur le Nil', 2012, 'Quoi de plus reposant et tranquille qu’une croisière sur le Nil ? Sauf quand on retrouve à bord le corps de Linnet Ridgeway tuée d’une balle dans la tête. Linnet avait tout pour elle, jeunesse, beauté, richesse… tout jusqu’à ce qu’elle perde la vie !  Parmi les passagers, tous sous le choc d’une telle découverte, se trouve Hercule Poirot, le célèbre détective belge. Et voilà que justement il se rappelle avoir entendu un homme dire au sujet de la victime : « Je poserai bien mon pistolet contre sa tempe et j’appuierai sur...', 'policier', 'Agatha Christie', 1),
(31, 'L\'écume des jours', 1997, 'Un titre léger et lumineux qui annonce une histoire d’amour drôle ou grinçante, tendre ou grave, fascinante et inoubliable, composée par un écrivain de vingt-six ans. C’est un conte de l’époque du jazz et de la science-fiction, à la fois comique et poignant, heureux et tragique, féerique et déchirant. Dans cette œuvre d’une modernité insolente, livre culte depuis plus de cinquante ans, Duke Ellington croise le dessin animé, Sartre devient une marionnette burlesque, la mort prend la forme d’un nénuphar, le cauchemar va jusqu...', 'fantastique drame', 'Boris Vian', 1),
(32, 'La Nostalgie heureuse', 2015, 'Je plonge dans la foule. Tout ce qui la traverse me traverse. (…) Je voudrais que cela ne s’arrête pas. Je suis une aspirine effervescente qui se dissout dans Tokyo. A. N.Cela faisait seize ans qu’Amélie Nothomb n’était pas retournée au Japon, son pays natal qu’elle n’a cessé d’imaginer, de réinventer. Sous sa plume et dans son cœur, il était devenu fiction. Mais dans ce récit autobiographique, tout se veut réel. L’auteur de Stupeur et tremblements retrouve des lieux, des êtres qui ont compté (Nishio-san, sa nounou adorée,', 'biographie autobiographie', 'Amélie Nothomb ', 1),
(33, 'Antéchrista', 2005, 'Avoir pour amie la fille la plus admirée de la fac, belle, séduisante, brillante, enjouée, audacieuse ? Lorsque Christa se tourne vers elle, la timide et solitaire Blanche n’en revient pas de ce bonheur presque écrasant. Elle n’hésite pas à tout lui donner, et elle commence par l’installer chez elle pour lui épargner de longs trajets en train. Blanche va très vite comprendre dans quel piège redoutable elle est tombée. Car sa nouvelle amie se révèle une inquiétante manipulatrice qui a besoin de s’affirmer en torturant une...', 'drame', 'Amélie Nothomb ', 1),
(34, 'La Guerre des mondes', 2019, 'La Guerre des mondes (The War of the Worlds) est un roman de science-fiction écrit par H. G. Wells, publié en 1898. C\'est une des premières oeuvres d\'imagination dont le sujet est l\'humanité confrontée à une race extraterrestre hostile, en plus d\'être le reflet de l\'angoisse de l\'époque victorienne et de l\'impérialisme. Le roman a été adapté en feuilletons radiophoniques (dont une version d\'Orson Welles qui aurait défrayé la chronique en 19383), en jeux de rôle, en bande dessinée ainsi qu\'en deux longs-métrages (le premier...', 'science fiction', 'Herbert Georges Wells', 3),
(35, 'Voyage au centre de la terre', 1972, 'Dans la petite maison du vieux quartier de Hambourg où Axel, jeune homme assez timoré, travaille avec son oncle, l’irascible professeur Lidenbrock, géologue et minéralogiste, dont il aime la pupille, la charmante Graüben, l’ordre des choses est soudain bouleversé. Dans un vieux manuscrit, Lidenbrock trouve un cryptogramme. Arne Saknussemm, célèbre savant islandais du xvie siècle, y révèle que par la cheminée du cratère du Sneffels, volcan éteint d’Islande, il a pénétré jusqu’au centre de la Terre ! Lidenbrock s’enflamme...', 'science fiction', 'Jules Verne ', 5),
(36, 'Vingt mille lieues sous les mers', 1976, 'Extraordinaire voyage dans les abysses océaniques', 'science fiction', 'Jules Verne ', 3),
(37, 'Identités croisées', 2022, 'WILDE. Il vit loin du monde, dans une forêt du New Jersey. C\'est un enquêteur aux méthodes très spéciales. Nul ne sait d\'où il vient, pas même lui. Un site internet, une recherche ADN et soudain une piste. Le secret de ses origines ? Enfin ? Un lointain cousin, star de téléréalité. Un homme suivi par une nation entière. Wilde touche au but mais le cousin disparaît. De lui ne reste qu\'une photo énigmatique postée sur les réseaux sociaux. Mise en scène ? Conspiration ? Pire encore ? Wilde est sur ses traces. Et il n...', 'policier', 'Harlan Coben', 1),
(38, 'Gagner n\'est pas jouer', 2022, 'Ne jamais sous-estimer les victimes...Un vieil homme est sauvagement assassiné à New York. À ses côtés, une toile de maître disparue depuis vingt ans et une valise portant les inscriptions WHL III. Windsor Horne Lockwood III. Win. Un privé aux méthodes très spéciales, héritier d\'une influente famille américaine. Quel lien entre ce crime abject et les Lockwood ? Si le FBI peine à comprendre, Win sait qu\'il tient ici la chance de résoudre enfin l\'énigme de l\'enlèvement de sa cousine, survenu vingt ans plus tôt lors du...', 'policier', 'Harlan Coben', 1),
(39, 'L\'Inconnu de la forêt', 2021, 'Vous ignorez tout de lui. Mais il est le seul à pouvoir vous aider.Wilde. Son nom est une énigme, tout comme son passé. Il a grandi dans les bois. Seul. Aujourd\'hui, c\'est un enquêteur aux méthodes très spéciales. Vous ignorez tout de lui. Il est pourtant le seul à pouvoir retrouver votre fille et cet autre lycéen disparu. Le seul à pouvoir les délivrer d\'un chantage cruel. D\'un piège aux ramifications inimaginables. Mais ne le perdez pas de vue. Car, dans la forêt, nombreux sont les dangers et rares sont les chemins qui...', 'policier', 'Harlan Coben', 1),
(40, 'La planète des singes', 2017, 'Y a-t-il des êtres humains ailleurs que dans notre galaxie ? C\'est la question que se posent le professeur Antelle, Arthur Levain, son second, et le journaliste Ulysse Mérou, lorsque, de leur vaisseau spatial, ils observent le paysage d\'une planète proche de Bételgeuse : on aperçoit des villes, des routes curieusement semblables à celles de notre Terre. Après s\'y être posés, les trois hommes découvrent que la planète est habitée par des singes. Ceux-ci s\'emparent d\'Ulysse Mérou et se livrent sur lui à des expériences. Il faudra que le journaliste fasse, devant les singes, la preuve de son humanité...', 'science fiction', 'Pierre Boulle', 4),
(41, 'Comme toi', 2019, 'Une troublante impression de déjà-vu...Ellie a disparu à l\'âge de quinze ans. Sa mère n\'a jamais réussi à faire son deuil, d\'autant plus que la police n\'a retrouvé ni le coupable ni le corps. Dix ans plus tard, cette femme brisée doit pourtant se résoudre à tourner la page. C\'est alors qu\'elle fait la connaissance de Floyd, un homme charmant, père célibataire, auquel elle se lie peu à peu. Mais lorsqu\'elle rencontre la fille de celui-ci, Poppy, âgée de neuf ans, le passé la rattrape brutalement : cette fillette est le...', 'suspense', 'Lisa Jewell', 1),
(42, 'On se reverra', 2018, 'Les souvenirs, c’est comme les cadavres  : tôt ou tard, ils refont surface.Qui est cet homme assis sur la plage en pleine tempête, sur le lieu d’un crime commis vingt ans plus tôt  ? Il n’a pas de nom, pas de manteau, et a perdu la mémoire. Alice prend l’inconnu sous son aile et décide de l’héberger, sans savoir qu’il va bouleverser sa vie à jamais.Au même moment, dans la banlieue de Londres, Lily attend en vain le retour de l’homme qu’elle vient d’épouser et dont la police tarde à signaler la disparition. Parviendra-t-elle...', 'suspense', 'Lisa Jewell', 1),
(43, 'L\'Autre Femme de ta vie', 2020, 'Tu n\'auras pas mon fils...La vie d\'Emily est bouleversée le jour où son chemin croise celui d\'Adam. Elle a la certitude d\'avoir rencontré l\'homme qu\'elle attendait depuis longtemps. Mais lorsqu\'il la demande en mariage et lui présente sa famille, l\'idylle vire au cauchemar. La jeune fiancée découvre avec horreur qu\'elle a une rivale : la mère d\'Adam, qui affiche une hostilité marquée à son égard. Cette belle-mère envahissante, manipulatrice et sans scrupules est prête à tout pour empêcher leur union. Dès lors, une menace...', 'suspense', 'Sandie Jones', 2),
(44, 'Entre les lignes', 2019, 'Vous êtes à l’hôpital et vous ne vous souvenez de rien. À qui pouvez-vous faire confiance  ?Fascinant, bourré de suspense et de retournements, ce thriller psychologique vous tiendra en haleine jusqu’à la dernière page. Fans de Sisters  de Michelle Adams et du Couple d’à côté de Shari Lapena, ce livre est pour vous  !Quand Chloé Daniels ouvre les yeux, elle n’a aucun souvenir des événements qui l’ont conduite à l’hôpital. Complètement amnésique, elle ne reconnaît personne autour d’elle – ni sa famille ni son reflet dans le...', 'psychologique', 'Michelle Adams ', 1),
(45, 'L\'Erreur', 2020, 'Sasha a toujours voulu un bébé. Sa grossesse se déroule à merveille, jusqu\'au jour où elle se retrouve à l\'hôpital pour subir une césarienne d\'urgence. À son réveil, elle demande à voir son enfant. Alors qu\'elle s\'attend à vivre un moment magique, Sasha plonge dans un cauchemar bien réel. Le nourrisson qu\'on lui amène n\'est pas le sien. La jeune mère n\'a aucun doute, même si personne ne la croit. Si le bébé devant elle n\'est pas le sien, où est passé son enfant ? Et qui a pu faire cette erreur ?', 'psychologique', 'Susi Fox', 1),
(46, 'Avant d\'aller dormir', 2013, 'Chaque matin, c\'est le même effroi. La même surprise. En se découvrant dans la glace, Christine a vieilli de vingt ans. Elle ne connaît ni cette maison, ni l\'homme qui partage son lit. Et chaque matin, Ben lui raconte. L\'accident. L\'amnésie... Ensuite, Christine lit son journal, son seul secret. Et découvre les incohérences, les questions, tout ce qu\'on lui cache chaque matin, posément. Peut-être pour son bien... Peut-être pas.  Cet ouvrage a reçu le prix SNCF du Polar 2012   Prix SCNF du Polar 2012.', 'policier psychologique', 'Steven J. Watson', 2),
(47, 'Tombée du nid', 2017, '\" Le 31 mai 2013, tu arrives, enfin. C\'est l\'excitation générale à la maison. Ton lit est prêt depuis début janvier. Nous avons choisi avec les enfants tes doudous, ta turbulette. Tout le monde veut dormir avec toi. La première nuit est magique. Impossible pour moi de fermer l\'œil, je tiens ta main si petite. Tu dors paisiblement comme si tu étais installée dans ton \"nid\' depuis toujours. Je ne me lasse pas de te regarder comme un trésor... Un trésor enfin trouvé. \" Clotilde Noël raconte son parcours pour adopter Marie,...', 'biographie', 'Clotilde Noël Tim Guénard  Marion Guénard', 3),
(48, 'Frida Kahlo, Autoportrait d\'une femme', 1999, 'Frida Kahlo (1907-1954) vécut une brève existence déchirée entre de terribles souffrances physiques (à dix-huit ans, un accident de bus la cloue au lit pour deux ans) et une immense force de création (elle commence à peindre, un miroir installé au-dessus d\'elle, pendant qu\'elle est immobilisée). Par-delà sa beauté célèbre, ses amours, celles de son mari, Diego Rivera, ses voyages, les mille et une anecdotes ponctuant une existence tumultueuse et riche, reste son art, dont André Breton disait que c\'est \"un ruban autour d\'une...', 'biographie', 'Rauda Jamis ', 1),
(49, 'Merci pour ce moment', 2015, 'Un jour, un amour violent a incendié ma vie. Il avait quatre enfants. J\'en avais trois. Nous avons décidé de vivre ensemble. Mais la politique est une passion dévorante. Parti de très loin, François Hollande a été élu président de la République. J\'ai été aspirée dans son sillage. Le pouvoir est une épreuve pour celui qui l\'exerce, mais aussi pour les siens. À l\'Elysée, je me sentais souvent illégitime. La petite fille de la ZUP en première dame : il y avait quelque chose qui clochait. J\'ai appris l\'infidélité du Président...', 'biographie politique', 'Valérie Trierweiler ', 1),
(50, 'Quand les politiques nous faisaient rire', 2021, 'L\'humour est un art en politique. L\'auteur, qui le pratique lui-même avec talent, nous livre un inventaire désopilant de répliques et bons mots qu\'il a glanés tout au long de son parcours.L\'humour est un art en politique. Jean-Louis Debré, qui le pratique lui-même avec grand talent, nous livre un florilège désopilant de répliques et bons mots glanés tout au long de son parcours. L\'ironie et l\'humour étaient des armes fréquemment utilisées par les politiques pour déstabiliser un adversaire, éviter de répondre à un...', 'politique humour', 'Jean-Louis Debré', 1),
(51, '3 minutes pour comprendre les 50 plus grandes théories politiques', 2012, 'La démocratie, l\'impérialisme, l\'oligarchie, la théocratie, le marxisme, le maoïsme... Bien sûr, vous en avez déjà entendu parler, mais savez-vous vraiment de quoi il s\'agit ? Voici enfin un livre de \"vulgarisation intelligente\", qui vous aidera à comprendre les 5o principales théories politiques. Il met les plus grands penseurs au défi d\'expliquer de façon claire et accessible toutes ces théories en : 30 secondes, 2 pages, 300 mots et i image, soit 3 minutes en tout pour comprendre ! Vous revisiterez ainsi le passé,...', 'politique', 'Steven L. Taylor', 2),
(56, 'pénélope à ulysse', 2000, 'lettre d\'amour écrite par Ovide ', 'fantastique', 'Ovide', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`utilisateurs_id`, `email`, `password`, `username`, `roles`) VALUES
(1, 'jordanafpa@gmail.com', '$2y$10$xyNVk8vMBCxqgfQlTyJ9UOJjph46z8WM8g5ugAfBiUzU8CseQwIYO', 'jordan', '[\"ROLE_USER\"][\"ROLE_ADMIN\"]'),
(4, 'lala@gmail.com', '$2y$10$Z1Oaei6HyeRp6yuLxQlmAuKi5XnJG/V7aCsiqfu/qHa8wUhkA21fK', 'lala', '[\"ROLE_USER\"]'),
(5, 'ac@gmail.com', '$2y$10$58NRobglvrZnCTC69es8gOqcl0.jzppds5KHwQ.h.EW17xwDR0hOm', 'poulpy', '[\"ROLE_USER\"]'),
(6, 'isabelle@gmail.com', '$2y$10$e0I9kDkzULoEixwUu.GzeuQRZbI73RG6POp9W3gH0hhotKUfMb1JC', 'isa', '[\"ROLE_USER\"]'),
(7, 'peter@gmail.com', '$2y$10$KfK4Tfi0SraB8pEGibaYae5BBYzRcBShwl8rnW6FwML3dvPjGRIki', 'peter', '[\"ROLE_USER\"]');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
