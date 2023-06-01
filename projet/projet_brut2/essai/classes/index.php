<?php

use App\Autoloader;
use App\Models\AnnoncesModel;
use App\Models\Model;

require_once 'Autoloader.php';
Autoloader::register();

//permet d'instancier les différentes classes que l'on va chargées

$model = new AnnoncesModel;
// echo '<pre>';
// echo 'Ici Début de FindAll';
// var_dump($model->findAll());
// echo 'Ici Fin de FindAll, nous avons récupérer toute les colonne de la table annonces avec fetchAll()';
// echo '</pre>';

// echo '<pre>';
// echo 'Ici Début de model simple : ';
// var_dump($model);
// echo 'Ici Fin de model simple, ici , je viens de récupérer simplement le titre de la table " Annonces " sans récupérer les colonnes';
// echo '</pre>';

//-------------------------Résolution problème--------------------------------
// On a ce résultat complet et précis car l'on a initialiser une méthode fetchAll dans le modèle
// Probleme de communication résolue avec la nouvelle varable runQuery a appliquer aussi bien lors de la préparation de la requête que dans son execution , cf Model.php, on se ressistu que le Model correpond a la manière dont on va gérer les requête de la BDD, en gros on écrit les paramètres dans Model pour pas ecrire a rallonge dans l'index.
//--------------------------------------------------------------------------------


// --------------------------------------PB FetchAll avec le runQuery ------------------------------------

// $annonces = $model->findBy(['titre' => "le film"]);
// echo '<pre>';
// //var_dump($annonces);
// echo $annonces[0]['description'];
// echo '</pre>';

// $annonces = $model->findBy(['actif' => 1, 'id' => 2]);
// echo '<pre>------';
// var_dump($annonces);
// echo '-----</pre>';

// $annonces = $model->findBy(['actif' => 1]);
// echo '<pre>';
// var_dump($annonces);
// echo '</pre>';

// $annonces = $model->findBy([]);
// echo '<pre>';
// var_dump($annonces);
// echo '</pre>';

//--------------------------------Récupération d'info BDD ---------------------------------------------
// $annonces = $model->find(3);
// echo '<pre>';
// var_dump($annonces);
// echo '</pre>';

// $actif0 = $model->trouverActifNull();
// echo '<pre>';
// var_dump($actif0);
// echo '</pre>';
//--------------------------------------------------------------------------------------------------

//-----------------------------Création dans la BDD-----------------------------------------------
// $annonce = $model
//     ->setTitre('Nouvelle annonce')
//     ->setDescription('Nouvelle description')
//     ->setActif(1);
// var_dump($annonce);

// Cette déclaration n'est possible que lorsqu'on fait les setter et getter dans le fichier AnnonceModel.

// $model->create($annonce);

// $annonce = $model
//     ->setTitre('Annonce de magasine')
//     ->setDescription('description du magasine')
//     ->setActif(1);
// echo '<pre>';
// var_dump($annonce);
// echo '</pre>';

// $model->create($annonce);

//EXPLICATIONS : 
// $model = new AnnoncesModel => renvoie a l'instance déclaré dans AnnoncesModel, ou figure les getter et setter de titre, description , actif, id, created at. a partir de la je SET les champs pour entrer une valeur. Mais on utilise une méthode create pour faire la création de l'objet a envoyer en BDD. Cela figure dans Model, Model extend Db donc communique directement avec bdd.



//--------------------Injection par hydratation -------------------------------------

// $donnees = [
//     'titre' => 'Annonce hydratée',
//     'description' => 'Description de l\annonce hydratée',
//     'actif' => 1,
// ];

// $annonce = $model->hydrate($donnees);
// $model->create($annonce);

// echo '<pre>';
// var_dump($annonce);
// echo '</pre>';

//-----------------------Update fonction -------------------------------------------

// $donnees = [
//     'titre' => 'Annonce modifiée une seconde fois',
//     'description' => 'Description de l\annonce modifiée',
//     'actif' => 0,
// ];

// $annonce = $model->hydrate($donnees);
// $model->update(2, $annonce);

// echo '<pre>';
// var_dump($annonce);
// echo '</pre>';

$donnees = [
    'titre' => 'nouveaux titre',
    'description' => 'decription 3',
    'actif' => 0,
];

$annonce = $model->hydrate($donnees);
$model->update(19, $annonce);

echo '<pre>';
var_dump($annonce);
echo '</pre>';

//------------------------------------DELETE---------------------------------------
// echo "delete marche en index";
// $model->delete(20);
