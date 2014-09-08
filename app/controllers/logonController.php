<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Logon extends Controller
{
    public function __construct()
    {
        //instancia a classe
        $tp = new templateParser('template/logon.html');
        
        //define os parâmetros da classe
        $tags = array(
                   'JQUERY' => CONTROLL,
                   'CSS' => CONTROLL,
                );
        
        //faz a substituição
        $tp->parseTemplate($tags);
        
        // Exibe o template
        echo $tp->display();
    }        
   
}