<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Clientespf extends Controller
{
    private $view;
    private $user;
    private $sistema;


    public function __construct()
    {
        // Inclui as Views
        require_once (MODULES . 'clientespf/views/Clientespf_View.php');       
        
        $this->user = $_COOKIE['usuario'];
        
        $this->view = new Clientespf_View();    
        $this->view->controller = 'cadastropf';
    }
    
    
    
    /** 
    * Metdo index()
    *   exibe o formulario 
    */
    public function index()
    {
        // Instancia o Menu
        $menu = new Menu;        
        
        $this->view->setMenu($menu->result);
        
        $this->view->setSistema($this->view->exibeView());
        
        $this->view->exibeLayout();
    }
    
    
}