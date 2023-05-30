<?php
session_start();

include "header.php";
?>



<main class="container">
    <section class="row">
        <h1 class='my-2'>Profil de <?= ucfirst($_SESSION["user"]["pseudo"]) ?></h1>
        <p class="text">Pseudo :<?= ucfirst($_SESSION["user"]["pseudo"]) ?></p>
        <p class="text">Email :<?= $_SESSION["user"]["email"] ?></p>
        <?php
        if ($_SESSION["user"]["roles"] === '["ROLE_USER"]["ROLE_ADMIN"]') {
            $roleAttribue = "Administrateur";

        ?>
            <p class="text">Role :<?= $roleAttribue ?></p>
        <?php
        } else {
            $roleAttribue = "Utilisateur";


        ?>
            <p class="text">Role :<?= $roleAttribue ?></p>


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
    .text {
        padding-top: 5%;
    }
</style>

<?php
//on inclu le footer 
include "footer.php"
?>