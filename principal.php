<?php 
// Verifica se a Sessão foi Iniciada
include_once "./seguranca.php";

// Inclui o cabeçalho da aplicação
//include "./classes/cabecalho.class.php";
//include "./classes/rodape.class.php";  

?>

<html> 
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>FFSystem - Sistema de Gestão de Empresas</title>
        
        <!-- Importa os arquivos CSS -->
        <link href="css/cssGeral.css" rel="stylesheet" type="text/css" />                       
        <link href="css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
	
        <!-- Importa do arquivo JavaScript -->
        <script  language="javascript"  SRC="../scripts/tooltip.js"></script>	
    </head>
<body>
    <div id="tudo">
        <!-- CABEÇÁLHO DO SISTEMA -->
        <? include ('./includes/cabecalho.php'); ?>
        
        <!-- Menu do Sistema -->
	<? include ("./includes/menu.inc.php");	?>

	<!-- CONTEÚDO DO SISTEMA -->
        <div id="conteudo"> 
            
        </div>

        <!-- Rodapé do Sistema -->
	<? include ('./includes/rodape.php'); ?>
        
    </div> <!-- Final Div Tudo -->
</body>
</html>
 





