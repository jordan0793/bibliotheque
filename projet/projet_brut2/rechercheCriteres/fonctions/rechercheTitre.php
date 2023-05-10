<?php
session_start();

use App\Autoloader;
use App\Db\Db;
use App\Models\AnnoncesModel;
use App\Models\Model;

require_once '../../Autoloader.php';
Autoloader::register();

include_once "../../header.php";
?>
<form method="post">
    <fieldset>
        <legend>Rechercher un Titre</legend>

        <div class="form-group">
            <label for="titre" class="form-label mt-4">Entrer un Titre</label>
            <input type="text" class="form-control" id="titre" name="titre" aria-describedby="titre" placeholder="Entrer le titre du livre">
        </div>


    </fieldset>
    <button type="submit">Soumettre</button>
</form>
<?php


if (!empty($_POST)) {


    if (
        isset($_POST["titre"])
        && !empty($_POST["titre"])
    ) {
        require_once "../../connect.php";

        // $sql = "SELECT titre_li FROM `livre` WHERE `titre_li` = :titre";
        $sql = "SELECT id_li, titre_li, date_parution_li, resume_li, type_li, auteur_li, nb_exemplaire_li FROM `livre` WHERE `titre_li` LIKE CONCAT('%', :titre, '%')";



        $query = $db->prepare($sql);


        //bindValue protection , la valeur reçoit comme paramètre , obligation de traiter cela en chaine de caractère, protection permettant de ne pas inclure de language.
        $query->bindValue(":titre", $_POST["titre"], PDO::PARAM_STR);

        $query->execute();

        $livres = $query->fetchAll();

        if (count($livres) > 0) {
            //echo "ce livre est répertorié";
?>
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
            // foreach ($livres as $value) {
            //     echo "<br>" . $value["titre_li"];
            // }
            foreach ($livres as $value) {
                echo '

    <tbody>
    <tr><td>' . $value['id_li'] . '</td>
    <td>' . $value['titre_li'] . '</td>
    <td>' . $value['date_parution_li'] . '</td>
    <td>' . $value['resume_li'] . '</td>
    <td>' . $value['type_li'] . '</td>
    <td>' . $value['auteur_li'] . '</td>
    <td>' . $value['nb_exemplaire_li'] . '</td>
    </td>
    </tr>';
            }
        } else {
            die("Ce titre n'est pas répertorié, Veuillez Reessayez");
        }
    }
}



    ?>
    </tbody>
            </table>
            <!-- <form method="post">
    <fieldset>
        <legend>Rechercher un Auteur</legend>

        <div class="form-group">
            <label for="auteur" class="form-label mt-4">Entrer un Auteur</label>
            <input type="text" class="form-control" id="auteur" name="auteur" aria-describedby="auteur" placeholder="Entrer l'auteur du livre">
        </div>


    </fieldset>
    <button type="submit">Soumettre</button>
</form> -->

            <?php
            include_once "../../footer.php"
            ?>