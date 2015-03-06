<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class Produtos extends Controller
{
    private $view;
    private $model;    
    private $produtos;


    public function __construct()
    {
        // Inclui as Views
        require_once (BASEPATH . '/app/modules/produtos/views/Produtos_View.php'); 
        $this->view = new Produtos_View();
        
        // Instancia o Menu
        $menu = new Menu('menu');    
        $this->view->setMenu($menu->result);         
        
        // Inclui os models
        require_once (BASEPATH . '/app/modules/produtos/models/Produtos_Model.php');  
        $this->model = new Produtos_Model();
    }
    
    /** 
        * Metdo index()
        *   exibe o formulario 
        */
    public function index()
    {         
       $this->view->setSistema($this->view->exibeView('produtos'));
       
       $this->view->exibeLayout();
    }
    
    
    /**
        * Método setProdutosParam()
        *  Inclui os parâmetros 
        */
    private function setProdutosParam()
    {
        $this->produtos = new Produtos_Param();
        
        $this->produtos->id            = $_POST['id'];
        $this->produtos->codProduto    = $_POST['codProduto'];
        $this->produtos->nomeProduto   = $_POST['nomeProduto'];
        $this->produtos->descriProduto = $_POST['descriProduto'];
        $this->produtos->valor         = $_POST['valor'];
        $this->produtos->quantidade    = $_POST['quantidade'];
        $this->produtos->qtMinima      = $_POST['qtMinima'];
        $this->produtos->obsProduto    = $_POST['obsProduto'];
    }
    
    
    /**
        * Método salvar()
        *   Salva o produto no banco de Dados
        */
    public function salvar()
    {
        $upload = new Upload($_FILES['foto'], 500, 450, "template/images/fotos/", $_POST['codProduto']);
        $salvar = $upload->salvar();
        
        if(is_string($salvar))
        {
            $msn = new TMessage('erro');
            $msn->setUrl('produtos');
            
            $this->view->setSistema($msn->exibeMensagem($salvar)); 
        }
        
        // Exibe o resultado
        $this->view->exibeLayout();
    }
    

    /**
        * Método localizaProduto()
        *  busca o produto no Banco de Dados
        */
    public function localizaProduto()
    {
        $produtos = $this->model->localizarProduto($_POST['cod']);
        
        if (is_string($produtos))
        {
            return FALSE;
        }
        else
        {
            $this->view->exibeProdutos($produtos);
        }
    }
    
    
    /**
        * Método exibeGeral()
        *  exibe todos os produtos Cadastrados
        */
    public function exibeGeral()
    {
        // Busca as Imagens
        $produtos = $this->model->localizarProdutosGeral();
        
        // Processa o resultado
        if (is_string($produtos))
        {
            $this->view->mensagem($produtos);
        }        
        else
        {
            // Exibe a Ordem
            $this->view->setSistema($this->view->exibeView('exibeImagens', $produtos));
        }    
        
        // Exibe o resultado
        $this->view->exibeLayout();
    }

}