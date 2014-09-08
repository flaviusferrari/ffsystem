<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
//include_once WIDGET . 'general/TElement.class.php';
//include_once WIDGET . 'general/TLabel.class.php';

class Menu extends Model
{
    public $result;
    
    public function __construct() 
    {      
        
        ob_start();        
        
        include_once 'app/views/menu.inc.php';
        
        $this->result = ob_get_contents();
        ob_end_clean();   
        
        return $this->result;
        
    }    
    
}
