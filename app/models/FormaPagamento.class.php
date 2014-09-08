<?php

class FormaPagamento
{
    public $pag;

    public function __construct() 
    {
        // Select Forma Pagamento
        $select_pagamento = new TElement('select');
        $select_pagamento->style = 'width: 150px;';
        $select_pagamento->name = 'fPagamento';
        //$cell_02_03->add($select_pagamento);

        /*
         ***** Efetua a consulta dos tipos de Pagamento
         */    
        // cria instrução de SELECT
        $sql = new TSqlSelect;
        // define o nome da entidade
        $sql->setEntity('fpagamento');
        // acrescenta colunas à consulta
        $sql->addColumn('*');    
        // critério de seleção
        $criteria = new TCriteria;
        $criteria->setProperty('order', 'fpagamento');
        $sql->setCriteria($criteria);  
        // abre conexão com a base my_livro (mysql)
        $conn = TConnection::open('mysql');
        // executa a instrução SQL
        $result = $conn->query($sql->getInstruction());
        // Verifica se a consulta foi bem sucedida e preenche as opções
        if ($result)
        {
            while ($pagamentos = $result->fetch(PDO::FETCH_ASSOC))
            {
               $option = new TElement('option');
               $option->value = $pagamentos['id'];
               $option->add($pagamentos['fpagamento']);
               $select_pagamento->add($option);
            }
        }
        // fecha a conexão
        $conn = null;
         
        
        $this->pag = $select_pagamento;
        
        //return $this->pag;
    }
}