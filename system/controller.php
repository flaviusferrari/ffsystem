<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Controller
{
    protected function view($nome)
    {
        return require_once "app/views/{$nome}.php";        
    }
}