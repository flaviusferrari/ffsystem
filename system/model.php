<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Model
{
    /**
     * Método buscaDadosTabela()
     *   localiza os dados do Motorista
     * 
     * @param type $id
     * @param string $table = Nome da tabela
     */
    public function buscaDadosTabela($id, $table)
    {
        $sql = new TSqlSelect;
        
        $sql->setEntity($table);
        
        $sql->addColumn('*');
        
        // Critéria
        $criteria = new TCriteria;
        $criteria->add(new TFilter('id', '=', $id));
        $sql->setCriteria($criteria);
        
        try
        {           
            // executa a instrução SQL
            $result = $this->conn->query($sql->getInstruction());
            
            // grava no Log
            $this->_log->write($sql->getInstruction());

            if ($result)
            {                
                $tabela = $result->fetch(PDO::FETCH_ASSOC);
                
                return $tabela;
            }    
        } 
        catch (Exception $e) 
        {
            // exibe a mensagem de erro
            return "Erro!: " . $e->getMessage() . "<br><br>\n";
        }   
    }
}