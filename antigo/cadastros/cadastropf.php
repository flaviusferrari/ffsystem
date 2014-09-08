<?php 

/*
 * Funçao Autoload
 *   carrega as classes automaticamente, 
 *   conforme elas sao pedidas
 */
function __autoload($classe)
{
    $pastas = array('app.widgets', 'app.ado', 'app.model', 'app.control');
    foreach ($pastas as $pasta)
    {
        if (file_exists("../{$pasta}/{$classe}.class.php"))
        {
            include_once "../{$pasta}/{$classe}.class.php";
        }
    }
}

// Verifica se a Sessão foi Iniciada
include_once "../seguranca.php";

/*
 *  CLASSE CONEXAO
 */
include "../bd/conexao.class.php";
$conexao = new Conexao;

/*
 *  CLASSE MENSAGEM
 */
include_once '../classes/mensagens.class.php';
$mensagem = new mensagens();

// ID da Empresa
//$idEmpresa = $_COOKIE['idEmpresa'];

// Consulta o Banco de Dados para as permissões
$sql = "SELECT cadPF FROM permissao WHERE idUsuario = '{$_COOKIE['idUsuario']}'";

// faz consulta no banco de dados
$consultaPermissao = $conexao->Consulta($sql);

// Separa as permissões
$permissaoPF = explode('-', $consultaPermissao[0]['cadPF']);

/*************************************************
		FUNÇÕES PHP
**************************************************/

function ler_array_arquivo($file_name)
{
	//Abre o arquivo para leitura
	$fd = fopen($file_name, "r"); 

	// responsável pela leitura do arquivo (Arquivo, Tamanho)
	$file_content = fread($fd, 4096); 

	//Fecha o arquivo
	fclose($fd);

	// Utiliza a variavel responsável pela leitura do arquivo
	$array = explode("\n" , $file_content);

	// responssável pelo retorno da variável 
	return $array;
}

?>
<html>
  <head>
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
     <!-- Insere o título -->
    <title>FFSystem - Sistema de Gestão de Empresas</title> 

    <!-- Importa do arquivo JavaScript -->
    <script language="javascript" SRC="<?php echo $_SESSION['servidor']; ?>/scripts/jquery.js"></script>
    <script type="text/javascript" src="../scripts/jquery-ui.js"></script>
    <script type="text/javascript" src="../scripts/jqGeral.js"></script>
    <script language="javascript" src="<?php echo $_SESSION['servidor']; ?>/scripts/maskedinput.js"></script>    
    <script language="javascript"  SRC="../scripts/formulario.js"></script>
    <script type="text/javascript" SRC="<?php echo $_SESSION['servidor']; ?>/scripts/jsCadastropf.js"></script>
    

    <!-- Inclui os scripts CSS -->
    <link href="<?php echo $_SESSION['servidor']; ?>/css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
    <link type="text/css" href="../layout/CSS/smoothness/jquery-ui-1.10.3.custom.css" rel="Stylesheet" />      
    <link href="<?php echo $_SESSION['servidor']; ?>/css/cssGeral.css" rel="stylesheet" type="text/css" />            
    <link href="<?php echo $_SESSION['servidor']; ?>/css/cssFormGeral.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <div id="tudo">
        <!-- CABEÇÁLHO DO SISTEMA -->
        <?php include ('../includes/cabecalho.php'); ?>
        
        <!-- Menu do Sistema -->
	<?php include ("../includes/menu.inc.php");	?>

	<!-- CONTEÚDO DO SISTEMA -->
        <div id="conteudo"> 
             <?php
            // Verifica a permissão do Usuário
            if ($permissaoPF[0] == '0') {
                $mess = 'Você não tem permissão para acessar este Módulo!';
                $mensagem->erro($mess, $_SESSION['servidor']);
            } else { ?>
                <!-- BARRA DE TÍTULO -->
                <div id="barraTitulo">
                    <span class="legenda">Cadastro Pessoa Física</span>
                </div> 
                    
                <!-- Menu de Botões -->
                <?php include ('../includes/botoes.php'); ?>
                
                <!-- Formulário Pessoa Física -->
                <div id="formPF"> 
                <?php
                    // Verifica se a página está transmitindo alguma informação POST
                if (!$_GET or $_GET["acao"] == "" or $_GET["acao"] == "ExibeDados" or $_GET['acao'] == 'exibe') 
                {
                    
                    /*
                                     *  EXIBE OS DADOS DO CLIENTE
                                     */
                    if (isset($_GET['acao']) == 'exibe') 
                    {                                
                        
                        $idCliente = $_GET['idCliente'];

                        // Cria a Consulta da base inteira
                        $sql = "SELECT * FROM clientes, clientespf WHERE clientes.id_cliente = {$idCliente} AND clientespf.idClientes = {$idCliente}";

                        // Executa a consulta criada
                        $LocalizaCliente = $conexao->Consulta($sql); 

                        //$id       = $LocalizaCliente[0]['id_cliente'];
                        $nome        = utf8_encode($LocalizaCliente[0]['nome']);
                        $cpf         = $LocalizaCliente[0]['cpf'];
                        $rg          = $LocalizaCliente[0]['rg'];
                        $email       = $LocalizaCliente[0]["email"];
                        // Formatando a data de Nascimento
                        $DataNasc    = explode('-', $LocalizaCliente[0]['nascimento']);
                        $diaNiver    = $DataNasc[0];
                        $mesNiver    = $DataNasc[1];
                        $anoNiver    = $DataNasc[2];
                        $endereco    = utf8_encode($LocalizaCliente[0]["endereco"]);
                        $numero      = $LocalizaCliente[0]["numero"];
                        $complemento = $LocalizaCliente[0]["complemento"];
                        $bairro      = utf8_encode($LocalizaCliente[0]["bairro"]);
                        $cidade      = utf8_encode($LocalizaCliente[0]["cidade"]);
                        $estado      = $LocalizaCliente[0]["uf"];
                        $cep         = $LocalizaCliente[0]["cep"];
                        $tel1        = $LocalizaCliente[0]["telefone1"];
                        $tel2        = $LocalizaCliente[0]["telefone2"];
                        $cel         = $LocalizaCliente[0]["celular"];
                        $comentario  = utf8_encode($LocalizaCliente[0]["obs"]);
                    } 
                    else
                    {
                        /*
                                             *  Caso o cliente seja novo, todas as variaveis sao declaradas como vazias
                                             */
                        $nome        = '';
                        $cpf         = '';
                        $rg          = '';
                        $email       = '';
                        $endereco    = '';
                        $numero      = '';
                        $complemento = '';
                        $cep         = '';
                        $bairro      = '';
                        $cidade      = '';
                        $uf          = '';
                        $comentario  = '';
                    }
                    
                    // Insere o Campo de formulário principal ?>
                    <form id="formulario" name="formulario" method="post" action="cadastropf.php"> 
                        <div id="Form">
                        <span class="tableRowGroup">
                            <span class="TituloRel">Nome:</span>
                            <br>
                            <input name="nome" type="text" id="nome" maxlength="100" style="width: 440px;" value="<?php echo $nome; ?>">
                            <input type=hidden name="id" id="idCliente" value="<?php echo $idCliente; ?>">
                        </span>
                        <!-- Campo RG e CPF -->
                        <span class="tableBlock">
                            <span class="tableCell">
                                <span class="TituloRel">CPF:</span>
                                <br>
                                <input id="cpf" name="cpf" type="text" maxlength="45" style="width: 220px;" value="<?php echo $cpf; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">RG:</span> 
                                <br>
                                <input name="rg" type="text" id="rg" maxlength="45" style="width: 220px;" value="<?php echo $rg; ?>">
                            </span>                                
                        </span>
                        <!-- Campos E-mail e Data de Nascimento -->
                        <span class="tableBlock">
                            <span class="tableCell">
                                <span class="TituloRel">Email:</span>
                                <br> 
                                <input name="email" type="text" id="email" maxlength="64" style="width: 220px" value="<?php echo $email; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">Data de Nascimento:</span>
                                <br>
                                <!-- Select do dia -->
                                <select name="dia" style="width: 50px">
                                   <?php
                                      // Inclui os dias do mes
                                      $dia = array('01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31') ;
                                       
                                      // Mosta o Resultado
                                      $i = 0;
                                      while( $i < count($dia)){                                          
                                          $n = $i + 1;
                                            if($dia[$i] == $diaNiver)
                                            { ?>
                                               <option value="<?php echo $n; ?>" selected><?php echo $dia[$i]; ?></option> <?php echo "\n";
                                            } else { ?>
                                               <option value="<?php echo $n; ?>"><?php echo $dia[$i]; ?></option> <?php echo "\n";
                                            }							   
                                        $i++;                                           
                                      } ?>
                                </select>
                                <select name="mes" style="width: 100px">
                                    <?php
                                    $mes = array('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'); 

                                    // Mosta o Resultado
                                    $i = 0;
                                    while( $i < count($mes)){                                          
                                        $n = $i + 1;
                                    if($n == $mesNiver)
                                       { ?>
                                            <option value="<?php echo $n; ?>" selected><?php echo $mes[$i]; ?></option> <?php echo "\n";
                                       } else { ?>
                                            <option value="<?php echo $n; ?>"><?php echo $mes[$i]; ?></option> <?php echo "\n";
                                       }							   
                                       $i++;                                           
                                    } ?>
                                </select>
                                <!-- ANO -->
                                <select name="ano" style="width: 60px">
                                    <?php
                                    $a = date('Y');
                                    
                                    for($i='1950'; $i<$a; $i++)
                                    {
                                        $ano[] = $i;
                                    }
                                    
                                  // Mostra os Anos  
                                  $i = 0;
                                  while( $i < count($ano)){
                                      if($ano[$i] == $anoNiver) {
                                          echo '<option value="' . $ano[$i] . '" selected>' . $ano[$i] . '</option>' . "\n";
                                      } else {
                                          echo '<option value="' . $ano[$i] . '">' . $ano[$i] . '</option>' . "\n";
                                      }
                                     $i++;
                                  } ?>
                                </select>
                            </span>
                        </span>                           
                        <!-- Campos Endereço, número e complemento -->
                        <span class="tableBlock">
                            <span class="tableCell">
                                <span class="TituloRel">Endereço</span>
                                <br> 
                                <input name="endereco" type="text" id="endereco" size="30" maxlength="45" style="width: 230px" value="<?php echo $endereco; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">N&#186;:</span>
                                <br>
                                <input name="numero" type="text" id="numero" size="3" maxlength="45" style="width: 55px" value="<?php echo $numero; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">Complemento:</span>
                                <br>
                                <input name="complemento" type="text" id="complemento" size="7" maxlength="45" style="width: 80px" value="<?php echo $complemento; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">Cep:</span>
                                <br>
                                <input id="cep" name="cep" type="text" style="width: 70px" value="<?php echo $cep; ?>">
                            </span>
                        </span>
                        <!-- Campos Bairro, Cidade e Estado -->
                        <span class="tableBlock">
                            <span class="tableCell">
                                <span class="TituloRel">Bairro:</span>
                                <br>
                                <input name="bairro" type="text" id="bairro" size="12" maxlength="20" style="width: 200px;" value="<?php echo $bairro; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">Cidade:</span>
                                <br>
                                <input name="cidade" type="text" id="cidade" size="12" maxlength="45" style="width: 200px;" value="<?php echo $cidade; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">UF</span>
                                <br> 
                                <select name="estado" id="estado" style="width: 40px"> 
                                    <?php
                                    //Declara quem é o arquivo
                                      $file_name = '../layout/ListaUF.txt'; 

                                      // Declara a leitura do arquivo em lista
                                      $resultado =  ler_array_arquivo($file_name); 

                                      // Mosta o Resultado
                                    $i = 0;
                                    while( $i < count($resultado)){
                                       echo '                      <option value="' . $resultado[$i] . '">' . $resultado[$i] . '</option>' . "\n";
                                       $i++;
                                    } ?>
                                </select>
                            </span>
                        </span>
                        <!-- Campos Telefone 1, Telefone 2 e Celular -->
                        <span class="tableBlock">
                            <span class="tableCell">
                                <span class="TituloRel">Telefone 01:</span>
                                <br>
                                <input type="text" id="telefone1" name="tel1" maxlength="13" style="width: 145px" value="<?php echo $tel1; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">Telefone 02:</span>
                                <br>
                                <input type="text" id="telefone2" name="tel2" maxlength="13" style="width: 145px" value="<?php echo $tel2; ?>">
                            </span>
                            <span class="tableCell">
                                <span class="TituloRel">Celular:</span>
                                <br>
                                <input id="cel" name="cel" type="text" maxlength="13" style="width: 145px" value="<?php echo $cel; ?>">
                            </span>
                        </span>
                        <!-- Área de Texto -->
                        <span class="tableBlock">
                            <span class="TituloRel">Observações:</span>
                            <br>
                            <textarea class="msnBox" name="comentario" rows="5" style="width: 440px"><?php echo $comentario; ?></textarea>
                        </span>
                    </div>
                   </form> 	
                </div> <?php                 
                } elseif ($_GET["acao"] == "Salvar"){
                    // Verifica a permissão do Usuário 
                  if ($permissaoPF[1] == '0') {
                    $mess = 'Você não tem permissão para acessar esta função!!!';
                    $mensagem->erro($mess, $_SESSION['servidor']);                 
                  } else {
                    /*
                                     * Grava os dados do cliente no Banco de dados
                                     */
                    // Obtem os dados do fomulário
                     $idEmpresa       = $_COOKIE['idEmpresa'];
                     $form['nome']     = utf8_decode($_POST["nome"]);
                     $form['cpf']      = $_POST["cpf"];
                     $form['rg']       = $_POST["rg"];
                     $form['endereco'] = utf8_decode($_POST["endereco"]);
                     $form['numero']   = $_POST["numero"];
                     $form['compl']    = $_POST["complemento"];
                     $form['bairro']   = utf8_decode($_POST["bairro"]);
                     $form['cidade']   = utf8_decode($_POST["cidade"]);
                     $form['estado']   = $_POST["estado"];
                     $form['cep']      = $_POST["cep"];
                     $form['tel1']     = $_POST["tel1"];
                     $form['tel2']     = $_POST["tel2"];
                     $form['cel']      = $_POST["cel"];
                     $form['mail']     = $_POST["email"];
                     $form['tipo']     = "PF";
                     $text             = utf8_decode($_POST["comentario"]);

                     // Formata a data de aniversário
                     $form['niver'] = $_POST["dia"] . '-' . $_POST["mes"] . '-' . $_POST["ano"];

                     $sql = "INSERT INTO clientes (nome, endereco, numero, complemento, bairro, cidade," .
                                    "                      cep, telefone1, telefone2, celular, uf, obs, tipo, idEmpresa)" .
                                    "  VALUES ('{$form['nome']}'   , '{$form['endereco']}' ," .
                                    "          '{$form['numero']}' , '{$form['compl']}'    ," .
                                    "          '{$form['bairro']}' , '{$form['cidade']}'   ," .
                                    "          '{$form['cep']}'    , '{$form['tel1']}'     ," .
                                    "          '{$form['tel2']}'   ,'{$form['cel']}'       ," .
                                    "          '{$form['estado']}' , '$text'               ," .
                                    "          '{$form['tipo']}'   , '{$idEmpresa}'         )";

                     // Cria a Consulta do CPF
                     $sqlConsulta = "SELECT idPF FROM clientes, clientespf WHERE clientespf.cpf='{$form['cpf']}' AND clientes.nome='{$form['nome']}' AND clientes.endereco = '{$form['endereco']}' AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}'";

                     // Consulta o Cliente para ver se o mesmo já existe
                     $ConsultaCliente = $conexao->ConsultaDado($sqlConsulta);

                    // Verifica se os dados Existem
                     if ($ConsultaCliente > 0)
                     {
                        // Mensagem de aviso		         
                       $mess = 'Cliente ja <span style="color: blue;">cadastrado</span>!!!';
                       $mensagem->aviso($mess, $_SESSION['servidor']); 
                       ?>
                       <p align="center">
                           <img src="<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';" onClick="history.go(-1);">
                       </p> 
                       
                           </div> <!-- Div form --> <?php
                     }else{
                         $GravaCliente = $conexao->onSaveBD($sql);

                         // Verifica se o cliente foi salvo
                         if ($GravaCliente)
                         {
                           // Consulta o ID do Cliente gravado
                           $ConsultaIdCliente = "SELECT id_cliente FROM clientes WHERE nome='{$form['nome']}' AND endereco='{$form['endereco']}' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";

                           // Busca o Id do cliente Gravado
                           $ConsultaCliente = $conexao->BuscaDados($ConsultaIdCliente);

                           $sql2 = "INSERT INTO clientespf (idClientes, cpf, rg, email, nascimento)   " .
                                "  VALUES ('{$ConsultaCliente['id_cliente']}'  , '{$form['cpf']}', '{$form['rg']}', '{$form['mail']}', '{$form['niver']}')";

                           // Grava os dados de CPF e RG do Cliente
                           $GravaCliente2 = $conexao->onSaveBD($sql2);			

                        if ($GravaCliente2)
                        {
                           // Mensagem de aviso		         
                           $mess = 'Cliente <span style="color: blue;">'.utf8_encode($form['nome']).'</span> cadastrado com sucesso!!!';
                           $mensagem->acerto($mess, $_SESSION['servidor']); 

                           // Verifica a numeração do Cliente
                           $sqlConsultaCliente = "SELECT id_cliente FROM clientes WHERE idEmpresa = '{$_COOKIE['idEmpresa']}' ORDER BY id_cliente DESC LIMIT 1";

                           // Executa a consulta criada
                           $LocalizaUltimoCliente = $conexao->Consulta($sqlConsultaCliente);

                           ?>
                           <p align="center"><a href="./cadastropf.php?acao=exibe&idCliente=<?php echo $LocalizaUltimoCliente[0]['id_cliente']; ?>">
                                   <img src="<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                           </p>
                       </div> <!-- Div form --> <?php
                        }
                         // Fecha: Verifica se o cliente foi salvo
                     } 
                     // Fecha: Verifica se os dados existem
                     }
                  } // Fecha Verificação de permissão Usuário
                } elseif ($_GET["acao"] == "atualizar") {
                  if ($permissaoPF[2] == '0') {
                    $mess = 'Você não tem permissão para modificar os clientes!!!';
                    $mensagem->erro($mess, $_SESSION['servidor']);
                  } else {
                    /******************************************
                            Atualiza os dados do formulário
                    ******************************************/	   
                    if ($_POST["id"] == '')
                     {
                         // Mensagem de aviso
                         echo '<h2>Selecione um cliente válido!!!</h2>' . "\n";
                     } else {
                         // Obtem os dados do fomulário
                         $form['codigo']   = $_POST["id"];
                         $form['nome']     = utf8_decode($_POST["nome"]);
                         $form['cpf']      = $_POST["cpf"];
                         $form['rg']       = $_POST["rg"];
                         $form['endereco'] = utf8_decode($_POST["endereco"]);
                         $form['numero']   = $_POST["numero"];
                         $form['compl']    = $_POST["complemento"];
                         $form['bairro']   = utf8_decode($_POST["bairro"]);
                         $form['cidade']   = utf8_decode($_POST["cidade"]);
                         $form['estado']   = $_POST["estado"];
                         $form['cep']      = $_POST["cep"];
                         $form['tel1']     = $_POST["tel1"];
                         $form['tel2']     = $_POST["tel2"];
                         $form['cel']      = $_POST["cel"];
                         $form['mail']    = $_POST["email"];
                         $form['tipo']     = "PF";
                         $text             = utf8_decode($_POST["comentario"]);

                         // Formata a data de aniversário
                         $form['niver'] = $_POST["dia"] . '-' . $_POST["mes"] . '-' . $_POST["ano"];

                         $sql = "UPDATE clientes, clientespf SET clientes.nome      =  '{$form['nome']}',     " .
                                    "                               clientespf.cpf      =  '{$form['cpf']}',      " .
                                    "                               clientespf.rg       =  '{$form['rg']}',       " .
                                    "                               clientes.endereco    =  '{$form['endereco']}', " .
                                    "                               clientes.numero      =  '{$form['numero']}',   " .
                                    "                               clientes.complemento =  '{$form['compl']}',    " .
                                    "                               clientes.bairro      =  '{$form['bairro']}',   " .
                                    "                               clientes.cep         =  '{$form['cep']}',      " .        
                                    "                               clientes.cidade      =  '{$form['cidade']}',   " .
                                    "                               clientes.uf          =  '{$form['estado']}',   " .
                                    "                               clientes.telefone1   =  '{$form['tel1']}',     " .
                                    "                               clientes.telefone2   =  '{$form['tel2']}',     " .
                                    "                               clientes.celular     =  '{$form['cel']}',      " .
                                    "                               clientespf.email     =  '{$form['mail']}',     " .
                                    "                               clientespf.nascimento = '{$form['niver']}',    " .
                                    "                               clientes.obs         =  '{$text}'              " .
                                    "                WHERE clientes.id_cliente='{$form['codigo']}' AND clientespf.idClientes ='{$form['codigo']}' ";

                         $AtualizaCliente = $conexao->onSaveBD($sql);

                         // Verifica se o cliente foi atualizado
                         if ($AtualizaCliente)
                         {
                           // Mensagem de aviso 
                           $mess = 'Cliente <span style="color: blue;">'.utf8_encode($form['nome']).'</span> atualizado com sucesso!!!';
                           $mensagem->acerto($mess, $_SESSION['servidor']); ?>
                           <p align="center"><a href="./cadastropf.php?acao=exibe&idCliente=<?php echo $form['codigo']; ?>"><img src="<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a></p> 
                               </div> <!-- Div form --><?php
                         }
                     }
                  }
                }  elseif ($_GET["acao"] == "Localizar") {
                    /*****************************************
                                               LOCALIZA O CLIENTE
                                    *****************************************/
                    // Obtem os dados a serem pesquizados
                    $nome = $_POST["nome"];
                    $endereco = $_POST["endereco"];
                    $email = $_POST["email"];

                    // Obtem os dados a serem pesquizados
                    if (isset($_POST["nome"])) 
                    {
                        $nome = $_POST["nome"];
                    } else {
                        $nome = $_GET["nome"];
                    }

                    $limite = 5; // limite de registros por pagina
                    $pag = 0; // valor padrao se nao for enviado nenhum valor via metodo GET
                    if(isset($_GET['pag_atual']))
                    {
                        $pag_atual = $_GET["pag_atual"]; // recebe o valor enviado pelo metodo GET	
                    }
                    else
                    {
                        $pag_atual = $pag;
                    }


                    // Consulta da quantidade de Registros encontrados
                    $sql1 = "SELECT * FROM clientes WHERE clientes.nome like'%{$nome}%' AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}' AND clientes.tipo = 'PF'";

                    // Verifica qual o campo que está preenchido para efetuar a consulta
                     if ($nome != "")
                     {
                        // Cria a Consulta pelo Nome
                        $sql = "SELECT * FROM clientes, clientespf WHERE clientes.nome like'%{$nome}%' AND clientespf.idClientes = clientes.id_cliente AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}' ORDER BY nome LIMIT $pag_atual, $limite";	    
                     }
                     elseif ($endereco != "")
                     {
                        // Cria a Consulta pelo Endereço
                        $sql = "SELECT * FROM clientes, clientespf WHERE clientes.endereco like'%{$endereco}%' AND clientespf.idClientes = clientes.id_cliente AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}' ORDER BY nome LIMIT $pag_atual, $limite";
                     }
                     elseif ($email != "")
                     {
                        // Cria a Consulta pelo e-mail
                     }
                     else
                     {
                        // Cria a Consulta da base inteira
                        $sql = "SELECT * FROM clientes, clientespf WHERE clientespf.idClientes = clientes.id_cliente AND clientes.idEmpresa = '{$_COOKIE['idEmpresa']}' ORDER BY nome LIMIT $pag_atual, $limite";
                     }

                    // Executa a consulta criada
                     $LocalizaCliente = $conexao->Consulta($sql);

                     // sql que pega o resultado total de registro
                    $resultado2 = $conexao->ConsultaDado($sql1);
                    // fim sql

                    /* Total de resultados da pesquisa */
                    echo "Foram encontrados $resultado2 resultados<br />";

                    // inicio paginação
                    $ultima = intval($resultado2-$limite); // define o valor da ultima pagina
                    $anterior = $pag_atual-$limite; // define o valor da pagina anterior a atual

                    if ($anterior < 0) { // se anterior for menor que 0, ele exibe apenas os nomes sem link
                    echo "<label class='nolink'>Primeira</label> - <label class='nolink'>Anterior</label> - ";
                    } else { // senao ele exibe os links
                    echo " <a class='link' href=./cadastropf.php?acao=Localizar&pag_atual=0&nome=$nome>Primeira</a> - ";
                    echo " <a class='link' href=./cadastropf.php?acao=Localizar&pag_atual=$anterior&nome=$nome>Anterior</a> - ";
                    }

                    $proxima = intval($pag_atual+$limite); // define o valor da proxima pagina
                    if ($proxima > $resultado2) { // não deixa o link passar do total de registros
                    echo "Proxima - Ultima";
                    } else {
                    echo " <a class='link' href=./cadastropf.php?acao=Localizar&pag_atual=$proxima&nome=$nome>Proxima</a> - ";
                    echo " <a class='link' href=./cadastropf.php?acao=Localizar&pag_atual=$ultima&nome=$nome>Ultima</a>";
                    }

                     // Exibe os dados da consulta
                     if ($LocalizaCliente > 0)
                     {
                        // Exibindo os dados do Cliente			 
                        for($i=0; $i<count($LocalizaCliente); $i++)
                        { ?>
                            <table class="listacliente">
                                <tr>
                                    <td><?php echo utf8_encode($LocalizaCliente[$i]['nome']); ?></td>
                                     <td rowspan="2" align="right">
                                         <a href="./cadastropf.php?acao=exibe&idCliente=<?php echo $LocalizaCliente[$i]['id_cliente']; ?>">
                                             <img src="<?php echo $_SESSION['servidor']; ?>/layout/btn_visualizar.png">
                                         </a>
                                     </td>                                    
                                </tr>
                                <tr>
                                    <td><?php echo utf8_encode ($LocalizaCliente[$i]['endereco']); ?>, <?php echo $LocalizaCliente[$i]['numero']; ?> - <?php echo $LocalizaCliente[$i]['complemento']; ?></td>                                   
                                </tr>                                            
                            </table> <?php                                     
                        } ?>
                        </div> <!-- Div form --> <?php
                     } else { ?>                           
                        <!-- Caso nenhum dado tenha sido encontrado --> <?php
                        // Mensagem de aviso		         
                       $mess = 'Nenhum cliente encontrado!';
                       $mensagem->aviso($mess, $_SESSION['servidor']); 

                       ?>
                       <p align="center"><a href="./cadastropf.php?acao=">
                           <img src="<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                       </p> 
                       </div> <!-- Div form -->    <?php
                     }
                } elseif ($_GET["acao"] == "excluir") {
                  if ($permissaoPF[3] == '0') {
                    $mess = 'Você não tem permissão para <span style="color: red;">excluir</span> clientes!!!';
                    $mensagem->erro($mess, $_SESSION['servidor']);
                    ?> <p align="center"><a href="./cadastropf.php?acao=exibe&idCliente=<?php echo $_POST['id']; ?>"><img src="<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a></p> <?php
                  } else { 
                    /*******************************************************

                            Exclui o cliente selecionado

                     *******************************************************/
                    // Obtem os dados necessários a exclusão
                    $codigo   = $_GET["id"];
                    //$nome     = $_GET["nome"];

                    // Cria a exclusão do cliente
                    $sql1 = "DELETE FROM clientes WHERE id_cliente = '{$codigo}' ";

                    $ExcluiCliente = $conexao->onSaveBD($sql1);

                            // Verifica se a sql1 foi executada com sucesso
                       if ($ExcluiCliente)
                       {
                           // Cria a exclusão do cliente na tabela Clientes_pf
                           $sql2 = "DELETE FROM clientespf WHERE idClientes = '{$codigo}' ";

                           // Exclui os dados do cliente na tabela Clientes_pf
                           $ExcluiCliente2 = $conexao->onSaveBD($sql2);

                           if ($ExcluiCliente2)
                           {
                               // Mensagem de aviso		         
                               $mess = 'Cliente <span style="color: red;">excluído</span> com sucesso!!!';
                               $mensagem->acerto($mess, $_SESSION['servidor']); 

                               ?>
                               <p align="center"><a href="./cadastropf.php">
                                   <img src="<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<?php echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                               </p> 
                           </div> <!-- Div form --><?php
                           }
                    // Finaliza If ($ExcluiCliente)		   
                    }
            // Finaliza elseif ($_POST["deleta")				 
                  }             
            }   // Fecha If Salvar
            } // Fecha If verifica a permissão
?> 
        <!-- Fecha Div Conteúdo -->
        </div>
        <!-- Rodapé do Sistema -->
	<?php include ('../includes/rodape.php'); ?>
    <!-- Fecha DIV tudo -->    
    </div> 
    <div id="dialog-confirm"></div>
</body>
</html>
 





