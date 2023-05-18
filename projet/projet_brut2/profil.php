<?php
session_start();

include "header.php";
?>
<!-- Récupération des données de Connexion dans la BDD -->
<h1>Profil de <?= $_SESSION["user"]["pseudo"] ?></h1>
<p>Pseudo :<?= $_SESSION["user"]["pseudo"] ?></p>
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
?>







<?php
//on inclu le footer 
include "footer.php"
?>