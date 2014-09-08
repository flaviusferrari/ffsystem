<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of TCheckbox
 *
 * @author flavius
 */
class TCheckbox extends TElement
{
    /*
     *  Metodo construtor
     * 
     */
    public function __construct($text, $name, $value=NULL) 
    {
        parent::__construct('input');
        
        // atribui o tipo de input
        $this->type  = 'checkbox';
        $this->name  = $name;
        $this->value = $value;
        
        // atribui o conteudo do texto
        parent::add($text);
    }
}
