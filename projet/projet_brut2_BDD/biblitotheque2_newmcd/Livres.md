**abonnement** (<ins>id_abon</ins>, num_abon, date_abon, montant_abon, date_debut_abon, date_fin_abon, _#id_i_)<br>
**appartient** (<ins>_#id_li_</ins>, <ins>_#id_gen_</ins>)<br>
**auteur** (<ins>id_a</ins>, prenom_a, nom_a, date_naissance_a, pays_origine_auteur, bio_a, nom_po)<br>
**concerne** (<ins>_#ref_ex_</ins>, <ins>_#id_em_</ins>)<br>
**ecrire** (<ins>_#id_li_</ins>, <ins>_#id_a_</ins>)<br>
**edition** (<ins>id_ed</ins>, nom_ed)<br>
**emprunt** (<ins>id_em</ins>, date_em, delai_em, statut_em, _#id_i_)<br>
**exemplaire** (<ins>ref_ex</ins>, cote_ex, _#id_li_, _#id_ed_)<br>
**genre** (<ins>id_gen</ins>, livre_gen)<br>
**gerer** (<ins>_#id_li_</ins>, <ins>_#utilisateurs_id_</ins>)<br>
**inscrit** (<ins>id_i</ins>, num_i, nom_i, prenom_i, adresse_i, tel_i, email_i)<br>
**livre** (<ins>id_li</ins>, titre_li, date_parution_li, resume_li, type_li, auteur_li, nb_exemplaire_li)<br>
**utilisateurs** (<ins>utilisateurs_id</ins>, email, password, username, roles)