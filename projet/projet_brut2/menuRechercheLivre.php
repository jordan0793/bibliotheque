<?php
session_start();
include_once "header.php"
?>

<div class="container">
    <div class="firstPannel">

        <div class="card border-success mb-3" style="max-width: 20rem;">
            <div class="card-header">RECHERCHE PAR AUTEUR</div>
            <div class="card-body">
                <form action="/rechercheCriteres/fonctions/rechercheAuteur.php">
                    <button type="submit" class="btn btn-success">Cliquer</button>
                </form>
            </div>
        </div>
        <div class="card border-warning mb-3" style="max-width: 20rem;">
            <div class="card-header">RECHERCHE PAR TITRE</div>
            <div class="card-body">
                <form action="/rechercheCriteres/fonctions/rechercheTitre.php">
                    <button type="submit" class="btn btn-warning">Cliquer</button>
                </form>
            </div>
        </div>
        <div class="card border-danger mb-3" style="max-width: 20rem;">
            <div class="card-header">RECHERCHE PAR GENRE</div>
            <div class="card-body">
                <form action="/rechercheCriteres/fonctions/rechercheType.php">
                    <button type="submit" class="btn btn-danger">Cliquer</button>
                </form>
            </div>
        </div>
    </div>

    <div class="secondPannel">
        <div class="allBook card border-primary mb-3" style="max-width: 20rem;">
            <div class="card-header">TOUS LES LIVRES</div>
            <div class="card-body">
                <form action="/rechercheCriteres/fonctions/tousLivres.php">
                    <button type="submit" class="btn btn-primary">Cliquer</button>
                </form>
            </div>
        </div>
    </div>
</div>
<style>
    .container {
        display: flex;
        flex-direction: column;
    }

    .firstPannel {
        display: flex;
        flex-direction: row;
        justify-content: space-around;
        margin-top: 10%;
    }

    .secondPannel {
        display: flex;
        justify-content: center;
    }

    button {
        width: 100%;
    }

    .allBook {
        justify-content: center;

    }
</style>
<?php
include_once "footer.php"
?>