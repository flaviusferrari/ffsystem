<?php

class Index extends Controller
{
    public function __construct()
    {
        $user = $_COOKIE['usuario'];
        
        $menu = new Menu;
        
        $sistema = ' ';
        
        //instancia a classe
        $tp = new templateParser('template/layout.html');
        
        //define os parâmetros da classe
        $tags = array(
                    'JQUERY' => CONTROLL,
                    'CSS' => CONTROLL,
                    'USER' => "$user",
                    'MENU' => $menu->result,
                    'SISTEMA' => $sistema
                );
        
        //faz a substituição
        $tp->parseTemplate($tags);
        
        // Exibe o template
        echo $tp->display();
    }    
   
}