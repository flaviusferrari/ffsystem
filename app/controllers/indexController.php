<?php

class Index extends Controller
{
    private $view;
    
    public function __construct()
    {
        $this->view = new View();         
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
        
        $this->view->exibeLayout();
    }
   
}