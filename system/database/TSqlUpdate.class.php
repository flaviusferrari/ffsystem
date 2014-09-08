<?php
/*
 * classe TSqlUpdate
 *  esta classe provê meios para manipulação de uma instrução
 *  de UPDATE no banco de dados
 */
final class TSqlUpdate extends TSqlInstruction
{
    private $columnValues;
    
    /*
     * método setRowData()
     *  atribui valores à determinadas colunas no banco de dados
     *  que serão modificados
     * @param $column = coluna da tabela
     * @param $value  = valor a ser armazenado
     */
    public function setRowData($column, $value)
    {
        // verifica se é um dado escalar (string, inteiro,...)
        if (is_scalar($value))
        {
            if (is_string($value) and (!empty($value)))
            {
                // adiciona \ em aspas
                $value = addslashes($value);
                
                // caso seja uma string
                $this->columnValues[$column] = "'$value'";
            }
            elseif (is_bool($value))
            {
                // caso seja um boolean
                $this->columnValues[$column] = $value ? 'TRUE' : 'FALSE';
            }
            elseif ($value !== '') 
            {
                // caso seja outro tipo de dado
                $this->columnValues[$column] = $value;
            }
            else
            {
                // caso seja NULL
                $this->columnValues[$column] = "NULL";
            }
        }
    }
    
    /* 
     * método getIntruction()
     *  retorna a instrução de UPDATE em forma de string.
     */
    public function getInstruction() 
    {
        // monta a string UPDATE
        $this->sql = "UPDATE {$this->entity}";
        
        // monta os pares: coluna = valor, ...
        if ($this->columnValues)
        {
            foreach ($this->columnValues as $column => $value)
            {
                $set[] = "{$column} = {$value}";
            }
        }
        
        $this->sql .= ' SET ' . implode(', ', $set);
        
        // retorna a cláusula WHERE do objeto $this->criteria
        if ($this->criteria)
        {
            $this->sql .= ' WHERE ' . $this->criteria->dump();
        }
        
        return $this->sql;
    }
}