<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class System
{
    private $_url;
    private $_explode;
    public $_controller;
    public $_action;
    public $_params;


    public function __construct()
    {
        $this->setUrl();
        $this->setExplode();
        $this->setController();     
        $this->setAction();
    }
    
    /**
     *  Recebe a url digitada
     */
    private function setUrl()
    {
        // Verifica se foi digitado algo, se nao foi digitado nada encaminha para  app/controllers/indexController.php.
        $_GET['url'] = (isset($_GET['url']) ? $_GET['url'] : 'index/');
        
        // Armazena a URL 
        $this->_url = $_GET['url'];
    }
    
    /*
     *  Separa a URL
     */
    private function setExplode()
    {
        $this->_explode = explode('/', $this->_url);
    }
    
    
    /*
     * Grava o Controller chamado 
     */
    private function setController()
    {
        $this->_controller = $this->_explode[0];
        define('CONTROLL', $this->_explode[0]);
    }
    
    
    /*
     *  Grava a açao
     */
    private function setAction()
    {
        $ac = (!isset($this->_explode[1]) || $this->_explode[1] == NULL || $this->_explode[1] == "index" ? "index" : $this->_explode[1]);
        $this->_action = $ac;
    }
    
    // Obtem os demais parametros
    public function getParam($name)
    {
        return ;
    }

    
    // Roda a aplicaçao
    public function run()
    {
        $controller_path = CONTROLLERS .  $this->_controller. 'Controller.php';
        
        if (file_exists($controller_path))
        {
            require_once ($controller_path);            
        }
        else
        {
            $controller_path = MODULES . $this->_controller . '/controllers/' .  $this->_controller. 'Controller.php';
            
            if (file_exists($controller_path))
            {
                require_once ($controller_path);
            }
            else
            {
                die('Controller não existe!!');
            }
        }       
        
        
        $app = new $this->_controller();
        
        // Action
        if (method_exists($app, $this->_action))
        {
            $action = $this->_action;
            $app->$action();
        }
    }
    
    
    /**
     * Método getLogado()
     * 
     *  Verifica se o usuario esta logado no Sistema,
     *  caso não esteja redireciona para a página de Login
     */     
    public function getLogado()
    {
        if (!isset($_COOKIE['usuario']) || $_COOKIE['usuario'] == '')
        {
            //se não existe, envio à página de autenticação
            $this->_controller = 'logon';
        } 
    }
}