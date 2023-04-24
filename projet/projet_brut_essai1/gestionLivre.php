<?php
session_start();
include_once "header.php"
?>
<form action="ajouterLivre.php">
    <button type="submit" class="btn btn-success">Ajouter un livre</button>
</form>
<form action="modifierLivre.php">
    <button type="submit" class="btn btn-warning">Modifier un livre</button>
</form>
<form action="supprimerLivre.php">
    <button type="submit" class="btn btn-danger">Supprimer un livre</button>
</form>

<?php
include_once "footer.php"
?>