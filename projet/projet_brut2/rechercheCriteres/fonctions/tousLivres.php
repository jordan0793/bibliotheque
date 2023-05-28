<?php
session_start();
require_once "../../connectLivres.php";

include_once "../../header.php";

?>

<?php
// Requête d'affichage de tous les livres de la BDD

// $sql = "SELECT * FROM `livre`";
$sql = "SELECT id_li, titre_li, date_parution_li, resume_li, type_li, auteur_li, nb_exemplaire_li FROM `livre` ";

$query = $db->prepare($sql);

$query->execute();

$livres = $query->fetchAll();

if (count($livres) > 0) {
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
        $nb_total_livre = 0;
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
<td>' . $value['nb_exemplaire_li']  . '</td>
</td>  
</tr>';

            $nb_total_livre = $nb_total_livre + 1;
        };
        echo "<div class= 'tousLivres'>  $nb_total_livre  oeuvres littéraires au total  </div>";
    } else {
        die("Veuillez ajouter des livres");
    }
        ?>
        </tbody>
        </table>
    </div>
    <style>
        .tousLivres {
            margin-top: 1%;
            text-align: center;
        }
    </style>
    <?php


    include_once "../../footer.php"
    ?>