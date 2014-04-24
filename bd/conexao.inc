<?php
$pagina="conexao.inc"; //aqui colocariamos o nome da pagina.
if(basename($_SERVER["PHP_SELF"])=='$pagina'){
die("<script>alert('Sem permição de acesso !')</script>\n<script>window.location=('../index.php')</script>");
}
$this->Servidor   = "localhost";
$this->UsuarioBco = "flavius";
$this->SenhaBco   = "q1w2e3r4";
$this->NomeBco    = "ffsystem";
?>
