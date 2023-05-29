<?php
session_start();

include "header.php";
?>



<main class="container">
    <section class="row">
        <h1 class='my-2'>Profil de <?= ucfirst($_SESSION["user"]["pseudo"]) ?></h1>
        <p>Pseudo :<?= ucfirst($_SESSION["user"]["pseudo"]) ?></p>
        <p>Email :<?= $_SESSION["user"]["email"] ?></p>
        <?php
        if ($_SESSION["user"]["roles"] === '["ROLE_USER"]["ROLE_ADMIN"]') {
            $roleAttribue = "Administrateur";

        ?>
            <p>Role :<?= $roleAttribue ?></p>
        <?php
        } else {
            $roleAttribue = "Utilisateur";


        ?>
            <p>Role :<?= $roleAttribue ?></p>


        <?php
        }
        // var_dump($_SESSION["user"]);
        // var_dump($_SESSION);
        ?>
    </section>
</main>
<style>
    main {
        text-align: center;
    }

    h1,
    p {
        padding-top: 5%;
    }
</style>



<!-- Récupération des données de Connexion dans la BDD -->







<?php
//on inclu le footer 
include "footer.php"
?>