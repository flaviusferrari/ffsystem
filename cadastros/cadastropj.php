<?php
// Verifica se a Sessão foi Iniciada
include_once ("../seguranca.php");

// Classe Conexão
include "../bd/conexao.class.php";		
$conexao = new Conexao;

/*
 *  CLASSE MENSAGEM
 */
include_once '../classes/mensagens.class.php';
$mensagem = new mensagens();

// Consulta o Banco de Dados para as permissões
$sql = "SELECT cadPJ FROM permissao WHERE idUsuario = '{$_COOKIE['idUsuario']}'";

// faz consulta no banco de dados
$consultaPermissao = $conexao->Consulta($sql);

// Separa as permissões
$permissaoPJ = explode('-', $consultaPermissao[0]['cadPJ']);
?>
<!-- INÍCIO DA PÁGINA WEB  -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <!-- Insere o título -->
        <title>FFSystem - Sistema de Gestão de Empresas</title>

        <!-- Importa do arquivo JavaScript -->
         <script type="text/javascript"  SRC="../scripts/formulario.js"></script>
         <script type="text/javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/jquery.js"></script>
         <script type="text/javascript" src="../scripts/jquery-ui.js"></script>
         <script type="text/javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/maskedinput.js"></script>
         <script type="text/javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/Cadastropj.js"></script>
         <script type="text/javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/jqGeral.js"></script>
         <script type="text/javascript" src="../scripts/jquery.superbox-min.js"></script>
       
        <!-- Bloco da CSS -->
        <style type="text/css">               
        .contato {
            max-height:270px;
            min-height:200px; 
            max-width:480px; 
            min-width:480px;
        }                        
        </style>

        <!-- Inclui os scripts CSS -->
        <link href="<? echo $_SESSION['servidor']; ?>/css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
        <link href="<? echo $_SESSION['servidor']; ?>/css/cssGeral.css" rel="stylesheet" type="text/css" />            
        <link href="<? echo $_SESSION['servidor']; ?>/css/cssFormGeral.css" rel="stylesheet" type="text/css" />
        <link type="text/css" href="../layout/CSS/smoothness/jquery-ui-1.10.3.custom.css" rel="Stylesheet" />
        <link href="./css/cadastroPj.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="../scripts/jquery.superbox.css" type="text/css" media="all" />
    </head>	
<body>
    <div id="tudo">
        <!-- CABEÇÁLHO DO SISTEMA -->
        <? include ('../includes/cabecalho.php'); ?>
        
        <!-- Menu do Sistema -->
	<? include ("../includes/menu.inc.php"); ?>

	<!-- CONTEÚDO DO SISTEMA -->
        <div id="conteudo"> <?
            if ($permissaoPJ[0] == '0') {
                $mess = 'Você não tem permissão para acessar este Módulo!';
                $mensagem->erro($mess, $_SESSION['servidor']);
            } else { 
                // Verifica se a página está transmitindo alguma informação GET
                if (!$_GET or $_GET["acao"] == "" or $_GET["acao"] == "exibedados") { ?>
                    <!-- BARRA DE TÍTULO -->
                    <div id="barraTitulo">
                        <span class="legenda">Cadastro Pessoa Jurídica</span>
                    </div> 
                
                    <!-- Menu de Botões -->
                    <? include ('../includes/botoes.php'); ?>
                    
                    <!-- Conteúdo após os botões -->
                    <div id="formPF"> <?
                         // Seleciona os dados do Cadastro
                        if ($_GET['acao'] == 'exibedados') {                                
                            if (!$_POST['id']) {
                                $idCliente = $_GET['idCliente'];
                            } else {
                                $idCliente = $_POST['id'];
                            }                                

                            // Cria a Consulta da base inteira
                            $sql = "SELECT * FROM clientes, clientespj WHERE clientes.id_cliente = {$idCliente} AND clientespj.idClientes = clientes.id_cliente";

                            // Executa a consulta criada
                            $LocalizaCliente = $conexao->Consulta($sql); 

                            $id       = $LocalizaCliente[0]['id_cliente'];
                            $rsocial  = utf8_encode($LocalizaCliente[0]['nome']);
                            $cnpj     = $LocalizaCliente[0]['cnpj'];
                            $insest   = $LocalizaCliente[0]['ins_est'];
                            $insmun   = $LocalizaCliente[0]['ins_mun'];
                            $endereco = utf8_encode($LocalizaCliente[0]['endereco']);
                            $numero   = $LocalizaCliente[0]['numero'];
                            $complemento    = $LocalizaCliente[0]['complemento'];
                            $bairro   = utf8_encode($LocalizaCliente[0]['bairro']);
                            $cidade   = utf8_encode($LocalizaCliente[0]['cidade']);
                            $uf       = $LocalizaCliente[0]['uf'];
                            $cep      = $LocalizaCliente[0]['cep'];
                            $tel1     = $LocalizaCliente[0]['telefone1'];
                            $tel2     = $LocalizaCliente[0]['telefone2'];
                            $fax      = $LocalizaCliente[0]['celular'];
                            $tipo     = "PJ";
                            $comentario  = utf8_encode($LocalizaCliente[0]['obs']);                            
                        } ?>
                        <!-- Formulário de Cadastro PJ -->
                       <div id="Form">
                            <form  name="formulario" id="formulario" method="post" action="cadastropj.php">
                                <!-- Razão Social -->
                                <span class="tableBlock">
                                    <span class="TituloRel">Razão Social:</span>
                                    <br>
                                    <input name="rsocial" type="text" id="nome" maxlength="100" style="width: 440px;" value="<? echo $rsocial; ?>">
                                    <input type=hidden name="id" id="idCliente" value="<? echo $id; ?>">
                                </span>
                                <!-- Endereço, Número e Complemento -->
                                <span class="tableBlock">			
                                    <span class="tableCell">
                                        <span class="TituloRel">Endereço:</span>
                                        <br>
                                        <input name="endereco" type="text" style="width: 300px;" value="<? echo $endereco; ?>">
                                    </span>                               
                                    <span class="tableCell">
                                        <span class="TituloRel">Número:</span>
                                        <br>
                                        <input name="numero" type="text" style="width: 60px;" value="<? echo $numero; ?>">
                                    </span>
                                    <span class="tableCell">
                                        <span class="TituloRel">Complemento:</span>
                                        <br>
                                        <input name="complemento" type="text" style="width: 80px;" value="<? echo $complemento; ?>">
                                    </span>                                
                                </span>	
                                <!-- Bairro, Cidade, Estado e Cep -->
                                <span class="tableBlock">			
                                    <span class="tableCell">
                                        <span class="TituloRel">Bairro:</span>
                                        <br>
                                        <input name="bairro" type="text" style="width: 160px;" value="<? echo $bairro; ?>">
                                    </span>                               
                                    <span class="tableCell">
                                        <span class="TituloRel">Cidade:</span>
                                        <br>
                                        <input name="cidade" type="text" style="width: 160px;" value="<? echo $cidade; ?>">
                                    </span>
                                    <span class="tableCell">
                                        <span class="TituloRel">UF:</span>
                                        <br>
                                        <select name="uf"> <?php
                                            $ufList = array('AC','AL','AM','AP','BA','CE','DF','ES','GO','MA','MG','MS','MT','PA','PB','PE','PI','PR','RJ','RN','RO','RR','RS','SC','SE','SP','TO');

                                           // Mosta o Resultado
                                            $i = 0;
                                            while( $i < count($ufList)){                                          
                                                $n = $i + 1;
                                                  if($ufList[$i] == $uf)
                                                  { ?>
                                                     <option value="<? echo $ufList[$i]; ?>" selected><? echo $ufList[$i]; ?></option> <? echo "\n";
                                                  } else { ?>
                                                     <option value="<? echo $ufList[$i]; ?>"><? echo $ufList[$i]; ?></option> <? echo "\n";
                                                  }							   
                                              $i++;                                           
                                            } ?>
                                        </select>
                                    </span>      
                                    <span class="tableCell">
                                        <span class="TituloRel">Cep:</span>
                                        <br>
                                        <input id="cep" name="cep" type="text" style="width: 72px;" value="<? echo $cep; ?>">
                                    </span>
                                </span>	
                                <!-- CNPJ, Inscrição Estadual e Inscrição Municipal -->
                                <span class="tableBlock">			
                                    <span class="tableCell">
                                        <span class="TituloRel">CNPJ:</span>
                                        <br>
                                        <input id="cnpj" name="cnpj" type="text" style="width: 155px;" value="<? echo $cnpj; ?>">
                                    </span>                               
                                    <span class="tableCell">
                                        <span class="TituloRel">Insc. Estadual:</span>
                                        <br>
                                        <input name="insest" type="text" style="width: 145px;" value="<? echo $insest; ?>">
                                    </span>
                                    <span class="tableCell">
                                        <span class="TituloRel">Insc. Municipal:</span>
                                        <br>
                                        <input name="insmun" type="text" style="width: 140px;" value="<? echo $insmun; ?>">
                                    </span>
                                </span>
                                <!-- Telefones e Fax -->
                                <span class="tableBlock">			
                                    <span class="tableCell">
                                        <span class="TituloRel">Telefone 1:</span>
                                        <br>
                                        <input id="telefone1" name="tel1" type="text" maxlength="13" style="width: 145px;" value="<? echo $tel1; ?>">
                                    </span>                               
                                    <span class="tableCell">
                                        <span class="TituloRel">Telefone 2:</span>
                                        <br>
                                        <input id="telefone2" name="tel2" type="text"  maxlength="13" style="width: 150px;" value="<? echo $tel2; ?>">
                                    </span>
                                    <span class="tableCell">
                                        <span class="TituloRel">Fax:</span>
                                        <br>
                                        <input id="fax" name="fax" type="text" maxlength="13" style="width: 145px;" value="<? echo $fax; ?>">
                                    </span>
                                </span>
                                <? // Verifica se está exibindo os dados do cliente e exibe os contatos
                                if ($_GET['acao'] == "exibedados")
                                { 
                                    // Cria a Consulta da base inteira
                                    $sql = "SELECT * FROM contatos WHERE contatos.idCliente = '{$id}' ORDER BY contato";

                                    // Executa a consulta criada
                                    $LocalizaContato = $conexao->Consulta($sql); ?>
                                    <!-- Contatos -->                                    
                                    Contatos:
                                    <table style="border-collapse: collapse; width: 100%;" class="bordasimples">
                                        <tr>
                                            <td bgcolor="#B0C4DE" align="center"></td>
                                            <td bgcolor="#B0C4DE" align="center"> Contato </td>
                                            <td bgcolor="#B0C4DE" align="center"> Setor </td>
                                            <td bgcolor="#B0C4DE" align="center"> E-mail </td>
                                        </tr>
                                    <? // Exibe os dados da consulta
                                         if ($LocalizaContato > 0)
                                         {
                                            // Exibindo os dados do Contato			 
                                            for($i=0; $i<=count($LocalizaContato); $i++)
                                            { ?>
                                        <tr>
                                            <td><input type="radio" name="selcontato" value="<? echo $LocalizaContato[$i]['IdContato']; ?>" <? if ($i == 0) { echo 'checked'; } ?>></td>
                                            <td><? echo utf8_encode($LocalizaContato[$i]['contato']); ?></td>
                                            <td><? echo utf8_encode($LocalizaContato[$i]['setor']); ?></td>
                                            <td ><? echo utf8_encode($LocalizaContato[$i]['email']); ?></td>
                                        </tr>
                                    <?      }
                                         } ?>
                                    </table>
                                   <!-- BOTÕES DO CONTATOS --> 
                                    <button type="button" name="modal" value="#dialog">Edita Contato</button>
                                    <button type="button" name="modal2" value="#dialog2">Novo Contato</button>

                                       <?
                                } ?>
                                <!-- Observações -->
                                <span class="tableBlock">
                                    <span class="TituloRel">Observações:</span>
                                    <br>
                                    <textarea class="msnBox" name="comentario" rows="5" style="width: 440px"><? echo $comentario; ?></textarea>
                                </span>                            
                            </form>	
                       </div>                        
                    </div> <!-- Fim Div FormPF --> <?php
            } elseif ($_GET["acao"] == "Salvar") {
                  // Verifica a permissão do Usuário 
                  if ($permissaoPJ[1] == '0') {
                      $mess = 'Você não tem permissão para acessar esta Função!';
                      $mensagem->erro($mess, $_SESSION['servidor']);
                  } else {
                    /*****************************************
                            Grava os dados do cliente
                    *******************************************/

                    // Obtem os dados do fomulário
                    $form['nome']     = utf8_decode($_POST["rsocial"]);
                    $form['cnpj']     = $_POST["cnpj"];
                    $form['insest']   = $_POST["insest"];
                    $form['insmun']   = $_POST["insmun"];
                    $form['endereco'] = utf8_decode($_POST["endereco"]);
                    $form['numero']   = $_POST["numero"];
                    $form['compl']    = $_POST["complemento"];
                    $form['bairro']   = utf8_decode($_POST["bairro"]);
                    $form['cidade']   = utf8_decode($_POST["cidade"]);
                    $form['uf']       = $_POST["uf"];
                    $form['cep']      = $_POST["cep"];
                    $form['tel1']     = $_POST["tel1"];
                    $form['tel2']     = $_POST["tel2"];
                    $form['fax']      = $_POST["fax"];
                    $form['tipo']     = "PJ";
                    $text             = utf8_decode($_POST["comentario"]);

                    // Cria a SQL para a inserção dos dados no BD
                    $sql = "INSERT INTO clientes (nome, endereco, numero, complemento, bairro, cidade," .
                                "                      cep, telefone1, telefone2, celular, uf, obs, tipo, idEmpresa)" .
                                "  VALUES ('{$form['nome']}'   , '{$form['endereco']}' ," .
                                "          '{$form['numero']}' , '{$form['compl']}'    ," .
                                "          '{$form['bairro']}' , '{$form['cidade']}'   ," .
                                "          '{$form['cep']}'    , '{$form['tel1']}'     ," .
                                "          '{$form['tel2']}'   ,'{$form['fax']}'       ," .
                                "          '{$form['uf']}' , '$text'                   ," .
                                "          '{$form['tipo']}', '{$_COOKIE['idEmpresa']}') ";

                    // Cria a Consulta do CPF
                    $sqlConsulta = "SELECT idPJ FROM clientes, clientespj WHERE clientespj.cnpj='{$form['cnpj']}' AND clientes.nome='{$form['nome']}' AND clientes.endereco = '{$form['endereco']}' AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}'";

                    // Consulta o Cliente para ver se o mesmo já existe
                    $ConsultaCliente = $conexao->ConsultaDado($sqlConsulta);

                    // Verifica se os dados Existem
                    if ($ConsultaCliente > 0)
                    {
                       // Mensagem de aviso ?>
                        <p>Cliente já está cadastrado!!!</p> <?

                    }else{
                        $GravaCliente = $conexao->onSaveBD($sql);

                        // Verifica se o cliente foi salvo
                        if ($GravaCliente)
                        {
                            // Consulta o ID do Cliente gravado
                            $ConsultaIdCliente = "SELECT id_cliente FROM clientes WHERE nome='{$form['nome']}' AND endereco='{$form['endereco']}' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";

                            // Busca o Id do cliente Gravado
                            $ConsultaCliente = $conexao->BuscaDados($ConsultaIdCliente);

                            $sql2 = "INSERT INTO clientespj (idClientes, cnpj, ins_est, ins_mun)   " .
                                "  VALUES ('{$ConsultaCliente['id_cliente']}'  , '{$form['cnpj']}', '{$form['insest']}', '{$form['insmun']}')";

                            // Grava os dados de CNPJ e Inscrições Estadua e Municipal do Cliente
                            $GravaCliente2 = $conexao->onSaveBD($sql2);			

                            if ($GravaCliente2)
                            {
                                // Mensagem de aviso		         
                               $mess = 'Cliente <span style="color: blue;">'. $form['nome'] . '</span> cadastrado com sucesso!!!';
                               $mensagem->acerto($mess, $_SESSION['servidor']); 

                               // Verifica a numeração do Cliente
                               $sqlConsultaCliente = "SELECT id_cliente FROM clientes WHERE idEmpresa = '{$_COOKIE['idEmpresa']}' ORDER BY id_cliente DESC LIMIT 1";

                               // Executa a consulta criada
                               $LocalizaUltimoCliente = $conexao->Consulta($sqlConsultaCliente);

                               ?>
                               <p align="center"><a href="./cadastropj.php?acao=exibedados&idCliente=<? echo utf8_encode($LocalizaUltimoCliente[0]['id_cliente']); ?>">
                                   <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                               </p> <?
                            }
                         } // Fecha: Verifica se o cliente foi salvo
                    } // Fecha: Verifica se os dados existem
                  }
            } elseif ($_GET["acao"] == "atualizar") {   
              if ($permissaoPJ[2] == '0') {
                  $mess = 'Você não tem permissão para modificar os clientes!!!';
                  $mensagem->erro($mess, $_SESSION['servidor']);
              } else {
                /******************************************
                        Atualiza os dados do Cadastro PJ
                ******************************************/	   

                // Obtem os dados do fomulário
                $form['codigo']   = $_POST['id'];
                $form['nome']     = utf8_decode($_POST["rsocial"]);
                $form['cnpj']     = $_POST["cnpj"];
                $form['insest']   = $_POST["insest"];
                $form['insmun']   = $_POST["insmun"];
                $form['endereco'] = utf8_decode($_POST["endereco"]);
                $form['numero']   = $_POST["numero"];
                $form['compl']    = $_POST["complemento"];
                $form['bairro']   = utf8_decode($_POST["bairro"]);
                $form['cidade']   = utf8_decode($_POST["cidade"]);
                $form['uf']       = $_POST["uf"];
                $form['cep']      = $_POST["cep"];
                $form['tel1']     = $_POST["tel1"];
                $form['tel2']     = $_POST["tel2"];
                $form['fax']      = $_POST["fax"];
                $form['tipo']     = "PJ";
                $text             = utf8_decode($_POST["comentario"]);

                // SQL responsável por atualizar os dados do Cliente
                $sql = "UPDATE clientes, clientespj SET clientes.nome        =  '{$form['nome']}',     " .
                        "                               clientespj.cnpj      =  '{$form['cnpj']}',     " .
                        "                               clientespj.ins_est   =  '{$form['insest']}',   " .
                        "                               clientespj.ins_mun   = '{$form['insmun']}',    " .
                        "                               clientes.endereco    =  '{$form['endereco']}', " .
                        "                               clientes.numero      =  '{$form['numero']}',   " .
                        "                               clientes.complemento =  '{$form['compl']}',    " .
                        "                               clientes.bairro      =  '{$form['bairro']}',   " .
                        "                               clientes.cidade      =  '{$form['cidade']}',   " .
                        "                               clientes.uf          =  '{$form['uf']}',       " .
                        "                               clientes.cep         =  '{$form['cep']}',      " .
                        "                               clientes.telefone1   =  '{$form['tel1']}',     " .
                        "                               clientes.telefone2   =  '{$form['tel2']}',     " .
                        "                               clientes.celular     =  '{$form['fax']}',      " .
                        "                               clientes.obs         =  '{$text}'              " .
                        "                WHERE clientes.id_cliente='{$form['codigo']}' AND clientespj.idClientes ='{$form['codigo']}' ";

                 $AtualizaCliente = $conexao->onSaveBD($sql);

                 // Verifica se o cliente foi atualizado
                 if ($AtualizaCliente)
                 {
                   // Mensagem de aviso 
                   $mess = 'Cliente <span style="color: blue;">'.utf8_encode($form['nome']).'</span> atualizado com sucesso!!!';
                   $mensagem->acerto($mess, $_SESSION['servidor']); 
                   ?>
                   <p align="center">
                       <a href="./cadastropj.php?acao=exibedados&idCliente=<? echo $form['codigo']; ?>"><img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                   </p> <?
                 }
              } // Finaliza Verificação da Permissão
            } elseif ($_GET["acao"] == "Localizar") {   
                /*****************************************
                         Localiza os dados da Empresa
                *****************************************/
                // Obtem os dados a serem pesquizados
                if (!$_POST["rsocial"]) {
                    $nome = $_GET["nome"];
                } else {
                    $nome = $_POST["rsocial"];
                }

                $limite = 5; // limite de registros por pagina
                $pag = 0; // valor padrao se nao for enviado nenhum valor via metodo GET
                $pag_atual = $_GET["pag_atual"]; // recebe o valor enviado pelo metodo GET		

                /* Verifica qual a página atual 
                   Caso não haja, a página atual será 0 */
                if (!$pag_atual) {	
                        $pag_atual = $pag;
                } else {
                        $pag_atual = $pag_atual;
                }				

                // Obtem os dados a serem pesquizados
                $rsocial = $_POST["rsocial"];
                $cnpj = $_POST["cnpj"];

                 // Consulta da quantidade de Registros encontrados
                $sql1 = "SELECT * FROM clientes WHERE clientes.nome like'%{$nome}%' AND clientes.tipo = 'PJ' AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}'";

                // Verifica qual o campo que está preenchido para efetuar a consulta
                 if ($cnpj != '')
                 {
                    // Cria a Consulta do Cnpj
                    $sql = "SELECT * FROM clientes, clientespj WHERE clientespj.cnpj like'{$cnpj}%' AND clientespj.idClientes = clientes.id_cliente AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}' order by cnpj LIMIT $pag_atual, $limite";
                 }
                 elseif ($nome != '')
                 {
                    // Cria a Consulta do Nome
                    $sql = "SELECT * FROM clientes, clientespj WHERE clientes.nome like'%{$rsocial}%' AND clientespj.idClientes = clientes.id_cliente AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}' order by nome LIMIT $pag_atual, $limite";
                 }
                 else
                 {
                    // Cria a Consulta da base inteira
                    $sql = "SELECT * FROM clientes, clientespj WHERE clientespj.idClientes = clientes.id_cliente AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}' ORDER BY nome LIMIT $pag_atual, $limite";
                 }

                 // Executa a consulta criada
                 $LocalizaCliente = $conexao->Consulta($sql);
                 $resultado2 = $conexao->ConsultaDado($sql1);
                 
                 // Verifica se a consulta retornou algum dado
                 if($resultado2)
                 { ?>                
                    <!-- BARRA DE TÍTULO -->
                    <div id="barraTitulo">
                        <span class="legenda">Cadastro Pessoa Jurídica</span>
                    </div> 
                    <div id="FormPF"> <?

                    /* Total de resultados da pesquisa */
                    echo "Foram encontrados $resultado2 resultados<br />";

                    // inicio paginação
                    $ultima = intval($resultado2-$limite); // define o valor da ultima pagina
                    $anterior = $pag_atual-$limite; // define o valor da pagina anterior a atual

                    if ($anterior < 0) { // se anterior for menor que 0, ele exibe apenas os nomes sem link
                    echo '<label class="noLInk">Primeira</label> - <label class="noLink">Anterior</label> - ';
                    } else { // senao ele exibe os links
                    echo '<a class="link" href=./cadastropj.php?acao=Localizar&pag_atual=0&nome='.$nome.'>Primeira</a> - ';
                    echo '<a class="link" href=./cadastropj.php?acao=Localizar&pag_atual='.$anterior.'&nome='.$nome.'>Anterior</a> - ';
                    }

                    $proxima = intval($pag_atual+$limite); // define o valor da proxima pagina
                    if ($proxima > $resultado2) { // não deixa o link passar do total de registros
                    echo '<label class="noLink">Proxima</label> - <label class="noLink">Ultima</label>';
                    } else {
                    echo ' <a class="link" href=./cadastropj.php?acao=Localizar&pag_atual='.$proxima.'&nome='.$nome.'>Proxima</a> - ';
                    echo ' <a class="link" href=./cadastropj.php?acao=Localizar&pag_atual='.$ultima.'&nome='.$nome.'>Ultima</a>';
                    } ?>
                    <!-- Exibe a tabela com os dados do cliente -->
                    <? // Exibe os dados da consulta
                     if ($LocalizaCliente > 0)
                     {
                        // Exibindo os dados do Cliente			 
                        for($i=0; $i<count($LocalizaCliente); $i++)
                        { ?>
                             <table class="listacliente">
                                <tr>
                                    <td><? echo utf8_encode($LocalizaCliente[$i]['nome']); ?></td>
                                     <td rowspan="2" align="right">
                                         <a href="./cadastropj.php?acao=exibedados&idCliente=<? echo $LocalizaCliente[$i]['id_cliente']; ?>">
                                             <img src="<? echo $_SESSION['servidor']; ?>/layout/btn_visualizar.png">
                                         </a>
                                     </td>                                    
                                </tr>
                                <tr>
                                    <td><? echo utf8_encode ($LocalizaCliente[$i]['endereco']); ?>, <? echo $LocalizaCliente[$i]['numero']; ?> - <? echo $LocalizaCliente[$i]['complemento']; ?></td>                                   
                                </tr>                                            
                            </table><?
                        }
                     } ?>
                     </div> <?php
                 } else { 
                    // Mensagem de aviso		         
                   $mess = 'Nenhum Cliente encontrado!';
                   $mensagem->acerto($mess, $_SESSION['servidor']); 

                   ?>
                   <p align="center"><a href="./cadastropj.php">
                       <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                   </p> <?php                     
                 }                    
                
            } elseif ($_GET["acao"] == "excluir") {
              if ($permissaoPJ[3] == '0') {
                $mess = 'Você não tem permissão para <span style="color: red;">excluir</span> clientes!!!';
                $mensagem->erro($mess, $_SESSION['servidor']);
                ?> 
               <p align="center">
                   <a href="./cadastropj.php?acao=exibedados&idCliente=<? echo $_GET['id']; ?>"><img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
               </p> <?
              } else { 
                /*******************************************************
                 *	Exclui o cliente selecionado
                 *******************************************************/
                // Obtem os dados necessários a exclusão
                $codigo   = $_GET["id"];
                $rsocial  = $_GET["rsocial"];

                // Cria a exclusão do cliente
                $sql1 = "DELETE FROM clientes WHERE " .
                  " id_cliente = '{$codigo}' ";

                $ExcluiCliente = $conexao->onSaveBD($sql1);

                // Verifica se a sql1 foi executada com sucesso
                if ($ExcluiCliente)
                {
                   // Cria a exclusão do cliente na tabela Clientes_pj
                   $sql2 = "DELETE FROM clientespj WHERE " .
                               "idClientes = '{$codigo}' ";

                   // Exclui os dados do cliente na tabela Clientes_pf
                   $ExcluiCliente2 = $conexao->onSaveBD($sql2);

                   if ($ExcluiCliente2)
                   {
                       // Exclui os contatos atrelados ao cliente
                       $sqlExcluiContatos = "DELETE FROM contatos WHERE IdCliente = '{$codigo}'";
                       $excluiContatos = $conexao->onSaveBD($sqlExcluiContatos);
                       
                       // Mensagem de aviso		         
                       $mess = 'Cliente <span style="color: red;">excluído</span> com sucesso!!!';
                       $mensagem->acerto($mess, $_SESSION['servidor']); 

                       ?>
                       <p align="center"><a href="./cadastropj.php?acao=">
                           <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                       </p> <?
                   }
                // Finaliza If ($ExcluiCliente)		   
                }                            
              } // Finaliza verificação da permissão
            }
        } 
    ?>      	
    

        </div> <!-- Final Div Conteúdo -->
        <!-- Rodapé do Sistema -->
	<? include ('../includes/rodape.php'); ?>
    </div> <!- Final Div Tudo -->
    
    <!--
        DIVs RESPONSÁVEIS PELO CONTATO
    -->
    <div id="boxes">
        <!-- #personalize sua janela modal aqui -->
        <div id="dialog" class="window">
            <!-- Botão para fechar a janela tem class="close" -->
            <a href="#" class="close">X</a>
            <b>Edita Contato</b> 
            <hr>
            <div id="cadastro">
                <span class="tableBlock">			
                    <span class="tableCell">
                        <span class="TituloRel">Nome do Contato:</span>
                        <br>
                        <input name="contato" id="cttContato" type="text" style="width: 358px;">
                        <input name="idContato" id="cttIdContato" type="hidden">
                    </span>
                </span>
                <span class="tableBlock">			
                    <span class="tableCell">
                        <span class="TituloRel">Setor:</span>
                        <br>
                        <input name="setor" id="cttSetor" type="text" style="width: 120px;">
                    </span>
                    <span class="tableCell">
                        <span class="TituloRel">Telefone:</span>
                        <br>
                        <input id="cttTelefone" name="telcont" type="text" style="width: 120px;">
                    </span>
                    <span class="tableCell">
                        <span class="TituloRel">Ramal:</span>
                        <br>
                        <input name="ramal" id="cttRamal" type="text" style="width: 120px;">
                    </span>
                </span>
                <span class="tableBlock">			
                    <span class="tableCell">
                        <span class="TituloRel">Celular:</span>
                        <br>
                        <input id="cttCelular" name="celular" id="cttCelular" type="text" style="width: 120px;">
                    </span>
                    <span class="tableCell">
                        <span class="TituloRel">E-mail:</span>
                        <br>
                        <input name="mailcont" id="cttMail" type="text" style="width: 240px;">
                    </span>               
                </span>                
                <button type="button" id="btnAtualizaContato">Atualiza Contato</button> 
            </div>
        </div>        
        <!-- NOVO CONTATO -->
        <div id="dialog2" class="window">
            <!-- Botão para fechar a janela tem class="close" -->
            
            <b>Adiciona Novo Contato</b> 
            <a href="#" class="close">X</a>
            <hr>
            <div id="cadastroNovo">
                <span class="tableBlock">			
                    <span class="tableCell">
                        <span class="TituloRel">Nome do Contato:</span>
                        <br>
                        <input name="contato" id="cttContatoNovo" type="text" style="width: 358px;">
                        <input name="idCliente" id="cttIdClienteNovo" type="hidden" value="<? echo $idCliente; ?>">
                    </span>
                </span>
                <span class="tableBlock">			
                    <span class="tableCell">
                        <span class="TituloRel">Setor:</span>
                        <br>
                        <input name="setor" id="cttSetorNovo" type="text" style="width: 120px;">
                    </span>
                    <span class="tableCell">
                        <span class="TituloRel">Telefone:</span>
                        <br>
                        <input id="cttTelefoneNovo" name="telcont" type="text" style="width: 120px;">
                    </span>
                    <span class="tableCell">
                        <span class="TituloRel">Ramal:</span>
                        <br>
                        <input name="ramal" id="cttRamalNovo" type="text" style="width: 120px;">
                    </span>
                </span>
                <span class="tableBlock">			
                    <span class="tableCell">
                        <span class="TituloRel">Celular:</span>
                        <br>
                        <input id="cttCelularNovo" name="celular" type="text" style="width: 120px;">
                    </span>
                    <span class="tableCell">
                        <span class="TituloRel">E-mail:</span>
                        <br>
                        <input name="mailcont" id="cttMailNovo" type="text" style="width: 240px;">
                    </span>               
                </span>                
                <button type="button" id="btnNovoContato">Adiciona</button> 
            </div>
        </div>
        <!-- Não remova o div#mask, pois ele é necessário para preencher toda a janela -->
        <div id="mask"></div>
    </div>
    <div id="dialog-confirm"></div>
</body>
</html>
