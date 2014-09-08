<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Classe TLabel
 *  classe para exibiçao de Texto
 *
 * @author flavius
 */
class TLabel extends TElement
{
    private $txt; // localizaçao da imagem
    
    /*
     *  metodo construtor
     *   instancia o objeto TImage
     * @param $source = localizaçao da Imagem
     */
    public function __construct($txt)
    {
        parent::__construct('label');
        
        // atribui o texto
        parent::add($txt);
        $this->class = 'TituloRel';
    }
}
