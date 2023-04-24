<?php
session_start();
include_once "header.php"
?>
<form action="./rechercheCriteres/rechercheAuteur.php">
    <button type="submit" class="btn btn-success">Rechercher un Auteur</button>
</form>
<form action="./rechercheCriteres/rechercheTitre.php">
    <button type="submit" class="btn btn-warning">Rechercher par Titre</button>
</form>
<form action="./rechercheCriteres/rechercheType.php">
    <button type="submit" class="btn btn-danger">Recherche par type</button>
</form>

<?php
include_once "footer.php"
?>