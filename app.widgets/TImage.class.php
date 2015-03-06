<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Classe TImage
 *  classe para exibiçao de imagens
 *
 * @author flavius
 */
class TImage extends TElement
{
    private $source; // localizaçao da imagem
    
    /*
     *  metodo construtor
     *   instancia o objeto TImage
     * @param $source = localizaçao da Imagem
     */
    public function __construct($source)
    {
        parent::__construct('img');
        
        // atribui a localizaçao da imgem
        $this->src = $source;
        $this->border = 0;
    }
}
