CREATE DATABASE IF NOT EXISTS `LIVRES` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8_general_ci;
USE `LIVRES`;

CREATE TABLE `ABONNEMENT` (
  `id_abon` VARCHAR(42),
  `num_abon` VARCHAR(42),
  `date_abon` VARCHAR(42),
  `montant_abon` VARCHAR(42),
  `date_debut_abon` VARCHAR(42),
  `date_fin_abon` VARCHAR(42),
  `id_i` VARCHAR(42),
  PRIMARY KEY (`id_abon`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `APPARTIENT` (
  `id_li` VARCHAR(42),
  `id_gen` VARCHAR(42),
  PRIMARY KEY (`id_li`, `id_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `AUTEUR` (
  `id_a` VARCHAR(42),
  `prenom_a` VARCHAR(42),
  `nom_a` VARCHAR(42),
  `date_naissance_a` VARCHAR(42),
  `pays_origine_auteur` VARCHAR(42),
  `bio_a` VARCHAR(42),
  `nom_po` VARCHAR(42),
  PRIMARY KEY (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `CONCERNE` (
  `ref_ex` VARCHAR(42),
  `id_em` VARCHAR(42),
  PRIMARY KEY (`ref_ex`, `id_em`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `ECRIRE` (
  `id_li` VARCHAR(42),
  `id_a` VARCHAR(42),
  PRIMARY KEY (`id_li`, `id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `EDITION` (
  `id_ed` VARCHAR(42),
  `nom_ed` VARCHAR(42),
  PRIMARY KEY (`id_ed`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `EMPRUNT` (
  `id_em` VARCHAR(42),
  `date_em` VARCHAR(42),
  `delai_em` VARCHAR(42),
  `statut_em` VARCHAR(42),
  `id_i` VARCHAR(42),
  PRIMARY KEY (`id_em`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `EXEMPLAIRE` (
  `ref_ex` VARCHAR(42),
  `cote_ex` VARCHAR(42),
  `id_li` VARCHAR(42),
  `id_ed` VARCHAR(42),
  PRIMARY KEY (`ref_ex`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `GENRE` (
  `id_gen` VARCHAR(42),
  `livre_gen` VARCHAR(42),
  PRIMARY KEY (`id_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `GERER` (
  `id_li` VARCHAR(42),
  `utilisateurs_id` VARCHAR(42),
  PRIMARY KEY (`id_li`, `utilisateurs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `INSCRIT` (
  `id_i` VARCHAR(42),
  `num_i` VARCHAR(42),
  `nom_i` VARCHAR(42),
  `prenom_i` VARCHAR(42),
  `adresse_i` VARCHAR(42),
  `tel_i` VARCHAR(42),
  `email_i` VARCHAR(42),
  PRIMARY KEY (`id_i`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `LIVRE` (
  `id_li` INT(10),
  `titre_li` VARCHAR(42),
  `date_parution_li` INT(10),
  `resume_li` VARCHAR(42),
  `type_li` VARCHAR(42),
  `auteur_li` VARCHAR(42),
  `nb_exemplaire_li` INT(10),
  PRIMARY KEY (`id_li`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `UTILISATEURS` (
  `utilisateurs_id` INT(10),
  `email` VARCHAR(500),
  `password` VARCHAR(500),
  `username` VARCHAR(500),
  `roles` VARCHAR(40),
  PRIMARY KEY (`utilisateurs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

ALTER TABLE `ABONNEMENT` ADD FOREIGN KEY (`id_i`) REFERENCES `INSCRIT` (`id_i`);
ALTER TABLE `APPARTIENT` ADD FOREIGN KEY (`id_gen`) REFERENCES `GENRE` (`id_gen`);
ALTER TABLE `APPARTIENT` ADD FOREIGN KEY (`id_li`) REFERENCES `LIVRE` (`id_li`);
ALTER TABLE `CONCERNE` ADD FOREIGN KEY (`id_em`) REFERENCES `EMPRUNT` (`id_em`);
ALTER TABLE `CONCERNE` ADD FOREIGN KEY (`ref_ex`) REFERENCES `EXEMPLAIRE` (`ref_ex`);
ALTER TABLE `ECRIRE` ADD FOREIGN KEY (`id_a`) REFERENCES `AUTEUR` (`id_a`);
ALTER TABLE `ECRIRE` ADD FOREIGN KEY (`id_li`) REFERENCES `LIVRE` (`id_li`);
ALTER TABLE `EMPRUNT` ADD FOREIGN KEY (`id_i`) REFERENCES `INSCRIT` (`id_i`);
ALTER TABLE `EXEMPLAIRE` ADD FOREIGN KEY (`id_ed`) REFERENCES `EDITION` (`id_ed`);
ALTER TABLE `EXEMPLAIRE` ADD FOREIGN KEY (`id_li`) REFERENCES `LIVRE` (`id_li`);
ALTER TABLE `GERER` ADD FOREIGN KEY (`utilisateurs_id`) REFERENCES `UTILISATEURS` (`utilisateurs_id`);
ALTER TABLE `GERER` ADD FOREIGN KEY (`id_li`) REFERENCES `LIVRE` (`id_li`);
