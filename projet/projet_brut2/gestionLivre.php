<?php
session_start();
include_once "header.php"
?>


<!-- Stylisme -->

<div class="container">

    <div class="card border-success addBook mb-3">
        <div class=" card-header">AJOUTER UN LIVRE</div>
        <div class="card-body">
            <form action="ajouterLivre.php">
                <button type="submit" class="btn btn-success">Cliquer</button>
            </form>
        </div>
    </div>
    <div class="secondPannel">

        <div class="card border-warning mb-3" style="max-width: 20rem;">
            <div class="card-header">MODIFIER UN LIVRE - Recherche par auteur</div>
            <div class="card-body">
                <form action="/rechercheCriteres/modifierParAuteur.php">
                    <button type="submit" class="btn btn-warning">Cliquer</button>
                </form>
            </div>
        </div>
        <div class="card border-warning mb-3" style="max-width: 20rem;">
            <div class="card-header">MODIFIER UN LIVRE - Recherche par titre</div>
            <div class="card-body">
                <form action="/rechercheCriteres/modifierParTitre.php">
                    <button type="submit" class="btn btn-warning">Cliquer</button>
                </form>
            </div>
        </div>
        <div class="card border-warning mb-3" style="max-width: 20rem;">
            <div class="card-header">MODIFIER UN LIVRE - Recherche par genre</div>
            <div class="card-body">
                <form action="/rechercheCriteres/modifierParType.php">
                    <button type="submit" class="btn btn-warning">Cliquer</button>
                </form>
            </div>
        </div>
    </div>

    <div class="thirdPannel">
        <div class="card border-danger mb-3" style="max-width: 20rem;">
            <div class="card-header">SUPPRIMER UN LIVRE - Recherche par auteur</div>
            <div class="card-body">
                <form action="/rechercheCriteres/supprimerParAuteur.php">
                    <button type="submit" class="btn btn-danger">Cliquer</button>
                </form>
            </div>
        </div>

        <div class="card border-danger mb-3" style="max-width: 20rem;">
            <div class="card-header">SUPPRIMER UN LIVRE - Recherche par titre</div>
            <div class="card-body">
                <form action="/rechercheCriteres/supprimerParTitre.php">
                    <button type="submit" class="btn btn-danger">Cliquer</button>
                </form>
            </div>
        </div>

        <div class="card border-danger mb-3" style="max-width: 20rem;">
            <div class="card-header">SUPPRIMER UN LIVRE - Recherche par genre</div>
            <div class="card-body">
                <form action="/rechercheCriteres/supprimerParType.php">
                    <button type="submit" class="btn btn-danger">Cliquer</button>
                </form>
            </div>
        </div>
    </div>


</div>

<style>
    .addBook {
        height: 50%;
    }

    .container {
        display: flex;
        flex-wrap: wrap;
        margin-top: 5%;

    }

    button {
        width: 100%;
    }

    .card {
        margin-left: 10%;
    }
</style>
<?php
include_once "footer.php"
?>