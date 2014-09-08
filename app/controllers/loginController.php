<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Login extends Controller
{
    public $result; 
    private $user;
    private $pass;


    public function __construct()
    {
        // Recebe as variaveis
        $this->user = $_POST['usuario'];
        $this->pass = md5($_POST['senha']);
        
        // Inclui os models
        require_once (BASEPATH . '/app/models/Login_Model.php');       
        
    }      
    
    
    public function logar()
    {
        // Verifica se o usuario existe
        $dados = new Login_Model();
        
        $result = $dados->verificaLogin($this->user, $this->pass);
        
        
        if($result == 'OK')
        {
            return FALSE;
        }
        else
        {
            return $result;
        }
    }
   
}