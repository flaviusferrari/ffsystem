<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of TOption
 *
 * @author flavius
 */
class TOption extends TElement
{
     /*
     *  metodo construtor
     *   instancia o objeto TSelect
     * @param $nome = nome do Select
     */
    public function __construct($value, $text)
    {
        parent::__construct('option');
        
        // atribui o valor do option
        $this->value = $value;        
        
        // atribui o Texto a ser apresentado
        parent::add($text);
    }
}
