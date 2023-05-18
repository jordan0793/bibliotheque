<?php
session_start();
// on verifie si le formulaire a été envoyé
// si je suis connecté, j'ai pas besoin de m'inscrire , tu va direct a mon profil 
if (isset($_SESSION["user"]["pseudo"])) {
    header("Location: profil.php");
    exit;
}
if (!empty($_POST)) {

    // le formulaire a été envoyé 
    //On vérifie que TOUS les champs requis sont remplis 
    if (
        isset($_POST["email"], $_POST["pass"])
        && !empty($_POST["email"]) && !empty($_POST["pass"])
    ) {

        // on vérifie que c'est bien un email au format email 
        if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) // Trad code : Si ce n'est pas un email, le code meurt.
        {
            die("l'adresse email est incorrecte");
        }
        //On se connecte a la BDD
        require_once "connect.php";

        $sql = "SELECT * FROM `utilisateurs` WHERE `email` = :email";

        $query = $db->prepare($sql);


        //bindValue protection , la valeur reçoit comme paramètre , obligation de traiter cela en chaine de caractère, protection permettant de ne pas inclure de language.
        $query->bindValue(":email", $_POST["email"], PDO::PARAM_STR);

        $query->execute();

        $user = $query->fetch();
        // var_dump($user);

        if (!$user) {
            die("Vous n'êtes pas inscrit, Inscrivez vous pour vous connecter");
        }

        // var_dump(password_verify($_POST["pass"], $user["password"])); renvoi le booléen true si les 2 correspondent, false si l'un des deux éléments est erroné,
        // + password_verify — Vérifie qu'un mot de passe correspond à un hachage, hachage contenu dans la bdd
        //2 paramètres : le password entrer dans le formulaire = $_POST et le paramètre mot de passe existant en bdd = $user["password"]

        if (!password_verify($_POST["pass"], $user["password"])) {
            // echo $_POST["pass"];
            // echo $user["password"];
            die("L'utilisateur et/ou le mot de passe est incorrect");
        }
        //Si le password n'a pas son equivalent dans la base de donnée, cela devrait die 

        // Ici l'utilisateur et le mot de passe sont corrects
        // on va pouvoir connecter l'utilisateur
        //On demarre la session PHP

        // En 2 étape , d'abord ouvrir la session php ensuite la sesssion utilisateur 
        // on démarre la session php en appellant session start , on est obliger de l'apeller ainsi car cette fonction , contrairement a POST et GET, SESSION START , n'existe que l'orsqu'elle est définie dans la page. Si tu fait un simple var_dump de la fonction , ça marchera pas. 


        // On va stocker dans $_session les données de l'utilisateur
        // On stock dans un nouveau tableau des données que l'on nomme et que l'on définit a partir des données figurant dans la base de donnée
        $_SESSION["user"] = [
            "id" => $user["utilisateur_id"],
            "email" => $user["email"],
            "roles" => $user["roles"],
            "pseudo" => $user["username"]
        ];
        // var_dump($_SESSION); // pour vérification des informations 

        // On peut rediriger vers la page de profil (par exemple)
        header("Location: profil.php");
        // Attention, pas d'espace entreLocation et :, sinon error 500.
        //header location de redirection 
    }
}

// On inclu le header 
include "header.php";
?>

<div class="container">
    <h1> Connexion </h1>
    <form method="post" class="form">
        <div class="email">
            <label for="email">Email</label>
            <input type="email" name="email" id="email">
        </div>
        <div class="pass">
            <label for="pass">Mot de passe</label>
            <input type="password" name="pass" id="pass">
        </div>
        <div class="button"><button type="submit">Me connecter</button></div>
    </form>
</div>

<style>
    .container {
        display: flex;
        justify-content: center;
        /* background-color: red; */
        flex-direction: column;
        text-align: center;
    }

    h1 {
        /* background-color: aqua; */
        /* display: flex; */
        margin-top: 5%;
        display: flex;
        justify-content: center;
    }

    /* .form {
        background-color: blue;
        display: flex;

    } */

    .email {
        /* background-color: darkgreen; */
        /* display: flex; */
        margin-top: 10%;

    }

    .pass {
        /* background-color: purple; */
        /* display: flex; */
        margin-top: 10%;
        padding-right: 4%;
    }

    .button {
        /* background-color: yellow; */
        /* display: flex; */
        margin-bottom: 1%;
        margin-top: 10%;

    }

    button {
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;

    }
</style>
<?php
//on inclu le footer 
include "footer.php"
?>