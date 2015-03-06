<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Clientes_Param extends TRecord
{
    const TABLENAME = 'clientes';    
    
    public $id;
    public $tipo;
    public $documento;
    public $nome;
    public $endereco;
    public $numero;
    public $complemento;
    public $bairro;
    public $idCidade;
    public $uf;
}