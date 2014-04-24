<?php

 /******************************************************
              CLASSE PARA CONEXÃO AO BD
 ******************************************************/
 class Conexao
 {
     private $Servidor;
     private $UsuarioBco;
     private $SenhaBco;
     private $Conexao;
     private $NomeBco;
     public  $Resultado;

     function __construct()
         {
           
           //include '../bd/conexao.inc';
            $this->Servidor   = "localhost";
            $this->UsuarioBco = "root";
            $this->SenhaBco   = "q1w2e3r4";
            $this->NomeBco    = "ffsystem";

	   // Executa a conexão com o Banco de Dados
	   $link = mysql_connect($this->Servidor, $this->UsuarioBco, $this->SenhaBco);
	   if (!$link) {
	      die('Não foi possível conectar: ' . mysql_error());
	   }

	   // Conecta a Tabela
	   mysql_select_db($this->NomeBco, $link);
	  }


	/**************************************
	 Função de consulta ao Banco de Dados
	**************************************/
	 function Consulta($sql)
	       {
		  // Salva os Dados no Banco
		  $cDeclar = $sql;
		  $this->Resultado = mysql_query($sql);

		  // Verifica se os dados Existem
		  if (mysql_num_rows($this->Resultado) > 0)
		  {
		     while ($line = mysql_fetch_assoc($this->Resultado))
		     {
		       $dados[] = $line;
		     }
		     return $dados;
		  }else{			 
			 // Exibe mensagem de erro
			$mess = mysql_error();
			echo $mess;
		  }
	       }
               
               
   	/********************************************
	   Consulta determinado Dado
	********************************************/
	function ConsultaDado($dado)
	     {
	       // Salva os Dados no Banco
	       $cDeclar = $dado;
	       $this->Resultado = mysql_query($cDeclar);
	       
	       $resultado = mysql_num_rows($this->Resultado);
	       
	       return $resultado;
	     }


	/********************************************
		Grava dados no BD
	********************************************/
	function onSaveBD($sql)
	{
	  // Salva os Dados no Banco
	  //$cDeclar = $sql;
	  $this->Resultado = mysql_query($sql);

	  // Verifica se os dados foram cadastrados com sucesso
	  if ($this->Resultado)
	  {
	     return true;

	  }else{
	     
	    // Exibe mensagem de erro
	    $mess = mysql_error();
		echo $mess;
	  }
	// Fecha function onSaveBD()
	} 

	/******************************************************
		    BUSCA DADOS
	******************************************************/
	function BuscaDados($sql)
	{
	   // Salva os Dados no Banco
	   $cDeclar = $sql;
	   $this->Resultado = mysql_query($cDeclar);

	   // Verifica se os dados Existem
	   if (mysql_num_rows($this->Resultado) > 0)
	   {
	      $row = mysql_fetch_array($this->Resultado);
	      return $row;

	   }else{

	     return false;

	   }
	// Fecha function BuscaDados()
	}
        
        function consultaBanco($sql) {
            $this->Resultado = mysql_query($sql);
            return $this->Resultado;
        }
	       



// Fecha a classe
}

?>
