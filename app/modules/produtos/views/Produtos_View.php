<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Produtos_View extends View
{
    /**
        * Método exibeView
        *   exibe o formulário
        * 
        * @param string $view = Nome da view a ser exibida
        */
    public function exibeView($view, $dados = NULL)
    {
        ob_start();  
        
        include MODULES .  "produtos/views/{$view}.phtml";
        
        $result = ob_get_contents();
        ob_end_clean();   
        
        return $result;
    }
    
    
    /**
        * Método exibeProduto()
        * 
        * @param $produtos = Array contendo os produtos
        */
    public function exibeProdutos($produtos)
    {
       // Retorna os dados
       echo $produtos['nome_produto'] . '~'. $produtos['descri_produto'];

    }
}