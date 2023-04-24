<?php
session_start();
// Permet de supprimer une variable 
// video 14 , si je suis connecté, j'ai pas besoin de m'inscrire , tu va direct a mon profil 
if (!isset($_SESSION["user"])) {
    header("Location: login.php");
    exit;
}
unset($_SESSION["user"]);

header("Location: index.php");
