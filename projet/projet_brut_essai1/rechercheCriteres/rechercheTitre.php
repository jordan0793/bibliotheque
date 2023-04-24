<?php
session_start();
include_once "../header.php"
?>
<div class="form-group">
    <label for="titre" class="form-label mt-4">Entrer Titre</label>
    <input type="text" class="form-control" id="titre" name="titre" aria-describedby="titre" placeholder="Rechercher un titre de livre">
</div>

<?php
include_once "../footer.php"
?>