<?php 

// Verifica se a Sessão foi Iniciada
include_once ("./seguranca.php");
?>
<html>
   <head>
      <title>FFSystem - Painel de Controle</title>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <link href="../css/cssGeral.css" rel="stylesheet" type="text/css" />
      <link href="../css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
   </head>
    <body>
        <!-- Conteúdo do Sitema -->
        <div id="tudo">
            <!-- CABEÇÁLHO DO SISTEMA -->
            <?php include ('./includes/cabecalho.php'); ?>
            
            <!-- Menu do Sistema -->
            <?php include ("./includes/menuCpanel.inc.php"); ?>
            
            <!-- Conteúdo do Sistema -->
            <div id="conteudo">

            </div>
        </div>  
    </body>
</html>

