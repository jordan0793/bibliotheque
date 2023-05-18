<?php
session_start();
include_once "header.php"
?>
<!--INFOS UTILES -->
<!--Adresse pour accéder au wordpress -->
<!--http://bibliotheque.localhost/word_press/wp-admin/index.php -->
<!--id:root, mdp : **************** -->
<!-- http://bibliotheque.localhost/index.php -->
<div class="home">
    <!-- <img src="/images/biblifond2.jpg"> -->
    <div class="bibliFond"></div>
</div>
<style>
    /* .home img {
        width: 100%;
    } */

    .bibliFond {
        background-image: url(/images/bibliFond3.jpg);
        background-repeat: no-repeat;
        width: 99.2vw;
        height: 100vh;
    }

    <?php
    include_once "footer.php"
    ?>