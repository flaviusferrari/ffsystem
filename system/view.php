<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class View
{
    public $result;
    public $controller;
    protected $_menu;
    protected $_sistema;
    
    public function setLibraries($controller) 
    {      
        
        ob_start();        
        
        include_once 'app/views/libraries.phtml';
        
        $this->result = ob_get_contents();
        ob_end_clean();   
        
        return $this->result;
        
    }    
    
    
    
    /**
     *  metodo getInclude( )
     *  retorna o include desejado
     * 
     * @parm $include = nome do include
     */
    public function getInclude($include, $texto = NULL)
    {
        // Inica a gravaçao do retorno
        ob_start();
        
        // inclui o arquivo
        include_once "app/views/{$include}.phtml";
        
        // armazena o include em uma variavel
        $result = ob_get_contents();
        
        // finaliza a gravaçao
        ob_end_clean();
        
        // retorna o resultado
        return $result;
    }
    
    /**
     * Método setMensagem()
     *   exibe uma mensagem na tela
     * 
     * @param $mensagem = texto da mensagem
     */
    public function setMensagem($mensagem)
    {
        // lê o INI e retorna um array
        $mess = parse_ini_file("app/language/pt_br/messages.ini");
        
        // Verifica se existe o código da mensagem
        // se não existir apresenta a mensagem passada
        $msn = isset($mess[$mensagem]) ? $mess[$mensagem] : $mensagem;                
        
        // Inica a gravaçao do retorno
        ob_start();
        
        // inclui o arquivo
        include_once "app/views/mensagem.phtml";
        
        // armazena o include em uma variavel
        $result = ob_get_contents();
        
        // finaliza a gravaçao
        ob_end_clean();
        
        // retorna o resultado
        return $result;
    }
    
    /**
     * Método exibeLayout()
     *  exibe o layout geral
     */
    public function exibeLayout()
    {
        //instancia a classe
        $tp = new templateParser('template/layout.html');
        
        //define os parâmetros da classe
        $tags = array(
                    'LIBRARIES' => $this->setLibraries($this->controller),
                    'USER' => $_COOKIE['nomeUsuario'],
                    'MENU' => $this->_menu,
                    'DIR' => DIR,
                    'SISTEMA' => $this->_sistema
                );
        
        //faz a substituição
        $tp->parseTemplate($tags);
        
        // Exibe o template
        echo $tp->display();
    }
    
    /**
     * Método setMenu()
     *   seta o menu
     * 
     * @param type $name = Menu do sistema
     */
    public function setMenu($menu)
    {
        $this->_menu = $menu;
    }
    
    /**
     * Método setSistema()
     *   seta o sistema
     * 
     * @param type $sys = sistema
     */
    public function setSistema($sys)
    {
        $this->_sistema = $sys;
    }
}