<?php

//private $title;

class Cabecalho{

var $versao = 'vers&atilde;o 0.2'; 

 function __construct($titulo)
    {
	
	echo "<title>" . $titulo . $this->versao . "</title>\n";

    }	

// Finaliza a classe Cabecalho
}

?>
