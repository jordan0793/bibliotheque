<?php
session_start();

use App\Autoloader;
use App\Db\Db;
use App\Models\AnnoncesModel;
use App\Models\Model;

require_once '../Autoloader.php';
Autoloader::register();

include_once "../header.php";
?>
<div class="container">
    <form method="post">
        <fieldset>
            <legend>Rechercher un Auteur</legend>

            <div class="form-group">
                <label for="auteur" class="form-label mt-4">Entrer un Auteur</label>
                <input type="text" class="form-control" id="auteur" name="auteur" aria-describedby="auteur" placeholder="Entrer l'auteur du livre">
            </div>


        </fieldset>
        <button>Soumettre</button>
    </form>
    <style>
        button {
            margin-top: 1%;
            border-radius: 30px;
        }

        legend {
            text-align: center;
        }

        .echec {
            text-align: center;
        }
    </style>
</div>
<?php


if (!empty($_POST)) {


    if (
        isset($_POST["auteur"])
        && !empty($_POST["auteur"])
    ) {
        require_once "../connect.php";

        // $sql = "SELECT titre_li FROM `livre` WHERE `auteur_li` = :auteur";
        $sql = "SELECT id_li, titre_li, date_parution_li, resume_li, type_li, auteur_li, nb_exemplaire_li FROM `livre` WHERE `auteur_li` LIKE CONCAT('%', :auteur, '%')";



        $query = $db->prepare($sql);


        //bindValue protection , la valeur reçoit comme paramètre , obligation de traiter cela en chaine de caractère, protection permettant de ne pas inclure de language.
        $query->bindValue(":auteur", $_POST["auteur"], PDO::PARAM_STR);

        $query->execute();

        $livres = $query->fetchAll();

        if (count($livres) > 0) {
            //echo "cet auteur est répertorié";
?>
            <div class="container">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Numéro</th>
                            <th scope="col">Titre</th>
                            <th scope="col">Parution</th>
                            <th scope="col">Résumé</th>
                            <th scope="col">type</th>
                            <th scope="col">Auteur</th>
                            <th scope="col">nombre d'exemplaire</th>


                        </tr>

                    </thead>
        <?php

            foreach ($livres as $value) {
                echo '

    <tbody>
    
    <tr>
    <td>' . $value['id_li'] .  '</td>
    <td>' . $value['titre_li'] . '</td>
    <td>' . $value['date_parution_li'] . '</td>
    <td>' . $value['resume_li'] . '</td>
    <td>' . $value['type_li'] . '</td>
    <td>' . $value['auteur_li'] . '</td>
    <td>' . $value['nb_exemplaire_li']  . ' <button><a href="./fonctions/supprimerLivre.php?id=' . $value['id_li'] . '">Supprimer</a></button>
    
    </tr>';
            }
            // var_dump($value['id_li']);
        } else {
            die('<div class ="echec">Cet auteur n\'est pas répertorié, Veuillez Reessayez</div>');
        }
    }
}



        ?>
        </tbody>
                </table>
            </div>
            <style>
                button {
                    margin-top: 1%;
                    border-radius: 30px;

                }

                legend {
                    text-align: center;
                }
            </style>
            <?php
            include_once "../footer.php"
            ?>