<?php

namespace App\Models;

//--------------------------Partie 1 ----------------------------------------------------
// class AnnoncesModel extends Model
// {
//     public function __construct()
//     {
//         $this->table = 'annonces';
//     }
// }

//-----------------------------Partie 2 : CREATION ---------------------------------------------------

// Il va falloir mettre en place de ModelAnnonce une structure avec tous les champs présent dans la BDD et les GETTER et SETTER

class AnnoncesModel extends Model
{
    // déclaration des variables correspondant aux tables avant le constructor 
    protected $id_li;
    protected $titre_li;
    protected $resume_li;
    protected $type_li;
    protected $auteur_li;
    protected $nb_exemplaire_li;


    public function __construct()
    {

        $this->table = 'livre';
    }


    /**
     * Get the value of id_li
     */
    public function getId_li()
    {
        return $this->id_li;
    }

    /**
     * Set the value of id_li
     *
     * @return  self
     */
    public function setId_li($id_li)
    {
        $this->id_li = $id_li;

        return $this;
    }

    /**
     * Get the value of titre_li
     */
    public function getTitre_li()
    {
        return $this->titre_li;
    }

    /**
     * Set the value of titre_li
     *
     * @return  self
     */
    public function setTitre_li($titre_li)
    {
        $this->titre_li = $titre_li;

        return $this;
    }

    /**
     * Get the value of resume_li
     */
    public function getResume_li()
    {
        return $this->resume_li;
    }

    /**
     * Get the value of type_li
     */
    public function getType_li()
    {
        return $this->type_li;
    }

    /**
     * Set the value of type_li
     *
     * @return  self
     */
    public function setType_li($type_li)
    {
        $this->type_li = $type_li;

        return $this;
    }

    /**
     * Get the value of auteur_li
     */
    public function getAuteur_li()
    {
        return $this->auteur_li;
    }

    /**
     * Set the value of auteur_li
     *
     * @return  self
     */
    public function setAuteur_li($auteur_li)
    {
        $this->auteur_li = $auteur_li;

        return $this;
    }

    /**
     * Get the value of nb_exemplaire_li
     */
    public function getNb_exemplaire_li()
    {
        return $this->nb_exemplaire_li;
    }

    /**
     * Set the value of nb_exemplaire_li
     *
     * @return  self
     */
    public function setNb_exemplaire_li($nb_exemplaire_li)
    {
        $this->nb_exemplaire_li = $nb_exemplaire_li;

        return $this;
    }
}
