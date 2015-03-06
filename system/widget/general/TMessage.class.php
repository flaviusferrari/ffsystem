<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class TMessage 
{
    private $_mess;
    private $_tipo;
    private $dizer;
    private $cor;
    private $_URL;


    /**
     * Método __construct()
     */
    public function __construct($tipo)
    {
        $this->_tipo = $tipo;
        $this->setDizer($tipo);
    }
    
    
    public function exibeMensagem($msn)
    {
        ob_start();  
        
        include_once 'app/views/mensagem.phtml';
        
        $result = ob_get_contents();
        ob_end_clean();   
        
        return $result;
    }
    
    public function setDizer($msn)
    {
        switch ($msn)
        {
            case 'erro':
                $this->dizer = 'Erro!!';
                $this->cor   = 'red';
                break;
            case 'ok':
                $this->dizer = 'Parabéns!';
                $this->cor   = '#0a9300';
                break;
            case 'alert':
                $this->dizer = 'Atenção!!';
                $this->cor   = '#fde309';
                break;
        }
    }
    
    
    public function setUrl($url)
    {
        $this->_URL = $url;
    }
}