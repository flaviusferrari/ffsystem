<?php 
// Verifica se a Sessão foi Iniciada
include_once "../seguranca.php";

// CLASSE CONEXAO 
include "../bd/conexao.class.php";
$conexao = new Conexao;

// CLASSE MENSAGEM 
include_once '../classes/mensagens.class.php';
$mensagem = new mensagens();


?>

<html> 
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>FFSystem - Sistema de Gestão de Empresas</title>
        
        <!-- Inclui os scripts CSS -->
        <link href="../layout/CSS/smoothness/jquery-ui-1.10.3.custom.min.css" rel="stylesheet" type="text/css" />
        <link href="<? echo $_SESSION['servidor']; ?>/css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
        <link href="<? echo $_SESSION['servidor']; ?>/css/cssGeral.css" rel="stylesheet" type="text/css" />            
        <link href="<? echo $_SESSION['servidor']; ?>/css/cssFormGeral.css" rel="stylesheet" type="text/css" />
        <link href="<? echo $_SESSION['servidor']; ?>/css/rltOrdem.css" rel="stylesheet" type="text/css" />
	
        <!-- Importa do arquivo JavaScript -->
        <script language="javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/jquery.js"></script>
        <script type="text/javascript" src="../scripts/jquery-ui.js"></script>
        <script language="javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/maskedinput.js"></script>
        <script language="javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/rltOrdem.js"></script>
        
    </head>
<body>
    <div id="tudo">
        <!-- CABEÇÁLHO DO SISTEMA -->
        <? include ('../includes/cabecalho.php'); ?>
        
        <!-- Menu do Sistema -->
	<? include ("../includes/menu.inc.php"); ?>

	<!-- CONTEÚDO DO SISTEMA -->
        <div id="conteudo"> 
            <!-- BARRA DE TÍTULO -->
            <div id="barraTitulo">
                <span class="legenda">Relatórios de Ordem de Serviço</span>
            </div> 
            
            <div id="FormPF">
                <div id="geral"> <?php
            if ($_GET['tipo'] == 'periodo' or !$_GET)
            { ?>
                <ul class="menu">
                        <li class="on"><a href="<? echo $_SESSION['servidor']; ?>/relatorios/rltOrdem.php?tipo=periodo">Período</a></li>
                        <li><a href="<? echo $_SESSION['servidor']; ?>/relatorios/rltOrdem.php?tipo=situacao">Situação</a></li>
                    </ul>
                    <div id="conteudoAba">                     
                        <span class="tableBlock">
                            <!-- DATA INICIAL -->
                            <span class="tableCell" style="width: 120px;">
                                <label class="txtCampos">Data Inicial:</label>
                                <br> 
                                <input name="idEmpresa" type="hidden" id="idEmpresa" value="<? echo $_COOKIE['idEmpresa']; ?>">
                                <input name="dataInicial" type="text" id="dataInicial" style="width: 100px">
                            </span>
                            <!-- DATA FINAL -->
                            <span class="tableCell" style="width: 120px;">
                                <label class="txtCampos">Data Final:</label>
                                <br> 
                                <input name="dataFinal" type="text" id="dataFinal" style="width: 100px">                                
                            </span>
                            <!-- BOTÃO DE LANÇAMENTO -->
                            <span class="tableCell" style="vertical-align: bottom;">
                                <button type="button" id="btnLocalizaOrdem" class="css3button2">Localizar Ordem</button>
                            </span>
                        </span>
                        <hr>
                        <div id="resultado"></div>
                        <!-- HISTÓRICO DE LANÇAMENTO -->
                        <div id="tabela"></div>                       
                    </div> <?php
            }
            else if ($_GET['tipo'] == 'situacao')
            { ?>
                <ul class="menu">
                        <li><a href="<? echo $_SESSION['servidor']; ?>/relatorios/rltOrdem.php?tipo=periodo">Período</a></li>
                        <li class="on"><a href="<? echo $_SESSION['servidor']; ?>/relatorios/rltOrdem.php?tipo=situacao">Situação</a></li>
                    </ul>
                    <div id="conteudoAba">                     
                        <span class="tableBlock">
                            <!-- DATA INICIAL -->
                            <span class="tableCell" style="width: 110px;">
                                <label class="txtCampos">Data Inicial:</label>
                                <br> 
                                <input name="idEmpresa" type="hidden" id="idEmpresa" value="<? echo $_COOKIE['idEmpresa']; ?>">
                                <input name="dtInicialSituacao" type="text" id="dtInicialSituacao" style="width: 90px">
                            </span>
                            <!-- DATA FINAL -->
                            <span class="tableCell" style="width: 110px;">
                                <label class="txtCampos">Data Final:</label>
                                <br> 
                                <input type="text" id="dtFinalSituacao" style="width: 90px">                                
                            </span>
                            <!-- SITUAÇÃO -->
                            <span class="tableCell" style="width: 120px;">
                                <label class="TituloRel">Situação:</label>
                                <br />
                                <select name="situacao" id="situacaoOS">
                                    <option>Selecione...</option>
                                    <option value="A">Aberta</option>
                                    <option value="M">Modificada</option>
                                    <option value="F">Fechado</option>
                                </select>
                            </span>
                            <!-- BOTÃO DE LANÇAMENTO -->
                            <span class="tableCell" style="vertical-align: bottom;">
                                <button type="button" id="btnLocalSituacao" title="Localiza OS por situação">Localizar</button>
                            </span>
                        </span>
                        <hr>
                        <div id="resultado"></div>
                        <!-- HISTÓRICO DE LANÇAMENTO -->
                        <div id="tabela"></div>                       
                    </div> <?php
            } ?>    
                </div> <!-- Fim div Geral -->
            </div><!-- Fim FormPF -->
        </div> 

        <!-- Rodapé do Sistema -->
	<? include ('../includes/rodape.php'); ?>
        
    </div> <!-- Final Div Tudo -->
     <div id="dialog-confirm"></div>
</body>
</html>