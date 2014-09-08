<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Clientes extends Controller
{
    private $view;
    private $user;
    private $controller;
    private $sistema;
    private $_menu;


    public function __construct()
    {
        // Inclui as Views
        require_once (MODULES . 'clientes/views/Clientespf_View.php');       
        
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
        $this->_menu = new Menu;        
        
        $this->sistema = $this->view->exibeView();
        
        $this->exibe();
    }
    
    /**
     * Método exibe()
     *   Exibe o formulário 
     */
    private function exibe()
    {
        //instancia a classe
        $tp = new templateParser('template/layout.html');
        
        //define os parâmetros da classe
        $tags = array(
                    'JQUERY' => CONTROLL,
                    'CSS' => CONTROLL,
                    'USER' => "$this->user",
                    'MENU' => $this->_menu->result,
                    'SISTEMA' => $this->sistema
                );
        
        //faz a substituição
        $tp->parseTemplate($tags);
        
        // Exibe o template
        echo $tp->display();
    }
}