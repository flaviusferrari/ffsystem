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

if ($_POST['codigo'] == "") {
    $codigo = $_GET['codigo'];
} else {
    $codigo = $_POST['codigo'];
}

// Cria a Consulta ao BD com o Nome
$sql = "SELECT Nome, Login FROM usuarios WHERE ID = {$codigo}";

// faz consulta no banco de dados
$consulta = $conexao->Consulta($sql);
?>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">    
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FFSystem - Painel de Controle</title>
    
    <!-- CSS -->
    <link href="../../css/cssGeral.css" rel="stylesheet" type="text/css" />
    <link href="../../css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
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
                <div class="borda">
                    <div class="titulo2">
                        Controle de Permissões
                    </div>                             
                    
                <!-- Conteúdo --> 
                <?
                /**** Edita as permissões do Usuário ****/
                if ($_GET['acao'] == 'editar') { ?>
                    <p>
                        <label class="txtCampos">Usuário:</label> <span class="TituloRel"><? echo $consulta[0]['Nome']; ?></span>
                        <br>
                        <label class="txtCampos">Login:</label> <span class="TituloRel"><? echo $consulta[0]['Login']; ?></span>
                    </p>

                    <? // Verifica as permissões do usuário
                       $sqlConsultaPermissao = "SELECT * FROM permissao WHERE idUsuario = {$codigo}";

                       $consultaPermissao = $conexao->Consulta($sqlConsultaPermissao);

                       if (!$consultaPermissao) { ?>
                         <form name="formulario" id="formulario" action="permissoes.php" method="post">
                            <div id="cadPF">
                             <fieldset>
                                <legend>Cadastro Pessoa Física</legend>

                                    <table>
                                        <tr>
                                            <td><input type="checkbox" name="cadPFacessa">Acessar</input></td>                                
                                            <td><input type="checkbox" name="cadPFgrava">Gravar</input></td>                                            
                                            <td><input type="checkbox" name="cadPFatualiza">Atualizar</input></td>
                                            <td><input type="checkbox" name="cadPFexclui">Excluir</input></td>
                                        </tr>                             
                                    </table> 
                            </fieldset>                    
                            </div>
                             <br>
                             <!-- Permissões Cadastro PJ -->
                             <div id="cadPJ">
                             <fieldset>
                                 <legend><span class="TituloRel">Cadastro Pessoa Jurídica</span></legend>

                                    <table>
                                        <tr>
                                            <td><input type="checkbox" name="cadPJacessa">Acessar</input></td>                                
                                            <td><input type="checkbox" name="cadPJgrava">Gravar</input></td>                                            
                                            <td><input type="checkbox" name="cadPJatualiza">Atualizar</input></td>
                                            <td><input type="checkbox" name="cadPJexclui">Excluir</input></td>
                                        </tr>                             
                                    </table> 

                            </fieldset>                    
                            </div>
                            <p align="center">
                                <input type="hidden" name="codigo" value="<? echo $codigo; ?>">
                                <input type="button" name="acao" onclick="doEnviar('gravar')" value="Salvar Permissões">
                            </p>
                        </form> <?                      
                       } else {
                          /**** Acessa as permissões do Usuário já cadastradas ****/
                            $permissaoPF = explode('-', $consultaPermissao[0]['cadPF']);
                            $permissaoPJ = explode('-', $consultaPermissao[0]['cadPJ']);
                           
                           ?>
                         <form name="formulario" id="formulario" action="permissoes.php" method="post">
                            <div id="cadPF">
                             <fieldset>
                                 <legend><span class="TituloRel">Cadastro Pessoa Física</span></legend>

                                    <table>
                                        <tr>
                                            <td><input type="checkbox" name="cadPFacessa" <? if ($permissaoPF[0] == '1') echo 'checked'; ?>><span class="Titulo font14">Acessar</span></input></td>                                
                                            <td><input type="checkbox" name="cadPFgrava" <? if ($permissaoPF[1] == '1') echo 'checked'; ?>><span class="Titulo font14">Gravar</input></span></td>                                            
                                            <td><input type="checkbox" name="cadPFatualiza" <? if ($permissaoPF[2] == '1') echo 'checked'; ?>><span class="Titulo font14">Atualizar</input></span></td>
                                            <td><input type="checkbox" name="cadPFexclui" <? if ($permissaoPF[3] == '1') echo 'checked'; ?>><span class="Titulo font14">Excluir</input></span></td>
                                        </tr>                             
                                    </table> 
                            </fieldset>                    
                            </div>
                            <br>
                            <!-- Cadastro PJ -->
                            <div id="cadPJ">
                             <fieldset>
                                 <legend><span class="TituloRel">Cadastro Pessoa Jurídica</span></legend>
                                    <table>
                                        <tr>
                                            <td><input type="checkbox" name="cadPJacessa" <? if ($permissaoPJ[0] == '1') echo 'checked'; ?>><span class="Titulo font14">Acessar</span></input></td>                                
                                            <td><input type="checkbox" name="cadPJgrava" <? if ($permissaoPJ[1] == '1') echo 'checked'; ?>><span class="Titulo font14">Gravar</input></span></td>                                            
                                            <td><input type="checkbox" name="cadPJatualiza" <? if ($permissaoPJ[2] == '1') echo 'checked'; ?>><span class="Titulo font14">Atualizar</input></span></td>
                                            <td><input type="checkbox" name="cadPJexclui" <? if ($permissaoPJ[3] == '1') echo 'checked'; ?>><span class="Titulo font14">Excluir</input></span></td>
                                        </tr>                             
                                    </table> 
                            </fieldset>                    
                            </div>
                            <p align="center">
                                <input type="hidden" name="codigo" value="<? echo $codigo; ?>">                                
                                <input type="button" name="acao" onclick="doEnviar('atualizar')" value="Atualizar Permissões">
                            </p>
                               
                        </form> <?                 
                       } 
                } elseif ($_GET['acao'] == 'gravar') {                                        
                    // Recebendo os dados a serem gravados
                    
                    /** Cadastro PF  ****/
                    /*** ACESSAR  ***/
                    if ($_POST['cadPFacessa'] == 'on') {
                        $cadPFacessa = 1;
                    } else {
                        $cadPFacessa = 0;
                    }
                    /**** GRAVAR  ****/
                    if ($_POST['cadPFgrava'] == 'on') {
                        $cadPFgrava = 1;
                    } else {
                        $cadPFgrava = 0;
                    }
                    /**** ATUALIZAR ****/
                    if ($_POST['cadPFatualiza'] == 'on') {
                        $cadPFatualiza = 1;
                    } else {
                        $cadPFatualiza = 0;
                    }
                    /**** EXCLUIR ****/
                    if ($_POST['cadPFexclui'] == 'on') {
                        $cadPFexclui = 1;
                    } else {
                        $cadPFexclui = 0;
                    }
                    
                    $permitePF = $cadPFacessa . '-' . $cadPFgrava . '-' . $cadPFatualiza . '-' . $cadPFexclui;
                    
                    /** Cadastro PJ  ****/
                    /*** ACESSAR  ***/
                    if ($_POST['cadPJacessa'] == 'on') {
                        $cadPJacessa = 1;
                    } else {
                        $cadPJacessa = 0;
                    }
                    /**** GRAVAR  ****/
                    if ($_POST['cadPJgrava'] == 'on') {
                        $cadPJgrava = 1;
                    } else {
                        $cadPJgrava = 0;
                    }
                    /**** ATUALIZAR ****/
                    if ($_POST['cadPJatualiza'] == 'on') {
                        $cadPJatualiza = 1;
                    } else {
                        $cadPJatualiza = 0;
                    }
                    /**** EXCLUIR ****/
                    if ($_POST['cadPJexclui'] == 'on') {
                        $cadPJexclui = 1;
                    } else {
                        $cadPJexclui = 0;
                    }
                    
                    $permitePJ = $cadPJacessa . '-' . $cadPJgrava . '-' . $cadPJatualiza . '-' . $cadPJexclui;
                    
                    // Cria a SQL para gravar os dados
                    $sqlPermissao = "INSERT INTO permissao (idUsuario, cadPF, cadPJ) VALUES ('{$codigo}','{$permitePF}', '{$permitePJ}')";
                    
                    // Efetua a gravação no Banco de Dados
                    $gravaPermissao = $conexao->onSaveBD($sqlPermissao);
                    
                    // Verifica se as permissões foram salvas
                    if ($gravaPermissao)
                    {
                        // Mensagem de aviso ?>		         
                        <p>Parabêns!!!<br>
                        Permissões gravadas com sucesso!!!</p>
                        <p><a href="<? echo $_SESSION['servidor']; ?>/cpanel/Admin/permissoes.php?acao=editar&codigo=<? echo $codigo; ?>"><img src="<? echo $_SESSION['servidor']; ?>/layout/botao_voltar.png"></a></p> <?
                    }
                    
                } elseif ($_GET['acao'] == 'atualizar'){
                    // Recebendo os dados a serem gravados
                    
                    /** Cadastro PF  ****/
                    /*** ACESSAR  ***/
                    if ($_POST['cadPFacessa'] == 'on') {
                        $cadPFacessa = 1;
                    } else {
                        $cadPFacessa = 0;
                    }
                    /**** GRAVAR  ****/
                    if ($_POST['cadPFgrava'] == 'on') {
                        $cadPFgrava = 1;
                    } else {
                        $cadPFgrava = 0;
                    }
                    /**** ATUALIZAR ****/
                    if ($_POST['cadPFatualiza'] == 'on') {
                        $cadPFatualiza = 1;
                    } else {
                        $cadPFatualiza = 0;
                    }
                    /**** EXCLUIR ****/
                    if ($_POST['cadPFexclui'] == 'on') {
                        $cadPFexclui = 1;
                    } else {
                        $cadPFexclui = 0;
                    }
                    
                    $permitePF = $cadPFacessa . '-' . $cadPFgrava . '-' . $cadPFatualiza . '-' . $cadPFexclui;
                    
                    /** Cadastro PJ  ****/
                    /*** ACESSAR  ***/
                    if ($_POST['cadPJacessa'] == 'on') {
                        $cadPJacessa = 1;
                    } else {
                        $cadPJacessa = 0;
                    }
                    /**** GRAVAR  ****/
                    if ($_POST['cadPJgrava'] == 'on') {
                        $cadPJgrava = 1;
                    } else {
                        $cadPJgrava = 0;
                    }
                    /**** ATUALIZAR ****/
                    if ($_POST['cadPJatualiza'] == 'on') {
                        $cadPJatualiza = 1;
                    } else {
                        $cadPJatualiza = 0;
                    }
                    /**** EXCLUIR ****/
                    if ($_POST['cadPJexclui'] == 'on') {
                        $cadPJexclui = 1;
                    } else {
                        $cadPJexclui = 0;
                    }
                    
                    $permitePJ = $cadPJacessa . '-' . $cadPJgrava . '-' . $cadPJatualiza . '-' . $cadPJexclui;
                    
                    // Cria a SQL para gravar os dados
                    $sqlAtualizaPermissao = "UPDATE permissao SET cadPF = '{$permitePF}', cadPJ = '{$permitePJ}' WHERE idUsuario = '{$codigo}'";
                    
                    // Efetua a gravação no Banco de Dados
                    $gravaPermissao = $conexao->onSaveBD($sqlAtualizaPermissao);
                    
                    // Verifica se as permissões foram salvas
                    if ($gravaPermissao)
                    {
                        // Mensagem de aviso ?>		         
                        <p>Parabêns!!!<br>
                        Permissões atualizadas com sucesso!!!</p>
                        <p><a href="<? echo $_SESSION['servidor']; ?>/cpanel/Admin/permissoes.php?acao=editar&codigo=<? echo $codigo; ?>"><img src="<? echo $_SESSION['servidor']; ?>/layout/botao_voltar.png"></a></p> <?
                    }
                } ?>
                 
        </div>
    </body>
</html>
