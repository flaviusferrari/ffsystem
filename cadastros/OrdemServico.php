<?php
// Verifica se a Sessão foi Iniciada
include_once ("../seguranca.php");

// Inclui a classe para Conexão ao Banco de Dados
include "../bd/conexao.class.php";
$conexao = new Conexao;

// Inclui a classe de Mensagem
include_once '../classes/mensagens.class.php';
$mensagem = new mensagens();

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
        <script language="javascript"  SRC="../scripts/formulario.js"></script>
        <script language="javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/jquery.js"></script>
        <script language="javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/maskedinput.js"></script>
        <script type="text/javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/tabledeleterow.js"></script>
        <script type="text/javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/ordemdeservico.js"></script>
        <script type="text/javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/jqGeral.js"></script>
                        
        <!-- Inclui os scripts CSS -->
        <link href="<? echo $_SESSION['servidor']; ?>/css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
        <link href="<? echo $_SESSION['servidor']; ?>/css/cssGeral.css" rel="stylesheet" type="text/css" />            
        <link href="<? echo $_SESSION['servidor']; ?>/css/cssFormGeral.css" rel="stylesheet" type="text/css" />
        <link href="<? echo $_SESSION['servidor']; ?>/css/OrdemServico.css" rel="stylesheet" type="text/css" />
        
    </head>
    <body>
        <div id="tudo">
            <!-- CABEÇÁLHO DO SISTEMA -->
            <? include ('../includes/cabecalho.php'); ?>

            <!-- Menu do Sistema -->
            <? include ("../includes/menu.inc.php"); ?>
            
            <!-- CONTEÚDO DO SISTEMA -->
            <div id="conteudo"> 
            
            <? // Verifica se a página está transmitindo alguma informação GET
                if (!$_GET or $_GET["acao"] == "") { ?>  
                    <!-- BARRA DE TÍTULO -->
                    <div id="barraTitulo">
                        <span class="legenda">Ordem de Serviço</span>
                    </div>
                    <div id="formPF">
                    <form name="formulario" id="formulario" method="post" action="OrdemServico.php" autocomplete="off">
                        <table align="center">
                            <tr>
                                <td width="290">Nome/Razão Social:<br><input name="nome" type="text" style="width: 400px;"></td>
                            </tr>
                            <tr>
                                <td width="240" align="center"><input type="button" onClick="ExibeConsulta(this.form.name, 'listacliente');"  name="acao" value="Localiza Cliente"></td>
                            </tr>
                        </table>
                    </form>
                    </div> <? 
                } elseif ($_GET["acao"] == "listacliente") { 
                    /************************************************
                                    Listagem dos clientes 
                    ************************************************/ ?>
                    <!-- BARRA DE TÍTULO -->
                    <div id="barraTitulo">
                        <span class="legenda">Ordem de Serviço</span>
                    </div>
                    <div id="formPF">
                    <? // Obtem os dados a serem pesquizados
                    if (!$_POST["nome"]) {
                        $nome = $_GET["nome"];
                    } else {
                        $nome = $_POST["nome"];
                    }

                    $limite = 5; // limite de registros por pagina
                    $pag = 0; // valor padrao se nao for enviado nenhum valor via metodo GET
                    $pag_atual = $_GET["pag_atual"]; // recebe o valor enviado pelo metodo GET

                    if (!$pag_atual) {	
                            $pag_atual = $pag;
                    } else {
                            $pag_atual = $pag_atual;
                    }

                    // Cria a Consulta ao BD com o Nome
                    $sql1 = "SELECT id_cliente, nome FROM clientes WHERE clientes.nome like'%{$nome}%' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";

                    // Cria a Consulta ao BD com o Nome
                    $sql = "SELECT * FROM clientes WHERE clientes.nome like'%{$nome}%' AND idEmpresa = '{$_COOKIE['idEmpresa']}' ORDER BY nome LIMIT $pag_atual, $limite";

                    // sql que pega o resultado total de registro
                    $resultado2 = $conexao->ConsultaDado($sql1);
                    // fim sql

                    // Executa a consulta criada
                    $LocalizaCliente = $conexao->Consulta($sql);

                    echo "Foram encontrados $resultado2 resultados<br />";

                    // inicio paginação
                    $ultima = intval($resultado2-$limite); // define o valor da ultima pagina
                    $anterior = $pag_atual-$limite; // define o valor da pagina anterior a atual

                    if ($anterior < 0) { // se anterior for menor que 0, ele exibe apenas os nomes sem link
                    echo "<label class='nolink'>Primeira</label> - <label class='nolink'>Anterior</label> - ";
                    } else { // senao ele exibe os links
                    echo " <a class='link' href=./OrdemServico.php?acao=listacliente&pag_atual=0&nome=$nome>Primeira</a> - ";
                    echo " <a class='link' href=./OrdemServico.php?acao=listacliente&pag_atual=$anterior&nome=$nome>Anterior</a> - ";
                    }

                    $proxima = intval($pag_atual+$limite); // define o valor da proxima pagina
                    if ($proxima > $resultado2) { // não deixa o link passar do total de registros
                    echo "<label class='noLink'>Proxima</label> - <label class='noLink'>Ultima</label>";
                    } else {
                    echo " <a class='link' href=./OrdemServico.php?acao=listacliente&pag_atual=$proxima&nome=$nome>Proxima</a> - ";
                    echo " <a class='link' href=./OrdemServico.php?acao=listacliente&pag_atual=$ultima&nome=$nome>Ultima</a>";
                    }

                    ?>
                    <!-- Exibe a tabela com os dados do cliente -->
                    <? // Exibe os dados da consulta
                     if ($LocalizaCliente > 0)
                     {
                        // Exibindo os dados do Cliente			 
                        for($i=0; $i<count($LocalizaCliente); $i++)
                        { ?>
                            <form name="form<? echo $LocalizaCliente[$i]['id_cliente']; ?>" id="form<? echo $LocalizaCliente[$i]['id_cliente'] ?>" method="post" action="OrdemServico.php">
                              <table class="listacliente">
                                <tr>
                                    <td><? echo utf8_encode($LocalizaCliente[$i]['nome']); ?></td>
                                     <td rowspan="2" align="right">
                                         &nbsp;
                                     </td>                                    
                                </tr>
                                <tr>
                                    <td><? echo utf8_encode ($LocalizaCliente[$i]['endereco']); ?>, <? echo $LocalizaCliente[$i]['numero']; ?> - <? echo $LocalizaCliente[$i]['complemento']; ?></td>                                   
                                </tr> 
                                
                                <tr>
                                    <td>
                                        <!-- Reenviando os dados do POST oculto ao Usuário -->
                                        <input type=hidden name="idCliente" value="<? echo $LocalizaCliente[$i]['id_cliente']; ?>">
                                        <input type=hidden name="nome" value="<? echo utf8_encode ($LocalizaCliente[$i]['nome']); ?>">
                                        <input type="button" name="acao" onClick="ExibeConsulta(this.form.name, 'abreordem');" value="Abrir O.S.">
                                    </td>
                                    <td align="right">
                                        <?  // Verifica se o cliente possui alguma ordem de serviço cadastrada
                                        $sqlConsultaOS = "SELECT * FROM ordem WHERE idCliente LIKE {$LocalizaCliente[$i]['id_cliente']} AND idEmpresa = '{$_COOKIE['idEmpresa']}'";
                                        // Consulta se existe algum registro
                                        $resultConsulta = $conexao->ConsultaDado($sqlConsultaOS);
                                        // 
                                        if ($resultConsulta > 0) { ?>
                                            <input type="button" name="acao" onClick="ExibeConsulta(this.form.name, 'listaordem');" value="Lista Ordem"> <?
                                        }  ?>
                                    </td>
                                    </tr>
                              </table>
                            </form>
                             <?
                        } // Finaliza For 
                    } // Finaliza IF ?>                   
                    <p align="center"><a href="./OrdemServico.php">
                        <img id="btnVoltar" src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"></a>
                    </p> 
                        </div> <!-- Fecha Div FormPF --> <? 	
		} elseif ($_GET["acao"] == "abreordem" or $_GET['acao'] == 'visualizaordem') {
                    /************************************************
                                    Exibe a Ordem de Serviço
                    ************************************************/ 
                    // Verifica qual o GET que foi enviado e arruma as variáveis
                    if ($_GET['acao'] == 'abreordem') {
                        // Obtem os dados a serem pesquizados
                        $idCliente = $_POST["idCliente"];

                        // Cria a Consulta ao BD com o ID do cliente
                        $sqlCliente = "SELECT * FROM clientes WHERE clientes.id_cliente = '{$idCliente}' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";

                        // Executa a consulta criada
                        $LocalizaCliente = $conexao->Consulta($sqlCliente);

                        // Verifica se o cliente é PJ ou PF
                        if($LocalizaCliente[0]['tipo'] == 'PF'){
                            // Localiza o CPF do Cliente
                            $sqlDocumento = "SELECT cpf FROM clientespf WHERE idClientes = '{$LocalizaCliente[0]['id_cliente']}'";
                        } else {
                            // Localiza o CNPJ do cliente
                            $sqlDocumento = "SELECT cnpj FROM clientespj WHERE idClientes = '{$LocalizaCliente[0]['id_cliente']}'";
                        }
                        // Efetua a localização do Documento
                        $LocalizaCNPJ = $conexao->Consulta($sqlDocumento);

                        // Pega os Dados a serem exibidos
                        $nome        = utf8_encode($LocalizaCliente[0]['nome']);
                        $endereco    = utf8_encode($LocalizaCliente[0]['endereco']);
                        $numero      = $LocalizaCliente[0]['numero'];
                        $complemento = $LocalizaCliente[0]['complemento'];
                        $bairro      = utf8_encode($LocalizaCliente[0]['bairro']);
                        $cidade      = utf8_encode($LocalizaCliente[0]['cidade']);
                        $uf          = $LocalizaCliente[0]['uf'];          
                        $cep         = $LocalizaCliente[0]['cep'];
                        // Verifica o Tipo de Cliente
                        if($LocalizaCliente[0]['tipo'] == 'PF'){
                            $tipo = 'CPF';
                        } else {
                            $tipo = 'CNPJ';
                        }                                        
                        // Verifica o Documento
                        if($LocalizaCliente[0]['tipo'] == 'PF'){
                            $cnpj = $LocalizaCNPJ[0]['cpf'];
                        } else {
                            $cnpj = $LocalizaCNPJ[0]['cnpj'];
                        }                                        
                        $numordem    = '--';
                        $data        = date('d/m/Y');
                        // Situação da Ordem
                        $aberta     = 'checked';
                        // Descrição
                        $valorInicial = '0';
                        $valorExcedente = '0';
                        $desconto    = '0';  
                        $valorServico = '0';
                        $valorMaterial = '0';
                        $custoServico = '0';
                                        
                    } elseif ($_GET['acao'] == 'visualizaordem') {
                        // Obtem o dado a ser Pesquizado
                        $ordem = $_GET['ordem'];
                        // Cria a Consulta ao BD com o ID do cliente
                        $sqlOrdem = "SELECT * FROM ordem WHERE os = '{$ordem}' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";
                        
                        // Obtem o Código da Empresa
                        $sqlCodEmpresa = "SELECT codEmpresa FROM empresa WHERE idEmpresa = '{$_COOKIE['idEmpresa']}'";
                        $consultaCodEmpresa = $conexao->Consulta($sqlCodEmpresa);
                        $codEmpresa = $consultaCodEmpresa[0]['codEmpresa'];

                        
                        // Executa a consulta criada
                        $LocalizaOrdem = $conexao->Consulta($sqlOrdem); 

                        // Cria a Consulta ao BD com o ID do cliente
                        $sqlCliente = "SELECT * FROM clientes WHERE clientes.id_cliente = '{$LocalizaOrdem[0]['idCliente']}' ";

                        // Executa a consulta criada
                        $LocalizaCliente = $conexao->Consulta($sqlCliente);
                        // Verifica o Tipo de Cliente
                        if($LocalizaCliente[0]['tipo'] == 'PF'){
                            $tipo = 'CPF';
                        } else {
                            $tipo = 'CNPJ';
                        }           
                                        
                        // Verifica se o cliente é PJ ou PF
                        if($LocalizaCliente[0]['tipo'] == 'PF'){
                            // Localiza o CPF do Cliente
                            $sqlDocumento = "SELECT cpf FROM clientespf WHERE idClientes = '{$LocalizaCliente[0]['id_cliente']}'";
                        } else {
                            // Localiza o CNPJ do cliente
                            $sqlDocumento = "SELECT cnpj FROM clientespj WHERE idClientes = '{$LocalizaCliente[0]['id_cliente']}'";
                        }
                        // Efetua a localização do Documento
                        $LocalizaCNPJ = $conexao->Consulta($sqlDocumento);
                                        
                        // Pega os Dados a serem exibidos
                        $idCliente   = $LocalizaCliente[0]['id_cliente'];
                        $nome        = utf8_encode($LocalizaCliente[0]['nome']);
                        $endereco    = utf8_encode($LocalizaCliente[0]['endereco']);
                        $numero      = $LocalizaCliente[0]['numero'];
                        $complemento = $LocalizaCliente[0]['complemento'];
                        $bairro      = utf8_encode($LocalizaCliente[0]['bairro']);
                        $cidade      = utf8_encode($LocalizaCliente[0]['cidade']);
                        $uf          = $LocalizaCliente[0]['uf'];
                        $cep         = $LocalizaCliente[0]['cep'];
                        // Verifica o Documento
                        if($LocalizaCliente[0]['tipo'] == 'PF'){
                            $cnpj = $LocalizaCNPJ[0]['cpf'];
                        } else {
                            $cnpj = $LocalizaCNPJ[0]['cnpj'];
                        }   
                        $numordem    = $LocalizaOrdem[0]['os'];
                        // Acerta a Exibição da Data vinda do Banco de Dados
                        $dataTemp    = explode('-', $LocalizaOrdem[0]['data']);
                        //armazena na variavel data os valores do vetor data e concatena /
                        $data = $dataTemp[2].'/'.$dataTemp[1].'/'.$dataTemp[0]; 
                        // Situação
                        if ($LocalizaOrdem[0]['situacao'] == 'A') {
                            $aberta = 'checked';
                        } elseif ($LocalizaOrdem[0]['situacao'] == 'M') {
                            $modificada= 'checked';
                        } elseif ($LocalizaOrdem[0]['situacao'] == 'F') {
                            $fechada = 'checked';
                        }
                        // 
                        $problema   = utf8_encode($LocalizaOrdem[0]['problema']);
                        $servico    = utf8_encode($LocalizaOrdem[0]['servico']);
                        $horaEntrada = $LocalizaOrdem[0]['horaEntrada'];
                        $horaSaida   = $LocalizaOrdem[0]['horaSaida'];
                        $tempoTotal  = $LocalizaOrdem[0]['tempoTotal'];
                        $valorInicial = $LocalizaOrdem[0]['valorInicial'];
                        $valorExcedente = $LocalizaOrdem[0]['valorExcedente'];
                        $desconto    = $LocalizaOrdem[0]['desconto'];
                        $valorServico = $LocalizaOrdem[0]['valorServico'];
                        $valorMaterial = $LocalizaOrdem[0]['valorMaterial'];
                        $custoServico  = $LocalizaOrdem[0]['custoServico'];
                        $obs          = utf8_encode($LocalizaOrdem[0]['obs']);
                    } ?>
                    <!-- BARRA DE TÍTULO -->
                    <div id="barraTituloPer">
                        <span class="legenda">Ordem de Serviço</span>
                    </div>    
                        
                    <!-- Menu de Botões -->
                    <div id="menuBotoesPer">
                        <button type="button" class="css3button3" id="btnSalvar">Salvar</button>
                        <button type="button" class="css3button3" id="btnNovo">Novo</button>
                        <button type="button" class="css3button3" id="btnAtualizar">Atualizar</button>
                        <button type="button" class="css3button3" name="acao" onClick="doEnviar('Localizar')" value="Localizar">Localizar</button>
                        <button type="button" class="css3button3" onClick="excluir(this.form)" value="Excluir">Excluir</button>                          
                    </div>                        
                    
                    <!-- Formulário de Cadastro de OS -->
                    <div id="FormPFPer">
                        <form  name="formulario" id="formulario" method="post" action="OrdemServico.php">                                                      
                            <!-- Razão Social -->
                            <span class="tableBlock">
                                <span class="tableCell">
                                    <fieldset style="width: 350px;">
                                        <legend><span class="TituloRel">Dados do Cliente:</span></legend>
                                        <? echo $nome; ?><br>
                                        <span class="txtDadosCliente">
                                        <!-- Endereço, Número e Complemento -->
                                        <? echo $endereco; ?>, <? echo $numero; ?> - <? echo $complemento; ?><br>
                                        <? echo $bairro; ?> - <? echo $cidade; ?> - <? echo $uf; ?>
                                        </span>
                                        <input type=hidden name="idCliente" value="<? echo $idCliente; ?>">
                                    </fieldset>                                    
                                </span> 
                                <span class="tableCell">
                                    <fieldset style="width: 100px;margin-left: 30px; text-align: center;">
                                        <legend><span class="TituloRel">Nº da OS:</span></legend>
                                        <span style="font-size: 18px; color: red;"><? echo $numordem; ?></span>
                                            <input type=hidden name="ordem" value="<? echo $numordem; ?>">   
                                    </fieldset>                                   
                                </span>
                            </span>
                            <!-- DATA -->
                            <span class="tableBlock">
                                <span class="tableCell">
                                    <fieldset style="width: 120px;margin-right: 30px; text-align: center;">
                                        <legend><span class="TituloRel">Data:</span></legend>
                                        <span style="font-size: 18px;"><? echo $data; ?></span>
                                        <input type="hidden" name="data" value="<? echo $data; ?>">
                                    </fieldset>
                                </span>
                                <!-- SITUAÇÃO -->
                                <span class="tableCell">
                                    <fieldset style="width: 345px;">
                                        <legend><span class="TituloRel">Situação:</span></legend>                                        
                                        <input type="radio" name="situacao" value="aberta" <? echo $aberta; ?>>Aberta&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="situacao" value="modificada" <? echo $modificada ?>>Modificada&nbsp;&nbsp;&nbsp;
                                        <input type="radio" name="situacao" value="fechada" <? echo $fechada ?>>Fechada&nbsp;
                                   
                                    </fieldset>                                    
                                </span>
                            </span>
                            <!-- PROBLEMAS -->
                            <span class="tableBlock">
                                <span class="tableCell">
                                    <fieldset class="fieldSize">
                                        <legend><span class="TituloRel">Problema:</span></legend>
                                        <textarea name="problema" class="msnBox" rows="3" style="width: 520px;"><? echo $problema; ?></textarea>
                                    </fieldset>
                                </span>
                            </span>
                            <!-- SERVIÇO EXECUTADO -->
                            <span class="tableBlock">
                                <span class="tableCell">
                                    <fieldset class="fieldSize">
                                        <legend><span class="TituloRel">Serviço Executado:</span></legend>
                                        <textarea name="servico" class="msnBox" rows="3" style="width: 520px;"><? echo $servico; ?></textarea>
                                    </fieldset>
                                </span>
                            </span>
                            <span class="tableBlock">
                                <span class="tableCell">
                                    <span style="font-size: 10px; font-weight: bold;">Material Utilizado:</span><br>
                                    <table border="0" cellspacing="0" id="tblSample">
                                        <thead>
                                            <tr>
                                                <td colspan="3"><button type="button" class="css3button2" value="Adiciona Material" onclick="addRowToTable();" />Adiciona Material</button></td>                                                                            
                                            </tr>
                                            <tr>                                                                            
                                                <th>#</th>
                                                <th>Cód.:</th>
                                                <th>Quant</th>
                                                <th>Produto</th>
                                                <th>Valor Unit.</th>
                                                <th>Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <? // Colocando o Material em Colunas
                                        if ($_GET['acao'] == 'visualizaordem') { 
                                        // Convertendo o Material para Array
                                        $materialLinha = explode("\n", $LocalizaOrdem[0]['material']);

                                        // Seleciona o material
                                        for($i=0; $i < count($materialLinha); $i++)
                                        {                                            
                                               $material[$i] = explode('~', $materialLinha[$i]);
                                        }

                                        $i = 0;
                                        while ($i < count($materialLinha)) { ?>
                                            <tr>
                                                <td><img src="../layout/No.png" class="btnExcluiMaterial" value="<?php echo $i; ?>" title="Excluir Registro"></td>
                                                <td>
                                                    <input id="cod<? echo $i; ?>" type="text" name="codProd<? echo $i; ?>" style="width: 70px;" onBlur="buscaMaterial(<? echo $i; ?>);" value="<? echo $material[$i][0]; ?>">
                                                </td>
                                                <td>
                                                    <input id="quant<? echo $i; ?>" type="text" name="codigo<? echo $i; ?>" style="width: 60px;" onchange="calculaValor(<? echo $i; ?>);" value="<? echo $material[$i][1]; ?>">
                                                </td>
                                                <td>
                                                    <input id="material<? echo $i; ?>" type="text" name="material<? echo $i; ?>" style="width: 200px;" value="<? echo utf8_encode($material[$i][2]); ?>">
                                                </td>
                                                <td>
                                                    <input id="valor<? echo $i; ?>" type="text" name="valor<? echo $i; ?>" class="valUnit" style="width: 80px;" value="<? echo $material[$i][3]; ?>" onchange="calculaValor(<? echo $i; ?>)">
                                                </td>
                                                <td>
                                                    <input id="totalmat<? echo $i; ?>" type="text" name="totalmat<? echo $i; ?>" style="width: 70px;" value="<? echo $material[$i][4]; ?>" onBlur="calcula();">
                                                </td>
                                                <td>
                                                <input type="hidden" name="quantidade" value="<? echo $i; ?>">
                                                </td>
                                            </tr> <?
                                            $i++;
                                        } 
                                      } ?>
                                        </tbody>                                                  
                                    </table>                                                                                                    
                                </span>
                            </span>
                            <span class="tableBlock">
                                 <!-- HORA ENTRADA -->
                                <span class="tableCell">
                                    <div class="box200">
                                        <span class="TituloRel">Hora Entrada:</span><br>
                                        <input type="text" id="horaEntrada" name="horaEntrada" style="width: 100px;" value="<? echo $horaEntrada; ?>"> 
                                    </div>
                                </span>
                                 <!-- HORA SAÍDA -->
                                <span class="tableCell">
                                    <div class="box200">
                                        <span class="TituloRel">Hora Saída:</span><br>
                                        <input type="text" id="horaSaida" name="horaSaida" style="width: 100px;" class="teste" value="<? echo $horaSaida; ?>">                                    
                                    </div>
                                </span>
                                 <!-- HORA TOTAL -->
                                <span class="tableCell">
                                    <div class="box200">
                                        <span class="TituloRel">Tempo Total:</span><br>
                                        <input type="text" id="tempoTotal" name="tempoTotal" style="width: 100px;" value="<? echo $tempoTotal; ?>">     
                                    </div>
                                </span>
                            </span>
                            <span class="tableBlock">
                                 <!-- VALOR INICIAL -->
                                <span class="tableCell">
                                    <div class="box200">
                                        <span class="TituloRel">Valor Inicial:</span><br>
                                        R$ <input type="text" class="valor" id="valorInicial" name="valorInicial" size="5" value="<? echo $valorInicial; ?>">   
                                    </div>
                                </span>
                                <!-- VALOR EXCEDENTE -->
                                <span class="tableCell">
                                    <div class="box200">
                                        <span class="TituloRel">Valor Tempo Excedente:</span><br>
                                        R$ <input type="text" class="valor" id="valorExcedente" name="valorExcedente" size="5" value="<? echo $valorExcedente; ?>">                                                                       
                                    </div>
                                </span>
                                <!-- DESCONTO -->
                                <span class="tableCell">
                                    <div class="box200">
                                       <span class="TituloRel">Desconto:</span><br>
                                        R$ <input type="text" class="valor" id="desconto" class="calculaTT" name="desconto" size="5" value="<? echo $desconto; ?>">  
                                    </div>
                                </span>
                            </span>
                            <span class="tableBlock">
                                <!-- CUSTO DO MATERIAL -->       
                                <span class="tableCell">
                                    <div class="box200">
                                        <span class="TituloRel">Valor do Material:</span><br>
                                        R$ <input type="text" class="valor" id="valorMaterial" name="valorMaterial" size="5" value="<? echo $valorMaterial; ?>">    
                                    </div>
                                </span>
                                <!-- CUSTO DA MÃO DE OBRA -->
                                <span class="tableCell">
                                    <div class="box200">
                                        <span class="TituloRel">Valor do Serviço:</span><br>
                                        R$ <input type="text" class="valor" id="valorServico" name="valorServico" size="5" value="<? echo $valorServico; ?>">                                                                       
                                    </div>
                                </span>
                                <!-- CUSTO DO SERVIÇO -->
                                <span class="tableCell">
                                    <div class="box200">
                                       <span class="TituloRel">Custo Total:</span><br>
                                        R$ <input type="text" class="valor" id="custoServico" name="custoServico" size="5" value="<? echo $custoServico; ?>">          
                                    </div>
                                </span>
                            </span>
                            <!-- OBSERVAÇÕES -->
                            <span class="tableBlock">
                                <span class="tableCell">
                                    <fieldset class="fieldSize">
                                        <legend><span class="TituloRel">Observações:</span></legend>
                                        <textarea type="text" name="comentario" class="msnBox" rows="3" style="width: 520px;"><? echo $obs; ?></textarea>
                                    </fieldset>
                                </span>
                            </span>
                        </form>
                        <?
                        // Exibe o botão de Visualização da Ordem
                        if ($_GET['acao'] == 'visualizaordem') { ?>
                            <p class="btnRelat">                                
                                <a href="<? echo $_SESSION['servidor']; ?>/relatorios/ordem/relatOrcamento.php?ordem=<? echo $ordem; ?>&codEmpresa=<?php echo $codEmpresa; ?>" target="relatorio">
                                   Visualizar O.S.
                                </a>
                            </p> <?
                        } ?>  
                    </div>
                <? // Finaliza a Verificação dos Get
                } elseif ($_GET['acao'] == "salvar") {
                    /**
                     * Verifica se o usuário possui autorização para Excluir o Orçamento
                     */
                    if ($permissaoOrcamento[1] == '0') {
                        $mess = 'Você não tem permissão para <span style="color: green">salvar</span> o Orçamento!';
                        $mensagem->erro($mess, $_SESSION['servidor']);

                        // Retorna para o Orçamento ?>
                        <p align="center"><a href="./OrdemServico.php">
                            <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                        </p> <?                                        
                    } else {
                        // Obtem os dados do fomulário
                        $idCliente  = $_POST["idCliente"];
                        $idEmpresa  = $_COOKIE['idEmpresa'];
                        
                        // Número da Ordem
                        $sqlNumOrdem = "SELECT os FROM ordem WHERE idEmpresa = '{$idEmpresa}' ORDER BY os DESC LIMIT 1";
                        $LocalizaNumOrdem = $conexao->Consulta($sqlNumOrdem);
                        $ordem = $LocalizaNumOrdem[0]['os'] + 1;
                        
                        
                        $data       = $_POST["data"];
                        // Convertendo o formato de Data para o MYSQL
                        $part = explode('/', $data);
                        $newData = "{$part[2]}-{$part[1]}-{$part[0]}"; // YYYY-MM-DD
                        // Verificando o Estado da Situação
                        if ($_POST['situacao'] == "aberta") {
                            $situacao = 'A';
                        } elseif ($_POST['situacao'] == "modificada") {
                            $situacao = "M";
                        } elseif ($_POST['situacao']  == "fechada") {
                            $situacao = "F";
                        }  
                        $problema   = utf8_decode($_POST['problema']);
                        $servico    = utf8_decode($_POST['servico']);
                        // Seleciona o material
                        for($i=0; $i<= $_POST['quantidade']; $i++)
                        {                                            
                               $material[]    = $_POST['codProd'.$i] . '~' . $_POST['codigo'.$i] . '~' . utf8_decode($_POST['material'.$i]) . '~' . $_POST['valor'.$i] . '~' . $_POST['totalmat'.$i];
                        }
                        // Convertendo o Material para String
                        $materialSTR = implode("\n", $material);
                        // Hora
                        $horaEntrada = $_POST['horaEntrada'];
                        $horaSaida   = $_POST['horaSaida'];
                        $tempoTotal  = $_POST['tempoTotal'];
                        // Valor
                        $valorInicial = $_POST['valorInicial'];
                        $valorExcedente = $_POST['valorExcedente'];
                        $desconto     = $_POST['desconto'];
                        $valorMaterial = $_POST['valorMaterial'];
                        $valorServico = $_POST['valorServico'];
                        $custoServico = $_POST['custoServico'];
                        // Observações
                        $obs          = $_POST['comentario'];
                        
                        // SQL de Gravação
                        $sql = "INSERT INTO ordem (idEmpresa, os, idCliente, data, situacao, problema, servico, material, horaEntrada, horaSaida, tempoTotal, valorInicial, valorExcedente, desconto, valorMaterial, valorServico, custoServico, obs)   " . 
                                "VALUES ('{$idEmpresa}', '{$ordem}', '{$idCliente}', '{$newData}', '{$situacao}', '{$problema}', '{$servico}', '{$materialSTR}', '{$horaEntrada}', '{$horaSaida}', '{$tempoTotal}', '{$valorInicial}', '{$valorExcedente}', '{$desconto}', '{$valorMaterial}', '{$valorServico}', '{$custoServico}', '{$obs}')";                                            
                                
                        // Salva a OS no Banco
                        $GravaOrdem = $conexao->onSaveBD($sql);
                        
                        // Confirma se a ordem foi salva
                        if ($GravaOrdem)
                            {             
                                // Verifica a numeração do Orçamento
                                $sqlConsultaOrdem = "SELECT os FROM ordem WHERE idEmpresa = '{$idEmpresa}' ORDER BY os DESC LIMIT 1";

                                // Executa a consulta criada
                                $LocalizaUltimaOrdem = $conexao->Consulta($sqlConsultaOrdem);
                                
                                // Gera o alerta de Gravação
                                $mess = 'Ordem <span style="color: blue;">'.$LocalizaUltimaOrdem[0]['os'].'</span> foi gravado com Sucesso!!!';
                                
                                // Mensagem de aviso		         
                               $mensagem->acerto($mess, $_SESSION['servidor']); 
                               ?>
                               <p align="center"><a href="./OrdemServico.php?acao=visualizaordem&ordem=<? echo $LocalizaUltimaOrdem[0]['os']; ?>">
                                       <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                               </p> <?
                            }
                    }                
                } elseif ($_GET['acao'] == "listaordem") {
                   /*****************************************
                    ****      Lista as OS Gravadas      *****
                    *****************************************/

                   // Obtem os dados a serem pesquizados
                    $idCliente = $_POST["idCliente"];
                    $nome = $_POST['nome'];

                    // Cria a Consulta ao BD com o ID do cliente
                    $sql = "SELECT * FROM ordem WHERE idCliente = '{$idCliente}' ORDER BY data";

                    // Executa a consulta criada
                    $LocalizaOrdem = $conexao->Consulta($sql); ?>

                    <!-- BARRA DE TÍTULO -->
                    <div id="barraTitulo">
                        <span class="legenda">Ordem de Serviço</span>
                    </div>
                    <div id="FormPF"> 
                        <p class="paragrafo"><? echo $nome; ?></p>
                        <table cellpading="0" cellspacing="0" align="center">                                                               
                            <thead>
                                <th>Data</th>
                                <th>Nº da OS</th>
                                <th>Situação</th>
                                <th>Visualiza</th>
                            </thead>
                            <tbody>
                            <?
                            for($i=0; $i<count($LocalizaOrdem); $i++) {
                            ?>
                                <!-- Formulário de Cadastro de OS -->
                                <tr>
                                    <?  // Acerta a Exibição da Data vinda do Banco de Dados -
                                         $data = explode('-', $LocalizaOrdem[$i]['data']);
                                         //armazena na variavel data os valores do vetor data e concatena /
                                         $data = $data[2].'/'.$data[1].'/'.$data[0]; ?>
                                    <td class="listagem"><? echo $data; ?></td>
                                    <td class="listagem"><? echo $LocalizaOrdem[$i]['os']; ?></td>
                                    <?  // Verifica a Situação da OS e exibe o Status
                                        if ($LocalizaOrdem[$i]['situacao'] == 'A') {
                                            $situacao = "Aberta"; 
                                        } elseif ($LocalizaOrdem[$i]['situacao'] == 'M') {
                                            $situacao = "Modificada";
                                        } elseif ($LocalizaOrdem[$i]['situacao'] == 'F') {
                                            $situacao = "Fechada";                                                            
                                        }
                                    ?>
                                    <td class="listagem"><? echo $situacao; ?></td>
                                    <td class="listagem"><a class="link" href="<? echo $_SESSION['servidor']; ?>/cadastros/OrdemServico.php?acao=visualizaordem&ordem=<? echo $LocalizaOrdem[$i]['os']; ?>">Exibe OS</a></td>
                                </tr> 
                        <? } ?> 
                            </tbody>
                        </table>
                        <!-- Botão Voltar -->
                        <p align="center">
                            <a href="#"><img id="btnVoltar" src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png" onClick="history.go(-1);"></a>
                        </p> 
                    </div> <?
                } elseif ($_GET['acao'] == "atualizar") {                                    
                    // Obtem os dados do fomulário
                        //$ordem    = $_POST['os'];
                        $ordem      = $_POST['ordem'];
                        $idCliente  = $_POST["idCliente"];
                        $data       = $_POST["data"];
                        // Convertendo o formato de Data para o MYSQL
                        $part = explode('/', $data);
                        $newData = "{$part[2]}-{$part[1]}-{$part[0]}"; // YYYY-MM-DD
                        // Verificando o Estado da Situação
                        if ($_POST['situacao'] == "aberta") {
                            $situacao = 'A';
                        } elseif ($_POST['situacao'] == "modificada") {
                            $situacao = "M";
                        } elseif ($_POST['situacao']  == "fechada") {
                            $situacao = "F";
                        }  
                        $problema   = utf8_decode($_POST['problema']);
                        $servico    = utf8_decode($_POST['servico']);
                        // Seleciona o material
                        for($i=0; $i<= $_POST['quantidade']; $i++)
                        {                           
                            if($_POST['codProd'.$i] != 'del')
                            {
                               $material[] = $_POST['codProd'.$i] . '~' . $_POST['codigo'.$i] . '~' . utf8_decode($_POST['material'.$i]) . '~' . $_POST['valor'.$i] . '~' . $_POST['totalmat'.$i];
                            }
                        }
                        // Convertendo o Material para String
                        $materialSTR = implode("\n", $material);
                        // Hora
                        $horaEntrada = $_POST['horaEntrada'];
                        $horaSaida   = $_POST['horaSaida'];
                        $tempoTotal  = $_POST['tempoTotal'];
                        // Valor
                        $valorInicial = $_POST['valorInicial'];
                        $valorExcedente = $_POST['valorExcedente'];
                        $desconto     = $_POST['desconto'];
                        $valorMaterial = $_POST['valorMaterial'];
                        $valorServico = $_POST['valorServico'];
                        $custoServico = $_POST['custoServico'];
                        // Observações
                        $obs          = utf8_decode($_POST['comentario']);                                        

                        // SQL de Gravação
                        $sqlAtualiza = "UPDATE ordem SET  situacao = '{$situacao}', problema = '{$problema}', servico = '{$servico}', material = '{$materialSTR}', horaEntrada = '{$horaEntrada}',  " . 
                                "                 horaSaida = '{$horaSaida}', tempoTotal = '{$tempoTotal}', valorInicial = '{$valorInicial}', valorExcedente = '{$valorExcedente}',         " .
                                "                 desconto = '{$desconto}', valorMaterial = '{$valorMaterial}', valorServico = '{$valorServico}', custoServico = '{$custoServico}', obs = '{$obs}'  " .
                                "                 WHERE os = '{$ordem}' AND idEmpresa = '{$_COOKIE['idEmpresa']}'                                                                                                                     ";
                        
                        // Salva a OS no Banco
                        $AtualizaOrdem = $conexao->onSaveBD($sqlAtualiza);

                        // Confirma se a ordem foi salva
                        if ($AtualizaOrdem)
                            {  
                                // Mensagem de aviso		         
                                $mess = 'Ordem de serviço <span style="color: blue;">'.$ordem.'</span> foi atualizada com Sucesso!!!';
                                $mensagem->acerto($mess, $_SESSION['servidor']); 
                                ?>
                                <p align="center"><a href="./OrdemServico.php?acao=visualizaordem&ordem=<? echo $ordem; ?>">
                                    <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';"></a>
                                </p> <?
                            }
                }
                ?>
           
            </div> <!-- Final div Conteúdo -->
        <!-- Rodapé do Sistema -->
	<? include ('../includes/rodape.php'); ?>
        </div> <!-- Final Div Tudo -->
    </body>
</html>
