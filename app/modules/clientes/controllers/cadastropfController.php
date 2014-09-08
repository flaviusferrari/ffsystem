<?php

class Cadastropf extends Controller
{
    private $view;
    private $user;
    private $controller;


    public function __construct($controller)
    {
        // Inclui as Views
        require_once (BASEPATH . '/app/views/clientes/Clientespf_View.php');       
        
        $this->controller = $controller;
        
        $this->user = $_COOKIE['usuario'];
        
        $this->view = new Clientespf_View();
        
        
    }
    
    /** 
        * Metdo index()
        *   exibe o formulario 
        */
    public function index()
    {
        // Instancia o Menu
        $menu = new Menu;        
        
        //$sistema = $this->view->exibeView();
        
        //instancia a classe
        $tp = new templateParser(VIEWS . 'layout.html');
        
        //define os parâmetros da classe
        $tags = array(
                    'JQUERY' => $this->controller,
                    'CSS' => $this->controller,
                    'USER' => "$this->user",
                    'MENU' => $menu->result,
                    'SISTEMA' => $this->view->exibeView()
                );
        
        //faz a substituição
        $tp->parseTemplate($tags);
        
        // Exibe o template
        echo $tp->display();
    }
    
    
    /** 
        * Metdo salvar()
        *   salva o cliente no Banco de dados
        */
    public function salvar()
    {
        echo 'Salvar!!';
    }
   
}