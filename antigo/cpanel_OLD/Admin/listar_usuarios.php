<?php
// Verifica se a Sess�o foi Iniciada
include_once ("../seguranca.php");

// Inclui a classe para Conexão ao Banco de Dados
include_once "../../bd/conexao.class.php";

// Cria a conexão como Banco de Dados		
$conexao = new Conexao;

if (!$conexao) {
    echo 'Não há conexão!!';
}

// Cria a Consulta ao BD com o Nome
$sql = "SELECT * FROM usuarios ORDER BY Login";

// faz consulta no banco de dados
$consulta = $conexao->Consulta($sql);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FFSystem - Painel de Controle</title>
    
    <!-- CSS -->
    <link href="../../css/cssGeral.css" rel="stylesheet" type="text/css" />
    <link href="../../css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
    <link href="../../css/cssFormGeral.css" rel="stylesheet" type="text/css" />
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
            <!-- Barra de Título -->
            <div class="borda">
                <div class="titulo2">
                     Listagem de Usuários
                </div> 
                
                <!-- Separação -->
                <div style="padding: 10px;">            
                <? if ($_GET['acao'] == "" or $_GET['acao'] == 'listar') { ?>                                
                  <table border="0" cellpadding="0" cellspacing="0">
                      <thead>
                        <th>Usuário</th>                        
                        <th>E-mail</th>                        
                        <th>Editar</th>
                        <th>Excluir</th>
                      </thead>
                      <tbody>       
                          <?php
                          for($i=0; $i<count($consulta); $i++) {
                          ?>
                            <tr>
                                <td class="listagem" style="text-align: left;"><?php echo $consulta[$i]['Login']; ?>&nbsp;</td>
                                <td class="listagem"><?php echo $consulta[$i]['Email']; ?>&nbsp;</td>
                                <td class="listagem"><a href="permissoes.php?acao=editar&codigo=<? echo $consulta[$i]['ID']; ?>">Editar</a></td>
                                <td class="listagem"><a href="listar_usuarios.php?codigo=<?php echo $consulta[$i]['ID']; ?>&acao=deletar"><span style="color: #CC0000">X</span></a></td>
                            </tr>

                          <?php
                        }
                        ?>                            
                      </tbody>
                  </table>   
                </div> <!-- Separação -->
                <? } elseif ($_GET['acao'] == 'deletar') {
                        // Obtem o Código do Usuário
                        $ID = $_GET['codigo'];
                        
                        // Cria a consulta do Usuário no Banco de Dados
                        $sqlConsultaUsuario = "SELECT * FROM usuarios WHERE ID = $ID";
                        
                        // Efetua a consulta ao BD
                        $ConsultaUsuario = $conexao->Consulta($sqlConsultaUsuario);
                        
                        // Verifica se o Usuário é Administrador
                        if ($ConsultaUsuario[0]['Login'] == 'admin') { ?>
                            <h3 align="center"><span style="color: red;">Erro!!!</span><br>
                            O Usuário escolhido é Administrador<br>
                            Não pode ser Excluído!!</h3>
                            <p align="center"><a href="./listar_usuarios.php?acao=listar"><img src="<? echo $_SESSION['servidor']; ?>/layout/botao_voltar.png"></a></p> <?                            
                        } else {
                            // Confirma se o Usuário será mesmo Ecluído ?>
                            
                            <p align="center">Tem certeza que deseja excluir o usuário <span style="color: blue;"><? echo $ConsultaUsuario[0]['Login']; ?></span> ?</p>
                            <p align="center"><a href="./listar_usuarios.php?acao=confirmdelete&codigo=<? echo $ID; ?>"><img src="<? echo $_SESSION['servidor']; ?>/layout/btnSim.jpg"></a>
                                &nbsp;&nbsp;&nbsp;&nbsp;<a href="./listar_usuarios.php?acao=listar"><img src="<? echo $_SESSION['servidor']; ?>/layout/btnNao.jpg"></a></p>
                            
                            <? 
                        }
                   } elseif ($_GET['acao'] == 'confirmdelete') {
                        // Obtem o Código do Usuário
                        $ID = $_GET['codigo'];
                        
                        // Cria a SQL de Exclusão do Usuário
                        $sqlExcluiUsuario = "DELETE FROM usuarios where ID = $ID";

                        // Efetua a Exclusão do Usuário
                        $ExcluiUsuario = $conexao->onSaveBD($sqlExcluiUsuario);

                        // Verifica se o Usuário foi excluído com sucesso
                        if ($ExcluiUsuario) { ?>
                            <h3 align="center"><span style="color: blue;">Parabens!!!</span><br>
                            Usuário excluído com sucesso!!!</h3>
                            <p align="center"><a href="./listar_usuarios.php?acao=listar"><img src="<? echo $_SESSION['servidor']; ?>/layout/botao_voltar.png"></a></p> <?                            
                        }
            }
?>

            </div>
    </div>
    
    

</body>
</html>
