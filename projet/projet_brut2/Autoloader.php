<?php
//------------------------------------Autoload---------------------------------------------------

namespace App;

class Autoloader
{
    static function register()

    {
        spl_autoload_register([
            __CLASS__,
            'autoload'
        ]);
    }


    static function autoload($class)
    {


        $class = str_replace(__NAMESPACE__ . '\\', '', $class);

        $class = str_replace('\\', '/', $class);

        echo $class;

        $fichier = __DIR__ . '/' . $class . '.php';
        if (file_exists($fichier)) {
            require_once __DIR__ . '/' . $class . '.php';
            require_once $fichier;
        } else {
            echo "<p>Impossible de charger la classe. Fichier introuvable</p>";
        }
    }
}
