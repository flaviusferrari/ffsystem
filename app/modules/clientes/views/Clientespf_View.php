<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Clientespf_View 
{
    
    public function exibeView()
    {
        ob_start();  
        
        // Select Estado
        $uf = new Estado();
        
        include MODULES .  'clientes/views/clientespf.phtml';
        
        $result = ob_get_contents();
        ob_end_clean();   
        
        return $result;
    }
}