<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of TInput
 *
 * @author flavius
 */
class TInput extends TElement {
    private $txt; // localizaçao da imagem
    
    /*
     *  metodo construtor
     *   instancia o objeto TImage
     * @param $source = localizaçao da Imagem
     */
    public function __construct($name, $id = Null, $class = NULL)
    {
        parent::__construct('input');
        
        // atribui o texto
        $this->name  = $name;
        
        // atribui o id
        if (isset($id))
        {
            $this->id    = $id;
        }
        
        // atribui a classe
        if (isset($class))
        {
            $this->class = $class;
        }       
        
    }
    
    /**
     * metodo setWidth
     *   atribui um comprimento para o campo
     * @param  $width = comprimento do campo
     */
    public function setWidth($width)
    {
        $this->style = 'width: '.$width.'px;';
    }
}
