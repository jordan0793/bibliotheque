<?php

namespace App\Db;

//On "importe" PDO
use PDO;
use PDOException;
//---------------------------Methode Singleton------------------------------------------------------
class Db extends PDO
{
    // Instance unique de la classe car c'est un design pattern ( patron de conception) donc instancié en private 

    private static $instance;

    // Informations de connexion 

    private const DBHOST = 'localhost';
    private const DBUSER = 'root';
    private const DBPASS = '';
    private const DBNAME = 'bibliotheque';

    private function __construct()
    {
        // DSN de connexion
        $_dsn = 'mysql:dbname=' . self::DBNAME . ';host=' . self::DBHOST;

        // On appelle le constructeur de la classe PDO

        // On place l'exception ici , on fait un try et on y place PDO exception 
        try {
            parent::__construct($_dsn, self::DBUSER, self::DBPASS);
            $this->setAttribute(PDO::MYSQL_ATTR_INIT_COMMAND, 'SET NAMES utf8'); // permet de faire les transition sur utf8
            $this->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC); // a chaque fois que l'on fait un fetch all ou simple on le fait avec assoc qui fait un rendu de tableau assiciatif, commodité
            $this->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // important , permet de bien voir les erreurs
        } catch (PDOException $e) {
            die($e->getMessage());
        }
    }
    // PS: self correspond a la la classe , instance elle même
    public static function getInstance(): self // Instance unique qyui permet de récupérer notre classe n usuellement utilisée en méthode Singleton
    {
        if (self::$instance === null) {
            self::$instance = new self(); // on aurait pu mettre new Db
        }
        return self::$instance;
    }
    // cette méthode est dite design pattern Singleton , avec un constructor privé qui ne permet pas d'instancier et une méthode static qui gnére une instance si yen a pas encore ou de récupérer une instance actuelle si il y en a déja une qui permet d'avoir qu'une seule possiblité au niveau de l'instance
    //cette méthode permettra pour récupérer l'instance et de faire db:: et de recup l'instance
}
