<?php

use App\Autoloader;
use App\Models\AnnoncesModel;
use App\Models\Model;

require_once 'Autoloader.php';
Autoloader::register();


session_start();




include_once "../header.php";
$model = new AnnoncesModel;
$auteur = $model->find(3);
echo '<pre>';
var_dump($auteur);
echo '</pre>';




?>

<form method="post">
    <fieldset>
        <legend>Rechercher un Auteur</legend>

        <div class="form-group">
            <label for="auteur" class="form-label mt-4">Entrer un Auteur</label>
            <input type="text" class="form-control" id="auteur" name="auteur" aria-describedby="auteur" placeholder="Entrer l'auteur du livre">
        </div>


    </fieldset>
    <button type="submit">Soumettre</button>
</form>
<?php
include_once "../footer.php"
?>