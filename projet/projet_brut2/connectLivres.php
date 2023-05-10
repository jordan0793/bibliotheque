<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="styles.css">
    <title> Bibliotheque connexion BDD</title>
</head>

<body>

    <?php
    // Définir des constantes d'environnement ( contiennent les info de connexion a la bdd )

    define("DBHOST", "localhost"); // Le premier tu met ce que tu veux, le 2 eme c'est le serveur local adresse 
    define("DBUSER", "root"); // C'est l'utilsateur de la bdd, ici c'est root , c'est le php.ini 
    define("DBPASS", ""); // c'est le mot de passe, mais dans le php.ini on a déclarer pas de mdp
    define("DBNAME", "bibliotheque2"); // c'est le nom de la database.

    // DSN de Connexion ( DATA SOURCE NAME), le nom de la source de donnée 

    $dsn = "mysql:dbname=" . DBNAME . ";host=" . DBHOST; //Nom de la base + nom serveur 

    // ((($dsn = "mysql:dbname=tutos-php;host=localhost" / on aurait pu l'écrire sous cette forme)))
    // ça c'est ce qu'on devrait marquer, mais Benoit a déclarer des variables pour prendre ces valeurs là, donc on va concaténer 
    // Explication : Praticité, quand on aura besoin de changer les noms de localhost ou même de la base de données, on modifiera que le noms a côté des variables ! le code se lira s'en changer quoi que ce soit d'autre. 

    //-------------------------------------CONNEXION A LA BDD--------------------------------------------------------------------------------

    //try catch , essaye de faire ce que je te dis, si tu y arrive pas , catch le pb
    //elle catch le PDOExeption appeller $e, qui va permettre de faire afficher les erreurs

    try {
        // On va instancier PDO, c'est creer une instance, PDO qu'on met dans une variable. PDO = PHP Data objects, php orienter objet 
        $db = new PDO($dsn, DBUSER, DBPASS);
        // echo "On est connecté";
        // echo "</br>";

        // On s'assure d'envoyer les données en UTF8 , comme ça les accents s'affiche bien et le reste aussi 
        $db->exec("SET NAMES utf8");
    } catch (PDOException $e) {
        die("Erreur:" . $e->getMessage());
    }

    // On définit le mode de "fetch" par défaut et apparaition des tableau sous forme de tableau associatif , plus lisible pour nos requêtes et erreurs. 

    $db->setAttribute(
        PDO::ATTR_DEFAULT_FETCH_MODE,
        PDO::FETCH_ASSOC
    );
    // -------------------------------CCL : Ici on est connecter a la base-------------------------------------------------------------------


    //--------------------------------On peut récupérer la listes des utilisateurs----------------------------------------------------------- 

    $sql = "SELECT * FROM `livre`";
    // On execute directement la requête 

    $requete = $db->query($sql);
    // Je creer une variable qui va venir chercher dans BDD sql 

    // On récupére les données ( fetch ou fetchAll)
    //fetch récupére une valeur , All récupére plusieurs valeurs

    $livres = $requete->fetchAll();

    // var_dump($utilisateurs);

    // echo "<pre>";
    // var_dump($livres);
    // echo "</pre>";

    ?>
</body>