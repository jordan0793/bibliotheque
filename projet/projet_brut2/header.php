<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bibliotheque</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/5.2.3/zephyr/bootstrap.css" integrity="sha512-MPda0na+oHfLfAnxzP6EmNsCt/+66Yo0IUDNQX/9IxiLuP8viywSr6UWvCMTaSRI223ns8OFZUOEiZx0DU5sEg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="/index.php">Accueil</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    </div>




    <?php if (
        // Si la session de connexion est définit ET que cette session contient STRICTEMENT les rôles user et admin alors ...
        isset($_SESSION["user"])
        && ($_SESSION["user"]["roles"] === '["ROLE_USER"]["ROLE_ADMIN"]')
    ) :
        // Alors le message de bienvenue s'affiche avec nom de l'administrateur...
    ?>
        <ul class="navbar-nav me-auto">
            <div class="helloUser">Bienvenue
                <?= $_SESSION["user"]["pseudo"];
                ?> !

            </div>

            <li class="nav-item">
                <a class="nav-link" href="/gestionLivre.php">Gestion</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/menuRechercheLivre.php">Recherche</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/profil.php">Profil</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/logout.php">Deconnexion</a>
            </li>
            <!-- Alors la gestion, la recherche, le profil et la déconnexion apparaitrons dans le menu header de l'utilisateur définit par le rôle administrateur 

            En revanche, si la session de connexion est définit ET que le rôle de l'utilisateur est STRICTEMENT le rôle user alors ... !-->

        <?php elseif (
        isset($_SESSION["user"])
        && ($_SESSION["user"]["roles"] === '["ROLE_USER"]')
    ) : ?>
            <li class="nav-item">
                <a class="nav-link" href="/menuRechercheLivre.php">Recherche</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/profil.php">Profil</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/logout.php">Deconnexion</a>
            </li>
            <!-- Alors n'apparaitrons seulement que les liens de navigation recherche, profil, déconnexion  -->
        <?php else : ?>


            <li class="nav-item">
                <a class="connect" href="/login.php">Connexion
                    <span class="visually-hidden">(current)</span>
                </a>
            </li>
        </ul>
        <!-- Si nous ne figuerons dans auncun des deux précédent cas, proposez la connexion -->
    <?php endif; ?>


</nav>

<style>
    .helloUser {
        color: cyan;
        display: flex;
        justify-content: space-between;
    }

    /* ::marker {
        visibility: hidden;
    } */

    .connect {
        color: white;
        list-style: none;
        text-decoration: none;
    }

    .collapse {
        display: flex;
    }

    nav {
        display: flex;
    }

    .nav-item {
        display: flex;

        color: white;

    }

    main {
        min-height: calc(100vh - 129px);
    }
</style>

<main>