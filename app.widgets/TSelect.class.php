<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of TSelect
 *
 * @author flavius
 */
class TSelect extends TElement
{
    // Nome do Select
    private $nome;
    
    
    /*
     *  metodo construtor
     *   instancia o objeto TSelect
     * @param $nome = nome do Select
     */
    public function __construct($nome)
    {
        parent::__construct('select');
        
        // atribui o nome do Select
        $this->name = $nome;        
    }
    
    /*
     * metodo addOption
     *  insere a opçao a ser utilizada
     * @param $value = valor do campo
     * @param $text   = texto a ser exibido
     */
    public function addOption($value, $text)
    {
        // instancia objeto Option
        $option = new TOption($value, $text);
        
        parent::add($option);
        return $option;
    }
}
