<?php

class Administrator extends Controller
{
    public function __construct($controller)
    {
        
        
        // Insere o Template
        $tp = new templateParser(VIEWS . 'administrator/logon.html');
        
        //define os parâmetros da classe
        $tags = array(
                    'JQUERY' => $controller,
                    'CSS' => $controller,
                );
        
        //faz a substituição
        $tp->parseTemplate($tags);
        
        // Exibe o template
        echo $tp->display();
    }    
   
}