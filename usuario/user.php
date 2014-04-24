<?php
/// Verifica se a Sessão foi Iniciada
include_once ("../seguranca.php");

// Inclui a classe para Conexão ao Banco de Dados
include "../bd/conexao.class.php";
$conexao = new Conexao;

// recebe dados do formulario
$login = $_COOKIE['usuario'];

// Sql de consulta ao usuário
$sql = "SELECT * from usuarios WHERE Login = '{$login}' ";

// Efetua a consulta ao BD
$user = $conexao->consulta($sql);
?>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>FFSystem - Sistema de Gestão de Empresas</title>                       

        <link href="../css/cssGeral.css" rel="stylesheet" type="text/css" />   
        <link href="../css/cssFormGeral.css" rel="stylesheet" type="text/css" />
        <link href="../css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />  
        <link href="./css/usuario.css" rel="stylesheet" type="text/css" />

        <!-- Importa do arquivo JavaScript -->
        <script language="javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/jquery.js"></script>        
        <script language="javascript" SRC="./scripts/user.js"></script>        
    </head>
        
<body>
    <div id="tudo">
        <!-- CABEÇÁLHO DO SISTEMA -->
        <? include ('../includes/cabecalho.php'); ?>
        
        <!-- Menu do Sistema -->
	<? include ("../includes/menu.inc.php");	?>

	<!-- CONTEÚDO DO SISTEMA -->
        <div id="conteudo"> 
            <!-- BARRA DE TÍTULO -->
            <div id="barraTitulo">
                <span class="legenda">Dados do Usuário - <label style="color: white;"><? echo $login; ?></label></span> 
            </div>           
            
            <!-- FORMULÁRIO DO CADASTRO -->
            <div id="FormPF">                
                <!-- NOME DO USUÁRIO -->
                <label class="txtCampos">Nome para Exibição:</label>
                <br>
                <input name="nome" type="text" id="nomeUsuario" value="<?php echo $user[0]['Nome'];?>" maxlength="200" style="width: 300px;" />
                <br>
                <!-- E-MAIL -->
                <label class="txtCampos">E-mail:</label>
                <br>
                <input name="email" type="text" id="mailUsuario" value="<?php echo $user[0]['Email'];?>" style="width: 250px;"  />
                <br>
                <!-- PERGUNTA SECRETA -->
                <label class="txtCampos">Pergunta Secreta:</label>
                <br>
                <input name="pergunta" type="text" id="perguntaUsuario" value="<?php echo utf8_encode($user[0]['Pergunta']);?>" style="width: 300px;" />
                <br>
                <!-- RESPOSTA SECRETA -->
                <label class="txtCampos">Resposta Secreta:</label>
                <br>
                <input name="resposta" type="text" id="respostaUsuario" value="<?php echo utf8_encode($user[0]['Resposta']);?>" style="width: 300px;" />
                <br>
                <div id="mensagem" class="msnAlerta"></div>
                <br>
                <!-- BOTÕES --> 
                <button type="button" id="btnAtualizaUsuario">Atualiza Dados</button>
                <button type="button" name="modal" id="btnModificaSenha" value="#dialog">Trocar Senha</button>
            </div>
        </div>

        <!-- Rodapé do Sistema -->
	<? include ('../includes/rodape.php'); ?>
    </div>
    
    <div id="boxes">
        <!-- #personalize sua janela modal aqui -->
        <div id="dialog" class="window">
            <!-- Botão para fechar a janela tem class="close" -->
            <a href="#" class="close">X</a>
            <b>Troca Senha</b> 
            <hr><br>
            <div id="cadastro">
                <span class="tableBlock">			
                    <span class="tableCell">
                        <span class="TituloRel">Senha Atual:</span>
                        <br>
                        <input name="senhaAtual" id="senhaAtual" type="password" class="inpLogon">
                        <input name="idUsuario" id="idUsuario" type="hidden" value="<? echo $_COOKIE['idUsuario']; ?>">
                    </span>
                </span>
                <span class="tableBlock">			
                    <span class="tableCell">
                        <span class="TituloRel">Senha Nova:</span>
                        <br>
                        <input name="senhaNova" id="senhaNova" type="password" class="inpLogon">
                    </span>
                </span>
                <span class="tableBlock">
                    <span class="tableCell">
                        <span class="TituloRel">Repete a Senha:</span>
                        <br>
                        <input id="repeteSenha" name="repeteSenha" type="password" class="inpLogon">
                    </span>                              
                </span>
                <div id="msnSenha"></div>
                <br>                
                <button type="button" id="btnMudaSenha">Muda Senha</button> 
            </div>
        </div>
        <!-- Não remova o div#mask, pois ele é necessário para preencher toda a janela -->
        <div id="mask"></div>
    </div>
</body>
</html>