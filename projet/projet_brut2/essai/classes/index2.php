<?php

use App\Autoloader;
use App\Models\AnnoncesModel;
use App\Models\Model;

require_once 'Autoloader.php';
Autoloader::register();
if (!empty($_POST)) {
    

    if (
        !empty($_POST["titre"]) && !empty($_POST["description"]) && !empty($_POST["actif"])
    ) {
        if ($_POST)

        //Protection par conversion en chaine de caractères 
        $titre = htmlspecialchars($_POST["titre"]);
        $description = htmlspecialchars($_POST["description"]);
        $actif = htmlspecialchars($_POST["actif"]);

        //------------------- Création par objet----------------------------
        $model = new AnnoncesModel;
        $annonce = $model
        
            ->setTitre($titre)
            ->setDescription($description)
            ->setActif($actif);
        // var_dump($annonce);
        
        $model->create($annonce); 
?>
<div class="container">
    <form method="post">
        <fieldset>
            <legend>Titre</legend>
            <div class="form-group">
                <label for="titre" class="form-label mt-4">Titre</label>
                <input type="text" class="form-control" id="titre" name="titre" aria-describedby="titre" placeholder="Entrer titre">
            </div>
            <div class="form-group">
                <label for="dateDeParution" class="form-label mt-4">Description</label>
                <input type="text" class="form-control" id="description" name="description" aria-describedby="description" placeholder="Entrer la date de parution">
            </div>
            <div class="form-group">
                <label for="actif" class="form-label mt-4">Actif</label>
                <input type="number" class="form-control" id="actif" name="actif" aria-describedby="actif" placeholder="actif" min = "0" max = "1" >
            </div>
        </fieldset>
        <button type="submit">Soumettre</button>
    </form>
</div>
