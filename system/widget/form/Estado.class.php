<?php

class Estado
{
    private $uf;
    public $estado;



    public function __construct($uf = NULL) 
    {
        
        $this->uf = array('AC','AL','AM','AP','BA','CE','DF','ES','GO','MA','MG','MS','MT','PA','PB','PE','PI','PR','RJ','RN','RO','RR','RS','SC','SE','SP','TO');
        
        // Select Estado
        $select_estado = new TElement('select');
        $select_estado->style = 'width: 50px;';
        $select_estado->name = 'estado';        

        // Insere os estados no Select
        foreach ($this->uf as $estado)
        {                                                  
            if($estado == $uf)
            { 
                $option = new TElement('option');
                $option->value = $estado;
                $option->selected = 'selected';
                $option->add($estado);
                $select_estado->add($option);
            }
            else 
            { 
                $option = new TElement('option');
                $option->value = $estado;
                $option->add($estado);
                $select_estado->add($option);
            }
        }
        
        // Retorna o Select
        $this->estado = $select_estado;
        
    }
}