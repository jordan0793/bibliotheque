<?php
session_start();

include "header.php";
?>
<!-- Récupération des données de Connexion dans la BDD -->
<h1>Profil de <?= $_SESSION["user"]["pseudo"] ?></h1>

<p>Pseudo :<?= $_SESSION["user"]["pseudo"] ?></p>
<p>Email :<?= $_SESSION["user"]["email"] ?></p>


<?php
//on inclu le footer 
include "footer.php"
?>