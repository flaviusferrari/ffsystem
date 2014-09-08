<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class TLoader
{
    static function loader($class)
    {
        $folders = array( WIDGET.'general',
                          WIDGET.'form',
                          BASEPATH.'/app/widget/database'
                        );
        
        $folders[] =  MODELS;
        $folders[] = HELPERS;
        $folders[] = DATABASE;
        
        foreach ($folders as $folder)
        {
            if (file_exists("{$folder}/{$class}.class.php"))
            {
                require_once "{$folder}/{$class}.class.php";
                return;
            }
            if (file_exists("{$folder}/{$class}.php"))
            {
                require_once "{$folder}/{$class}.php";
                return;
            }
        }
    }
}