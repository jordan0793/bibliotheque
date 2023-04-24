CREATE DATABASE IF NOT EXISTS `livres` DEFAULT CHARACTER SET UTF8MB4;
USE `livres`;

CREATE TABLE `abonnement` (
  `id_abon` INT(42),
  `num_abon` VARCHAR(42),
  `date_abon` VARCHAR(42),
  `montant_abon` VARCHAR(42),
  `date_debut_abon` VARCHAR(42),
  `date_fin_abon` VARCHAR(42),
  `id_i` INT(42),
  PRIMARY KEY (`id_abon`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `appartient` (
  `id_li` INT(42),
  `id_gen` INT(42),
  PRIMARY KEY (`id_li`, `id_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `auteur` (
  `id_a` INT(42),
  `prenom_a` VARCHAR(42),
  `nom_a` VARCHAR(42),
  `date_naissance_a` VARCHAR(42),
  `pays_origine_auteur` VARCHAR(42),
  `bio_a` VARCHAR(42),
  `nom_po` VARCHAR(42),
  PRIMARY KEY (`id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `concerne` (
  `ref_ex` INT(42),
  `id_em` INT(42),
  PRIMARY KEY (`ref_ex`, `id_em`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `ecrire` (
  `id_li` INT(42),
  `id_a` INT(42),
  PRIMARY KEY (`id_li`, `id_a`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `edition` (
  `id_ed` INT(42),
  `nom_ed` VARCHAR(42),
  PRIMARY KEY (`id_ed`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `emprunt` (
  `id_em` INT(42),
  `date_em` VARCHAR(42),
  `delai_em` VARCHAR(42),
  `statut_em` VARCHAR(42),
  `id_i` INT(42),
  PRIMARY KEY (`id_em`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `exemplaire` (
  `ref_ex` INT(42),
  `cote_ex` VARCHAR(42),
  `id_li` INT(42),
  `id_ed` INT(42),
  PRIMARY KEY (`ref_ex`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `genre` (
  `id_gen` INT(42),
  `livre_gen` VARCHAR(42),
  PRIMARY KEY (`id_gen`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `inscrit` (
  `id_i` INT(42),
  `num_i` VARCHAR(42),
  `nom_i` VARCHAR(42),
  `prenom_i` VARCHAR(42),
  `adresse_i` VARCHAR(42),
  `tel_i` VARCHAR(42),
  `email_i` VARCHAR(42),
  PRIMARY KEY (`id_i`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `livre` (
  `id_li` INT(42),
  `titre_li` VARCHAR(42),
  `date_parution_li` VARCHAR(42),
  `resume_li` VARCHAR(42),
  `type_li` VARCHAR(42),
  `auteur_li` VARCHAR(42),
  `nb_exemplaire_li` VARCHAR(42),
  PRIMARY KEY (`id_li`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

ALTER TABLE `abonnement` ADD FOREIGN KEY (`id_i`) REFERENCES `inscrit` (`id_i`);
ALTER TABLE `appartient` ADD FOREIGN KEY (`id_gen`) REFERENCES `genre` (`id_gen`);
ALTER TABLE `appartient` ADD FOREIGN KEY (`id_li`) REFERENCES `livre` (`id_li`);
ALTER TABLE `concerne` ADD FOREIGN KEY (`id_em`) REFERENCES `emprunt` (`id_em`);
ALTER TABLE `concerne` ADD FOREIGN KEY (`ref_ex`) REFERENCES `exemplaire` (`ref_ex`);
ALTER TABLE `ecrire` ADD FOREIGN KEY (`id_a`) REFERENCES `auteur` (`id_a`);
ALTER TABLE `ecrire` ADD FOREIGN KEY (`id_li`) REFERENCES `livre` (`id_li`);
ALTER TABLE `emprunt` ADD FOREIGN KEY (`id_i`) REFERENCES `inscrit` (`id_i`);
ALTER TABLE `exemplaire` ADD FOREIGN KEY (`id_ed`) REFERENCES `edition` (`id_ed`);
ALTER TABLE `exemplaire` ADD FOREIGN KEY (`id_li`) REFERENCES `livre` (`id_li`);
