<?php
/*
 * classe TDisplay
 *  classe para Formação de linhas e células de um formulário
 */
class TDisplay extends TElement
{
//    private $cell; // Conteúdo da Célula
//    public $conteudo;


    /*
     * método construtor
     *  instancia um novo Div
     */
    public function __construct() 
    {
        parent::__construct('div');
        
        // atribui a classe
        $this->class = 'tableBlock';
    }
    
    /*
     * método addCell
     *  agrega um novo objeto Celula no div
     */
    public function addCell($cell)
    {
        // armazena o conteúdo da célula
        parent::add($cell);
    }
    
    
    
    
}