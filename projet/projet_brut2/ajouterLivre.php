<?php
session_start();

include_once "header.php";


// on verifie si l'ensemble du formulaire existe
if (!empty($_POST)) {
    // var_dump($_POST);

    if (
        isset($_POST["titre"], $_POST["dateDeParution"], $_POST["resumeLivre"], $_POST["typeLivre"], $_POST["auteur"], $_POST["exemplaire"])
        && !empty($_POST["titre"]) && !empty($_POST["dateDeParution"]) && !empty($_POST["resumeLivre"]) && !empty($_POST["typeLivre"]) && !empty($_POST["auteur"]) && !empty($_POST["exemplaire"])
    ) {
        //Protection par conversion en chaine de caractères 
        $titre = htmlspecialchars($_POST["titre"]);
        $dateDeParution = htmlspecialchars($_POST["dateDeParution"]);
        $resumeLivre = htmlspecialchars($_POST["resumeLivre"]);
        $typeLivre = htmlspecialchars($_POST["typeLivre"]);
        $auteur = htmlspecialchars($_POST["auteur"]);
        $exemplaire = htmlspecialchars($_POST["exemplaire"]);



        //Connexion a la BDD
        require_once "connectLivres.php";

        $sql = "INSERT INTO `livre`(`titre_li`, `date_parution_li`, `resume_li`, `type_li`, `auteur_li`, `nb_exemplaire_li`) VALUES (:titre, :dateDeParution, :resumeLivre, :typeLivre, :auteur, :exemplaire)";

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


        $query->execute();
        die("Livre Ajouté");
    } else {

        die("le formulaire est incomplet");
    }
}

?>
<div class="container">
    <form method="post">
        <fieldset>
            <legend>Ajouter un livre</legend>
            <div class="form-group">
                <label for="titre" class="form-label mt-4">Titre</label>
                <input type="text" class="form-control" id="titre" name="titre" aria-describedby="titre" placeholder="Entrer titre">
            </div>
            <div class="form-group">
                <label for="dateDeParution" class="form-label mt-4">Date de parution (année)</label>
                <input type="number" class="form-control" id="dateDeParution" name="dateDeParution" aria-describedby="dateDeParution" placeholder="Entrer la date de parution">
            </div>
            <div class="form-group">
                <label for="resumeLivre" class="form-label mt-4">Resumé</label>
                <input type="text" class="form-control" id="resumeLivre" name="resumeLivre" aria-describedby="resumeLivre" placeholder="Résumé du livre">
            </div>
            <div class="form-group">
                <label for="typeLivre" class="form-label mt-4">Type</label>
                <input type="text" class="form-control" id="typeLivre" name="typeLivre" aria-describedby="typeLivre" placeholder="Entrer le type/genre du livre">
            </div>
            <div class="form-group">
                <label for="auteur" class="form-label mt-4">Auteur</label>
                <input type="text" class="form-control" id="auteur" name="auteur" aria-describedby="auteur" placeholder="Entrer l'auteur du livre">
            </div>
            <div class="form-group">
                <label for="exemplaire" class="form-label mt-4">Nombres d'exemplaires</label>
                <input type="number" class="form-control" id="exemplaire" name="exemplaire" aria-describedby="exemplaire" placeholder="Entrer le nombre d'exemplaire">
            </div>

        </fieldset>
        <button type="submit">Soumettre</button>
    </form>
</div>
<style>
    button {
        margin-top: 5%;
        margin-bottom: 1%;
        border-radius: 30px;
    }

    legend {
        margin-top: 1%;
        text-align: center;
    }
</style>
<?php
include_once "footer.php"
?>