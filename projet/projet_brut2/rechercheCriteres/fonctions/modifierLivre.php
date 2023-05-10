<?php
session_start();
require_once "../../connectLivres.php";

include_once "../../header.php";

// echo $_GET['id'];

// on verifie si l'ensemble du formulaire existe
if (!empty($_POST)) {
    // var_dump($_POST);

    // if (
    //     isset($_POST["titre"], $_POST["dateDeParution"], $_POST["resumeLivre"], $_POST["typeLivre"], $_POST["auteur"], $_POST["exemplaire"])
    //     && !empty($_POST["titre"]) && !empty($_POST["dateDeParution"]) && !empty($_POST["resumeLivre"]) && !empty($_POST["typeLivre"]) && !empty($_POST["auteur"]) && !empty($_POST["exemplaire"])
    // ) {

    if (
        !empty($_POST["titre"]) && !empty($_POST["dateDeParution"]) && !empty($_POST["resumeLivre"]) && !empty($_POST["typeLivre"]) && !empty($_POST["auteur"]) && !empty($_POST["exemplaire"])
    ) {

        //Protection par conversion en chaine de caractères 
        $titre = strip_tags($_POST["titre"]);
        $dateDeParution = strip_tags($_POST["dateDeParution"]);
        $resumeLivre = strip_tags($_POST["resumeLivre"]);
        $typeLivre = strip_tags($_POST["typeLivre"]);
        $auteur = strip_tags($_POST["auteur"]);
        $exemplaire = strip_tags($_POST["exemplaire"]);

        //Connexion a la BDD
        // require_once "../connectLivres.php";


        $sql = "UPDATE `livre` SET `titre_li` = :titre, `date_parution_li` = :dateDeParution, `resume_li` = :resumeLivre, `type_li` = :typeLivre, `auteur_li` = :auteur, `nb_exemplaire_li` = :exemplaire WHERE `livre`.`id_li` = :id";



        // Preparation de la requête 
        $query = $db->prepare($sql);

        //Faire des bindValue pour connecter les variables php à leur paramètre SQL
        // 3 paramètres : identifiant du paramètre , donc sont id = : pseudo , sa valeur , ici placé dans une variable ($pseudo = strip_tags($_POST["nickname"]));, puis le type , ici ce sera toujours PDO::PARAM_
        //Ainsi on remet une couche de protection car on lie un paramètre à une variable , le paramètre ici tout doit être en string avec PDO::PARAM_STR

        $query->bindValue(":titre", $titre, PDO::PARAM_STR);
        $query->bindValue(":dateDeParution", $dateDeParution, PDO::PARAM_STR);
        $query->bindValue(":resumeLivre", $resumeLivre, PDO::PARAM_STR);
        $query->bindValue(":typeLivre", $typeLivre, PDO::PARAM_STR);
        $query->bindValue(":auteur", $auteur, PDO::PARAM_STR);
        $query->bindValue(":exemplaire", $exemplaire, PDO::PARAM_STR);
        $query->bindValue(":id", $_GET['id'], PDO::PARAM_INT);


        $query->execute();

        die("informations du livre modifiées");
    } else {

        die("le formulaire est incomplet");
    }
}

$sql = "SELECT * FROM `livre` WHERE id_li= ?";
$id = $_GET['id'];
$stmt = $db->prepare($sql);
$stmt->execute([$id]);
$livre = $stmt->fetch();



?>
<form method="post">
    <fieldset>
        <legend>Modifier un livre</legend>
        <div class="form-group">
            <label for="titre" class="form-label mt-4">Titre</label>
            <input type="text" class="form-control" id="titre" name="titre" VALUE="<?php echo $livre['titre_li']; ?>" aria-describedby="titre" placeholder="Entrer titre">
        </div>
        <div class="form-group">
            <label for="dateDeParution" class="form-label mt-4">Date de parution (année)</label>
            <input type="text" VALUE="<?php echo $livre['date_parution_li']; ?>" class="form-control" id="dateDeParution" name="dateDeParution" aria-describedby="dateDeParution" placeholder="Entrer la date de parution">
        </div>
        <div class="form-group">
            <label for="resumeLivre" class="form-label mt-4">Resumé</label>
            <input type="text" VALUE="<?php echo $livre['resume_li']; ?>" class="form-control" id="resumeLivre" name="resumeLivre" aria-describedby="resumeLivre" placeholder="Résumé du livre">
        </div>
        <div class="form-group">
            <label for="typeLivre" class="form-label mt-4">Type</label>
            <input type="text" VALUE="<?php echo $livre['type_li']; ?>" class="form-control" id="typeLivre" name="typeLivre" aria-describedby="typeLivre" placeholder="Entrer le type/genre du livre">
        </div>
        <div class="form-group">
            <label for="auteur" class="form-label mt-4">Auteur</label>
            <input type="text" VALUE="<?php echo $livre['auteur_li']; ?>" class="form-control" id="auteur" name="auteur" aria-describedby="auteur" placeholder="Entrer l'auteur du livre">
        </div>
        <div class="form-group">
            <label for="exemplaire" class="form-label mt-4">Nombres d'exemplaires</label>
            <input type="text" VALUE="<?php echo $livre['nb_exemplaire_li']; ?>" class="form-control" id="exemplaire" name="exemplaire" aria-describedby="exemplaire" placeholder="Entrer le nombre d'exemplaire">
        </div>

    </fieldset>
    <button type="submit">Soumettre</button>
</form>
<?php
include_once "../../footer.php"
?>