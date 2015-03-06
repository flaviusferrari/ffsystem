<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Clientespf extends Controller
{
    private $view;
    private $model;
    private $user;
    private $sistema;


    public function __construct()
    {
        // Inclui as Views
        require_once (MODULES . 'clientespf/views/Clientespf_View.php'); 
        $this->view = new Clientespf_View(); 
        
        $this->user = $_COOKIE['usuario'];
        
        // Inclui os models
        require_once (BASEPATH . '/app/modules/clientespf/models/Clientespf_Model.php');  
        $this->model = new Clientespf_Model();
    }
    
    /**
     * Método setClientesParam()
     *  Inclui os parâmetros 
     */
    private function setClientesParam()
    {
        $this->_cliente = new Clientes_Param();
        
        $this->_cliente->id_cliente  = $_POST['idCliente'];
        $this->_cliente->nome        = $_POST['nome'];
        $this->_cliente->endereco    = $_POST['endereco'];
        $this->_cliente->numero      = $_POST['numero'];
        $this->_cliente->complemento = $_POST['complemento'];
        $this->_cliente->cep         = $_POST['cep'];
        $this->_cliente->bairro      = $_POST['bairro'];
        $this->_cliente->idCidade    = $_POST['idCidade'];
        $this->_cliente->uf          = $_POST['estado'];
        $this->_cliente->tipo        = $_POST['tipo'];
        $this->_cliente->telefone1   = $_POST['telefone1'];
        $this->_cliente->telefone2   = $_POST['telefone2'];
        $this->_cliente->celular     = $_POST['celular'];
        $this->_cliente->obs         = $_POST['obs'];
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