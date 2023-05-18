<?php
// Démarage de la session de Connexion Utilisateur
session_start();

// Si je suis connecté, j'ai pas besoin de m'inscrire , tu va direct a mon profil 
if (isset($_SESSION["user"]["pseudo"])) {
    header("Location: profil.php");
    exit;
}
// on verifie si le formulaire a été envoyé
if (!empty($_POST)) {
    // var_dump($_POST);

    // Si n'est pas vide mon formulaire , afficher les valeurs de mon formulaire 



    // A Retenir: pour le isset, ce qui compte c'est ce qu'on a mis a l'intérieur du name !!! dans les input
    // On vérifie que TOUS les champs 
    if (
        isset($_POST["nickname"], $_POST["email"], $_POST["pass"])
        && !empty($_POST["nickname"]) && !empty($_POST["email"]) && !empty($_POST["pass"])
    ) {
        //le formulaire est complet 
        // J'enlève les html avec le strip_tag
        $pseudo = strip_tags($_POST["nickname"]);

        if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL))

        // Si l'adresse rentrée n'est pas une adresse email, la page meurt et renvoie le message suivant
        {
            die("l'adresse email est incorrecte");
        }



        // On va hasher le mot de passe 
        $pass = password_hash($_POST["pass"], PASSWORD_DEFAULT);

        //Ajouter ici tous les contôles souhaités ( a savoir que c'est ici que l'on ajoute la double vérification du mot de passe, que l'adresse mail et le mot de passe sont unique,pour éviter nottamment l'incription plusieur fois de suite avec la même adresse mail et des mots de passes différents, PASSWORD_DEFAULT prend en compte ces paramètres.


        //-------------------Enregistrement du mot de passe en BDD-----------------------------------------
        //D'abord se connecter a la bdd avec require_once
        require_once "connect.php";

        $sql = "INSERT INTO `utilisateurs`(`email`, `password`, `roles`, `username`) VALUES (:email, '$pass', '[\"ROLE_USER\"]', :pseudo)";
        // Explication : la syntaxe de roles, c'est parce que c'est du JSON. 
        // Attention , ici comme on va rentrer des données utilisateurs dans la bdd , il va falloir mettre en place la sécurité (explication en attente)

        // Preparation de la requête 
        $query = $db->prepare($sql);

        //Faire des bindValue pour connecter les variables php à leur paramètre SQL
        // bind Value : liaison des valeurs 
        // 3 paramètres : identifiant du paramètre , donc sont id = : pseudo , sa valeur , ici placé dans une variable ($pseudo = strip_tags($_POST["nickname"]));, puis le type , ici ce sera toujours PDO::PARAM_
        //Ainsi on remet une couche de protection car on lie un paramètre à une variable. PARAM_STR mettra le tout en string.
        $query->bindValue(":pseudo", $pseudo, PDO::PARAM_STR);
        $query->bindValue(":email", $_POST["email"], PDO::PARAM_STR);

        $query->execute();

        // On récupère l'id du nouvel utilisateur 
        $id = $db->lastInsertId();

        // Connecter l'utilisateur , car c'est toujours mieux d'être connecté tout de suite que de refaire un formulaire de connexion, copie colle le session start 

        $_SESSION["user"] = [
            "id" => $id,
            "email" => $_POST["email"],
            "roles" => ["ROLE_USER"],
            "pseudo" => $pseudo
        ];

        header("Location: profil.php");

        //Quand la session de conxion existe, elle renvoie automatiquement au profil de l'utilisateur connecter. session user tableau accompaggner de header location , définira précisement que cette session existe, nous l'integrerons ensuite dans cette page et dans toute autre pages ou l'on a besoin de la session de connexion , en utilisant session start en tout debut de page.

        die($pass);
        // On ne veux pas risquer que le mot de passe soit divulguer , on ne le fait pas apparaitre 
    } else {

        die("le formulaire est incomplet");
        // Le formulaire n'a pas été correctement rempli, le message apparait et fait mourir le code. 
    }
}



// On inclu le header 
include "header.php";
?>
<div class="container">
    <h1> Inscription </h1>
    <form method="post" class="form">
        <div class="pseudo">
            <label for="pseudo">Pseudo</label>
            <input type="text" name="nickname" id="pseudo">
        </div>
        <div class="email">
            <label for="email">Email</label>
            <input type="email" name="email" id="email">
        </div>
        <div class="pass">
            <label for="pass">Mot de passe</label>
            <input type="password" name="pass" id="pass">
        </div>
        <div class="button">
            <button type="submit">M'inscrire</button>
        </div>
    </form>
</div>
<?php
//on inclu le footer 
include "footer.php"
?>

<style>
    .container {
        display: flex;
        flex-direction: column;
        text-align: center;
        background-color: red;

    }

    .pseudo,
    .email,
    .pass,
    .button {
        display: flex;
        justify-content: center;
        margin-top: 10%;
    }

    /* .email {
        display: flex;
        justify-content: center;
        margin-top: 10%;
    }

    .pass {
        display: flex;
        justify-content: center;
        margin-top: 10%;
    } */
    button {
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
    }

    /* label {
        justify-content: center;
    }

    input {

        margin-left: 5%;


    } */
    label {
        display: inline-block;
        float: left;
        clear: left;
        width: 250px;
        text-align: right;
    }

    input {
        display: inline-block;
        float: left;
    }
</style>