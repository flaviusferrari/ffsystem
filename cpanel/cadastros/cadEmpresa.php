<?php
// Verifica se a Sess�o foi Iniciada
include_once ("../seguranca.php");


include_once '../../classes/mensagens.class.php';

// Cria a conexão como Banco de Dados		
$mensagem = new mensagens();

?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FFSystem - Painel de Controle</title>
    
    <!-- CSS -->
    <link href="../../css/cssGeral.css" rel="stylesheet" type="text/css" />
    <link href="../../css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
    <link href="./css/cadEmpresa.css" rel="stylesheet" type="text/css" />
    
    <!-- JAVASCRIPT -->
    <script type="text/javascript" src="../../../jquery.js"></script>
    <script type="text/javascript" src="./scripts/cadEmpresa.js"></script>
</head>
    <body>
        <!-- Conteúdo do Sitema -->
	<div id="tudo">
            <!-- CABEÇÁLHO DO SISTEMA -->
            <? include ('../includes/cabecalho.php'); ?>

            <!-- Menu do Sistema -->
            <? include ("../includes/menuCpanel.inc.php"); ?>

            <!-- Conteúdo do Sistema -->
            <div id="conteudo">
                <!-- BARRA DE TÍTULO -->
                <div class="borda">
                    <div class="titulo2">
                        Cadastro da Empresa
                    </div>
                
                    <!-- Setor -->
                    <div id="setor">
                        <form name="formulario" id="formulario" method="post" action="cadEmpresa.php" autocomplete="off">
                            <!-- CÓDIGO DA EMPRESA -->
                            <div>
                                <label class="txtCampos">Cód. Empresa</label>
                                <br />
                                <input type="text" name="codEmpresa" class="cmpCodigo" id="codEmpresa" style="width: 80px;">
                            </div>
                            <div>
                                <label class="txtCampos">Empresa:</label>
                                <br />
                                <input name="nomeEmpresa" id="nomeEmpresa" value="">
                            </div>
                            <!-- BOTÃO GRAVAR -->
                            <button type="button" id="btnGravaEmpresa">Gravar</button>                  
                        </form>
                    </div> 
                </div> <!-- Borda -->
            </div> <!-- Conteúdo -->
    </body>
</html>