<?php
class TDisplayCell extends TElement
{
    /*
     * método Construtor
     */
    public function __construct() 
    {
        parent::__construct('span');
        $this->class = 'tableCell';
    }
    
    
    /*
     * método addConteudo
     */
    public function addConteudo($value)
    {
        parent::add($value);
    }
    
    /*
     * método setLargura
     *  seleciona a largura da célula
     */
    public function setLargura($value)
    {
        $this->style = 'width: '. $value .'px;';
    }
}