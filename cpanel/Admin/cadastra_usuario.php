<?php
// Verifica se a Sess�o foi Iniciada
include_once ("../seguranca.php");

// Inclui a classe para Conexão ao Banco de Dados
include_once "../../bd/conexao.class.php";

// Inclui a classe de Mensagem
include_once '../../classes/mensagens.class.php';
$mensagem = new mensagens();

// Cria a conexão como Banco de Dados		
$conexao = new Conexao;

if (!$conexao) {
    echo 'Não há conexão!!';
}

?>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FFSystem - Painel de Controle</title>
    
    <!-- CSS -->
    <link href="../../css/cssGeral.css" rel="stylesheet" type="text/css" />
    <link href="../../css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
    
    <!-- Importa do arquivo JavaScript -->
    <script language="text/javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/formulario.js"></script>   
     <script language="javascript">
        function validar()
        {
            var login = document.getElementById("login").value;
            var senha = document.getElementById("senha").value;
            var rep_senha = document.getElementById("rep_senha").value;
            var nome = document.getElementById("nome").value;
          
            if (login == "") {
                alert ('Login não pode ficar em branco!!!');
                formulario.login.focus();
                return false;
            }

            if (senha == "") {
                alert ('Campo senha não pode ficar em branco!!!');
                formulario.senha.focus();
                return false;
            }

            if (rep_senha == "") {
                alert ('Campo Repetir senha não pode ficar em branco!!!');
                formulario.rep_senha.focus();
                return false;
            }

            if (senha != rep_senha) {
                alert('Campo Repetir senha diferente da senha!!!');
                formulario.rep_senha.focus();
                return false;
            }

            if (nome == "") {
                alert('Campo Nome é necessário para a Exibição. Não pode ser deixado em branco!!!');
                formulario.nome.focus();
                return false;
            }

            // Caso todos os requesitos tenham sido preenchidos
            doEnviar('CadastraUsuario');
        }
        
        function doEnviar(Acao) 
			{ //inicio da funcao
				//pega o formulário como elemento
	            var formulario = document.getElementById('formulario');
	            
	            //monta os parametros de get
	            var parsGet = '?acao=' + Acao;
	            //parsGet = parsGet + '&txtNome=' + document.getElementById('txtNome').value;
	            
	            //muda o parâmetro action do formulário com os parmetros get
	            formulario.action = formulario.action + parsGet;
	            
	            //envia o formulário
	            formulario.submit();
	        }    
     </script>
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
                    <!-- Barra de Localização -->
                    <div id="localizacao">
                        Cadastro de Usuário
                    </div>
                    
                    <? 
                    /*************************************
                     * Verifica se foi enviado algum GET
                     *************************************/
                    if (!$_GET or $_GET["acao"] == "") {                    
                    ?>                    
                    <div id="cadastro">
                        <form name="formulario" id="formulario" method="post" action="cadastra_usuario.php" autocomplete="off">                            
                          <p align="center"><strong>Insira os dados do Usuário<br> a ser cadastrado!</strong></p>
                          <span class="atencao">Aten&ccedil;&atilde;o:</span> 
                          <span class="informacao">Os campos que contiverem (*) s&atilde;o obrigatórios!</span>
                          <br><br>
                          <!-- LOGIN -->
                          <label class="txtCampos">Login<span class="asterisco">*</span>:</label> <br>                                       
                          <input name="login" type="text" id="login" size="40" maxlength="200">
                          <br>
                          <!-- SENHA -->                                 
                          <label class="txtCampos">Senha<span class="asterisco">*</span>:</label><br>
                          <input name="senha" type="password" id="senha" size="20" maxlength="15" />
                          <br>    
                          <!-- REPETIR SENHA -->
                          <label class="txtCampos">Repetir Senha<span class="asterisco">*</span>:</label><br>
                          <input name="rep_senha" type="password" id="rep_senha" size="20" maxlength="15" />
                          <br> 
                          <!-- EMPRESA --> <?
                          // Busca as Empresas Cadastradas
                          $sqlConsultaEmpresa = "SELECT * FROM empresa ORDER BY nomeEmpresa";
                          $consultaEmpresa = $conexao->Consulta($sqlConsultaEmpresa); ?>
                          <label class="txtCampos">Empresa<span class="asterisco">*</span>:</label><br>
                                 <select name="empresa"> <?
                                    // Insere os Setores Cadastrados
                                    for($i=0; $i<count($consultaEmpresa); $i++) { ?>
                                    <option value="<? echo $consultaEmpresa[$i]['idEmpresa']; ?>"><? echo utf8_encode($consultaEmpresa[$i]['nomeEmpresa']); ?></option> <? 
                                    }
                                 ?>    
                                 </select>
                          <br> 
                          <!-- NOME PARA EXIBIÇÃO -->
                          <label class="txtCampos">Nome para a Exibição<span class="asterisco">*</span>:</label><br>
                          <input name="nome" type="text" id="nome" size="40" maxlength="200" />
                          <br>                             
                          <!-- E-MAIL -->
                           <label class="txtCampos">E-mail:</label><br>
                           <input name="email" type="text" id="email" size="40" maxlength="200" />
                           <br><br>
                           <input type="button" name="acao" onClick="validar()" value="Cadastra">
                               &nbsp;&nbsp;&nbsp;     
                           <input type="reset" name="limpar" value="Limpar dados" />                          
                        </form>
                    </div>
                    <? } elseif ($_GET["acao"] == "CadastraUsuario") { 
                            // recebe dados do formulario
                            $login = htmlspecialchars($_POST['login']);
                            $senha = md5($_POST['senha']);
                            $nome = htmlspecialchars($_POST['nome']);
                            $empresa = $_POST['empresa'];
                            $email = htmlspecialchars($_POST['email']);
                            $pergunta = htmlspecialchars($_POST['pergunta']);
                            $resposta = htmlspecialchars($_POST['resposta']);
                           
                            // Verifica se o Login já existe no Sistema
                            $sqlConsultaLogin = "SELECT ID FROM usuarios WHERE Login = '{$login}'";
                            $consultaLogin = $conexao->Consulta($sqlConsultaLogin);
                            if ($consultaLogin) { ?>
                                <font color="red" size="5">
                                    <b>ATENÇÃO!!!</b>
                                </font>
                                    <br>  
                                  Login de Usuário já existe!<br>
                                  Favor escolher outro login.<br><br>
                                  <a href="<? echo $_SESSION['servidor']; ?>/cpanel/Admin/cadastra_usuario.php"><img src="<? echo $_SESSION['servidor']; ?>/layout/botao_voltar.png"></a>
                                  <?
                            } else {
                                // faz consulta no banco para inserir os dados do usuario
                                $sql = "INSERT into usuarios (ID, idEmpresa, Login,Senha,Nome,Email,Pergunta,Resposta) values ('', '$empresa', '$login','$senha','$nome','$email', '$pergunta','$resposta')";

                                // faz consulta no banco de dados
                                $consulta = $conexao->onSaveBD($sql);

                                // verifica se o usuario foi cadastrado
                                if($consulta) { ?>
                                    <div style="text-align: center;"> <?
                                       // Mensagem de aviso		         
                                       $mess = 'Usuário <span style="color: blue;">'.$login.'</span> cadastrado com sucesso!!!';
                                       $mensagem->acerto($mess, $_SESSION['servidor']); ?>
                                    </div>
                                    <p align="center">
                                        <a href="cadastra_usuario.php">
                                            <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';">
                                        </a>
                                    </p>  <?
                                } else {?>
                                    <div style="text-align: center;"> <?
                                       // Mensagem de aviso		         
                                       $mess = 'Não foi possível efetuar o cadastro';
                                       $mensagem->erro($mess, $_SESSION['servidor']); ?>
                                    </div>
                                    <p align="center">
                                        <a href="cadastra_usuario.php">
                                            <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';">
                                        </a>
                                    </p> <?
                                }
                            }
                          } ?>
                </div>
	</div>  
</body>
</html>


