<?php

namespace App\Models;

// use PDO;
use App\Db\Db;


// La classe Model va servir a faire toutes les intéractions avec la BDD, on utilise un autoloader 
class Model extends Db
{
    // Table de la base de données

    // c'est une propriété que l'on va pouvoir écrire depuis les classes qui vont hérité du model donc on l'a met en protected, elle va aussi contenir la BDD
    protected $table;

    // Instance de Db

    private $db;

    public function findAll()
    {
        $query = $this->runQuery('SELECT * FROM ' . $this->table . ' WHERE ');
        var_dump($query);
        return $query;

        // On fait dans l'index, un fetchAll() de $model, $model est une variable dépendant de AnnonceModel.php, AnnonceModel.php hérite de Model.php , déclaration de la public function findAll()dans Model.php, utilisation en index, système d'héritage, il exécutera ce qui est écrit dans AnnonceModel.php par le bias de la déclaration fetchAll() dans Model , par le biais de l'index.:
    }
    //-------------------------Idée de transformer un tableau en une requête avec Findby()----------------------
    // Il veut casser le tableau en deux partie , l'une pour récuperer le champs l'autre pour récupérer la valeur et ensuite il fait son prepare, il casse le tableau critres en 2 tableaux champs et valeur
    // $model->findBy(['actif' => 1]);
    public function findBy(array $criteres)
    {
        // il déclare ses deux tableaux vides, champs et valeurs
        $champs = [];
        $valeurs = [];

        //On va boucler pour éclater ce tableau 
        // c'est la que nous comprenons la syntaxe de son foreach , car dans l'index on écrit ce que l'on veut voir apparaitre: $annonces = $model->findBy(['actif = le champ' => 1 = la valeur]);

        //explication : le champ désigne la colonne en elle me dans la bdd, la valeur est ce que contient que champs actif = 1 ou 0, ici on cherche à valeur 1

        foreach ($criteres as $champ => $valeur) {
            // SELECT *  FROM annonces WHERE actif = ?
            //bindValue (1, valeur) ça c'est ce qu'on veut avoir 
            //dans le tableau champ on push le nom de notre champ = ?

            // Ensuite SELECT *  FROM annonces WHERE actif = ? AND signale = 0
            //bindValue (1, valeur)
            //bindValue = lier la valeur 
            //fetchAll = aller chercher tout 

            // A partir de la il va imaginer une méthode ou il va déclarer en valeur un ? pour le champ, ainsi il veut push le nom de notre tableau champs avec un s, il veut push le nom de notre champs[]=?, il veux pusher le tableau prédément déclarer contenu dans une chaine de caractère =?, ensuite on fait les valeurs[] que l'on déclare telles quel. Si il fait un var dump de des deux tableau , on a un tableau avec actif = ? et l'autre tableau aura une valeur 1. 


            $champs[] = "$champ = ?";
            $valeurs[] = "$valeur";
        }
        // echo "***";
        // var_dump($valeurs);
        // echo "***";

        // Ancien Code :---------------
        // echo '<pre>';
        // echo 'Ici Début de tableau champs: ';
        // var_dump($champs);
        // echo 'Ici Fin de tableau champs';
        // echo '</pre>';

        // echo '<pre>';
        // echo 'Ici Début de tableau valeur : ';
        // var_dump($valeurs);
        // echo 'Ici Fin de tableau valeur';
        // echo '</pre>';

        //------------Etape 2 : Transformer le tableau en une chaine de caractères ----------------------

        // on utilise la fonction implode , on fait une variable liste champs, dans ce implode  on met une chaine de caractère qui va nous permettre de coller les différents morceau que l'on séparera avec AND et on fait àa avec $champs. Donc la ce qui importe est de séparer les deux chaiunes de caractère anc AND.

        $liste_champs = implode(' AND ', $champs);

        var_dump($liste_champs);


        //Une fois que l'on a fait cette séparation avec AND, on execute la requête

        // return $this->query('SELECT * FROM ' . $this->table . ' WHERE ' . $liste_champs, $valeurs)->fetchAll();
        //echo 'SELECT * FROM ' . $this->table . ' WHERE ' . $liste_champs, $valeurs;
        return $this->runQuery('SELECT * FROM ' . $this->table . ' WHERE ' . $liste_champs, $valeurs);

        // use PDO, fetchAll(PDO::FETCH_ASSOC); pour essayer de débloquer le tableau en 2 eme argument

        //------------------Preparation de la requête , les consignes------------------------------------------
        // On fait une méthode qui va vérifier si on prépare ou pas la requête, on l'a met en publique pour étendre eventuellement les fonctions
    }
    //--------------------------Insertion de nouvelles données a injectée dans la BDD---------------------
    // On met ce que l'on veut en paramètre avec une variable mais on ne reprendra pas $annonce 
    public  function create(Model $model)
    {
        $champs = [];
        $inter = [];
        $valeurs = [];
        foreach ($model as $champ => $valeur) {
            // INSERT INTO * annonces (titre, description, actif) VALUES (?, ?, ?)
            // Il va falloir déclarer le champs avec soit une valeur nulle soit une valeur 
            // On remonte ligne 94 , on déclare un nvx tableau, il prendra les points d'interrogation que l'on va déclarer le nombre de pi est egal au nombres de colonne de la table annonces
            // Aprés on fait un implode de la valeur de chant avec comme séparateur une virgule espace

            if ($valeur != null && $champ != 'db' && $champ != 'table') {


                $champs[] = $champ;
                $inter[] = "?";
                $valeurs[] = "$valeur";
            }
        }
        $liste_champs = implode(', ', $champs);
        $liste_inter = implode(', ', $inter);
        // $liste_valeurs = implode(', ', $valeurs); pas besoin ???

        // echo '<pre>';
        // echo ($liste_champs);
        // echo '</pre>';
        // die($liste_inter);

        // On exécute la requête

        return $this->runQuery('INSERT INTO ' . $this->table . ' (' . $liste_champs . ')VALUES(' . $liste_inter . ')', $valeurs);

        // pas de fetch sur une requête insert
    }

    //-------------------------Methode simplifié pour récupérer une information ----------------------------

    public function find(int $id)
    {

        $this->db = Db::getInstance();
        return $this->db->query("SELECT * FROM $this->table WHERE id_li = $id")->fetch();
    }

    public function trouverActifNull()
    {
        $this->db = Db::getInstance();
        return $this->db->query("SELECT * FROM $this->table WHERE actif = 0")->fetchAll();
    }

    // ou runQuery???

    //----------------------------------------------------------------------------------------------------

    public function runQuery(string $sql, array $attributs = null) // ou ?array sans le null
    {
        // echo "<br><br><br><br>";
        // echo "requete sql : " . $sql . "<br>";
        // echo "<br><br><br><br>";
        //var_dump($attributs);
        // echo "<br><br><br><br>";
        // On récupére l'instance de Db
        $this->db = Db::getInstance();

        //On verifie si on a des attributs (soit ya un tableau soit ya rien)
        //if ($attributs !== null) {
        if (!empty($attributs)) {
            echo "il y a des attributs";
            //requête préparée
            $query = $this->db->prepare($sql);
            $query->execute($attributs);
            return $query->fetchAll(); //
        } else {
            echo "il n'y a rien";
            //Requête simple 
            $query = $this->db->prepare($sql . "TRUE"); //méthode Guillaume, déclarer le sql comme étant toujours vrai pour entrer dans la fonction, cela fait echo au problème vu avec fetchAll.
            $query->execute();
            return $query->fetchAll(); //

            //return $this->db->query($sql);
        }
    }
    //----------------------------DELETE---------------------------------------------

    public function delete(int $id)
    {
        echo "delete marche";
        return $this->runQuery("DELETE FROM $this->table WHERE id = ?", [$id]);
        // obligation de mettre [$id] car le deuxième paramettre de runQuery est un tableau cf (public function runQuery(string $sql, array $attributs = null)

    }
    //----------------------------Create par Hydratation ------------------------------
    public function hydrate(array $donnees)
    {

        foreach ($donnees as $key => $value) {
            // on récupère le nom du Setter correspondant à la clée ($key)
            // titre ->setTitre
            $setter = 'set' . ucfirst($key);

            // on vérifie que le setter existe 


            if (method_exists($this, $setter)) {
                // si oui, on appelle le setter 
                $this->$setter($value);
            }
        }
        return $this;
    }

    //------------------------Modifier la BDD Update-------------------------------------

    // public  function update(int $id, model $model)
    // integer en paramètre pour slectionner l'id et le modifier
    // {
    //     $champs = [];
    //     $valeurs = [];
    //     foreach ($model as $champ => $valeur) {
    // UPDATE annonces SET titre = ?, description = ?, actif = ?) WHERE id = ?,


    // if ($valeur !== null && $champ != 'db' && $champ != 'table') {

    // bien mettre le $valeur !== nul et pas != null, car sion il prend en compte le 0 comme étant null ce qui était le problème durand tout l'exercice.
    // je push les champs et les valeur , le push a lieu ici 
    //         $champs[] = "$champ = ?";
    //         $valeurs[] = "$valeur";
    //     }
    // }
    // On transforme le tableau $champs en une chaine de caractères
    // $valeurs[] = $id;
    // $liste_champs = implode(', ', $champs);

    // echo '<pre>';
    // echo ($liste_champs);
    // echo '</pre>';
    // die($liste_inter);

    // On exécute la requête

    //     return $this->runQuery('UPDATE ' . $this->table . ' SET ' . $liste_champs . ' WHERE id = ?', $valeurs);
    // }

    //--------------------------------------Update sans comment --------------------------------------

    public  function update(int $id, model $model)

    {
        $champs = [];
        $valeurs = [];
        foreach ($model as $champ => $valeur) {

            if ($valeur !== null && $champ != 'db' && $champ != 'table') {


                $champs[] = "$champ = ?";
                $valeurs[] = "$valeur";
            }
        }

        $valeurs[] = $id;
        $liste_champs = implode(', ', $champs);

        echo '<pre>';
        echo ($liste_champs);
        echo '</pre>';




        return $this->runQuery('UPDATE ' . $this->table . ' SET ' . $liste_champs . ' WHERE id = ?', $valeurs);
    }
}
