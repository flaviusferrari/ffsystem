<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
class Produtos_Model extends Model
{
    protected $conn;
    private $_tablename;   
    protected $_log;


    public function __construct() 
    {
        // abre conexão com a base my_livro (mysql)
        $this->conn = TConnection::open('mysql');

        // define o arquivo de LOG
        $this->_log = new TLoggerTXT('LOG.txt');
        
        $this->_tablename = 'produtos';
    }    
    
    
    /**
        * Métod localizarProduto()
        *   localiza o produto
        * 
        * @param type $cod = Código do Produto
        * @return boolean
        */
    public function localizarProduto($cod)
    {
        $sql = new TSqlSelect;
        
        $sql->setEntity($this->_tablename);
        
        $sql->addColumn('*');
        
        // Critéria
        $criteria = new TCriteria;
        $criteria->add(new TFilter('cod_produto', '=', $cod));
        $sql->setCriteria($criteria);        
        
        try 
        {
            // executa a instrução SQL
            $result = $this->conn->query($sql->getInstruction());
            
            // grava no Log
            $this->_log->write($sql->getInstruction());
            
            // Verifica se retornou algum Cliente
            if ($result)
            {                
                $produto = $result->fetch(PDO::FETCH_ASSOC);                
                               
                return $produto;
            }
        } 
        catch (Exception $ex) 
        {
            // exibe a mensagem de erro
            echo "Erro: " . $ex->getMessage(); 
        }
    }
    
    
    /**
        * Métod localizarProdutosGeral()
        *   localiza todos os produto
        * 
        * @param type $cod = Código do Produto
        * @return boolean
        */
    public function localizarProdutosGeral()
    {
        $sql = new TSqlSelect;
        
        $sql->setEntity($this->_tablename);
        
        $sql->addColumn('*');
        
        // Critéria
        $criteria = new TCriteria;
        //$criteria->add(new TFilter('cod_produto', '=', $cod));
        $criteria->setProperty('order', 'codProduto');
        $sql->setCriteria($criteria);        
        
        try 
        {
            // executa a instrução SQL
            $result = $this->conn->query($sql->getInstruction());
            
            // grava no Log
            $this->_log->write($sql->getInstruction());
            
            // Verifica se retornou algum Cliente
            if ($result)
            {                
                $produto = $result->fetchAll(PDO::FETCH_ASSOC);                
                               
                return $produto;
            }
        } 
        catch (Exception $ex) 
        {
            // exibe a mensagem de erro
            echo "Erro: " . $ex->getMessage(); 
        }
    }
}
