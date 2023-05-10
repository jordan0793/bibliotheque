<?php
session_start();

use App\Autoloader;
use App\Db\Db;
use App\Models\AnnoncesModel;
use App\Models\Model;

require_once 'Autoloader.php';
Autoloader::register();

include_once "header.php";


echo "livre Ajouté";

include_once "footer.php";
