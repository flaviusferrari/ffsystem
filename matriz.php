<?php 
// Verifica se a Sessão foi Iniciada
include_once "./seguranca.php";

// Inclui o cabeçalho da aplicação
include "./classes/cabecalho.class.php";
include "./classes/rodape.class.php";  
?>
<html> 
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FFSystem - Sistema de Gestão de Empresas</title>
        
    <!-- Inclui os scripts CSS -->
    <link href="./layout/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
    <link href="./layout/CssComum.css" rel="stylesheet" type="text/css" />
    
    <!-- Importando o jQuery para a página -->
    <script type="text/javascript" src="jquery.js"></script>
    
    <!-- Inserindo os códigos jQuery -->
    <script type="text/javascript">
 
        $(document).ready(function(){
            // Códigos jQuery
        });

    </script>
    
    </head>
    
    <!-- Início da Página -->
    <body>        
        <div id="system">
            <?php
            // Insere o menu principal da aplicação
            include ("./classes/MenuPrincipal.htm");
            ?>

            <!-- Menu Lateral -->
            <div id="MenuLateral">
                <br>
                Bem vindo,<br>
                <a href="<? echo $_SESSION['servidor']; ?>/config_user.php" rel="tooltip" title="Clique para acessar as Configurações do Usuário!!!" style="text-decoration: none;">
                    <span style="color: green;"> <? echo $_SESSION['login']; ?></span></a> !
            </div>

            <!-- Conteúdo do Sistema -->
            <div id="conteudo">
                <!-- Titulo do Menu -->
		<div id="titulo">
			Escreva aqui o Título do Menu
		</div>
                
                <!-- Início da Programação do Sistema -->
                
                
            
            </div> <? // Fecha Div Conteúdo ?>
        
        </div> <? //Fecha Div System ?>        
    </body>
</html>