<?php 
// Verifica se a Sessão foi Iniciada
include_once "../seguranca.php";

// Inclui a Classe de Redmensionamento de Imagem
include_once '../classes/redimagens.class.php';
include_once '../bd/conexao.class.php';
include_once '../classes/mensagens.class.php';

// Cria a conexão como Banco de Dados		
$conexao = new Conexao;
$mensagem = new mensagens();

if (!$conexao) {
    echo 'Não há conexão!!';
}
?>

<html> 
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FFSystem - Sistema de Gestão de Empresas</title>
        
    <!-- Importa do arquivo JavaScript -->
    <script  language="javascript"  SRC="../scripts/formulario.js"></script>
    <script language="javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/jquery.js"></script>
    <script type="text/javascript" src="../scripts/jquery-ui.js"></script>
    <script type="text/javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/produtos.js"></script>
    
    <!-- Importa os Arquivos CSS -->        
    <link href="<? echo $_SESSION['servidor']; ?>/css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
    <link href="<? echo $_SESSION['servidor']; ?>/css/cssGeral.css" rel="stylesheet" type="text/css" />   
    <link href="<? echo $_SESSION['servidor']; ?>/css/cssFormGeral.css" rel="stylesheet" type="text/css" />
    <link href="<? echo $_SESSION['servidor']; ?>/css/produtos.css" rel="stylesheet" type="text/css" />	
    <link type="text/css" href="../layout/CSS/smoothness/jquery-ui-1.10.3.custom.css" rel="Stylesheet" />     
</head>
<body>
    <div id="tudo">
        <!-- CABEÇÁLHO DO SISTEMA -->
        <? include ('../includes/cabecalho.php'); ?>
        
        <!-- Menu do Sistema -->
	<? include ("../includes/menu.inc.php"); ?>        
        
        <!-- Conteúdo do Sistema -->
        <div id="conteudo">
            <?php
            // Verifica se a página está transmitindo alguma informação POST
            if (!$_GET or $_GET["acao"] == "") { ?>
                <!-- BARRA DE TÍTULO -->
                <div id="barraTitulo">
                    <span class="legenda">Cadastro de Produtos</span>
                </div> 
                <!-- Menu de Botões -->
                <? include ('../includes/botoes.php'); ?>
                <div id="FormPF">                    
                    <form id="formulario" name="formulario" action="produtos.php" enctype="multipart/form-data" method="post" >                                                            
                        <!-- CÓDIGO -->
                        <label class="txtCampos">Código:</label><br> 
                        <input name="codigo" type="text" id="codigo" size="8" maxlength="15">
                        <br>
                        <!-- NOME DO PRODUTO -->
                        <label class="txtCampos">Nome do Produto:</label><br>
                        <input name="nome" type="text" id="nome" style="width: 440px;" maxlength="100">
                        <br>
                        <!-- DESCRIÇÃO -->
                        <label class="txtCampos">Descrição:</label><br>
                        <textarea class="msnBox" name="descri_produto" rows="3" style="width: 440px;"></textarea>
                        <table>
                            <tr>
                                <td width="180">
                                    <!-- VALOR -->
                                    <label class="txtCampos">Valor:</label><br> 
                                    <label class="txtCampos">R$</label> <input name="valor" type="text" id="valor" size="8">
                                </td>
                                <td width="200">
                                    <!-- QUANTIDADE INICIAL -->
                                    <label class="txtCampos">Quant. Inicial:</label><br> 
                                    <input type="text" name="quant_ini" size="5" value="0">
                                </td>
                                <td width="180">
                                    <!-- QUANTIDADE MÍNIMA -->
                                    <label class="txtCampos">Quant. Mínima:</label><br> 
                                    <input type="text" name="quant_min" size="5" value="0">
                                </td>
                            </tr>
                        </table>
                        <!-- FOTO -->
                        <label class="txtCampos">Foto:</label><br>
                        <input type="file" name="foto" size="25">
                        <br>
                        <!-- OBSERVAÇOES -->
                        <label class="txtCampos">Observações:</label><br>
                        <textarea name="comentario" rows="7" class="msnBox" style="width: 440px;"></textarea>                       
                   </form>
                </div> <?
                } elseif($_GET["acao"] == "Salvar") {
                    /* ***************************************** *
                     * **** Salva os Dados do Produto        *** *
                     * ***************************************** */                    
                    //Instância a classe
//                    $OBImagem = new OBImagem(); 
                                                            
                    // Recebe os dados do formulário                   
                    $nome       = utf8_decode($_POST['nome']); //Aqui recebemos o nome da imagem informado no formulário
                    $descricao  = utf8_decode($_POST['descri_produto']);
                    $codigo     = $_POST['codigo']; // Aqui recebemos o código da imagem
                    $valor      = $_POST['valor'];
                    $quantidate = $_POST['quant_ini'];
                    $qtMin      = $_POST['quant_min'];
                    $imagem     = $_FILES['foto']; //Aqui recebemos a imagem que foi selecionada no formulário
                    $obs        = utf8_decode($_POST['comentario']);
                    $erro       = null;
                    
                    $codEmpresa = $_COOKIE['idEmpresa'];
                    
                    // Verifica se o Código já está cadastrado
                    $sqlConsultaCodigo = "SELECT cod_produto FROM produtos WHERE cod_produto = '{$codigo}' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";
                    $consultaCodigo = $conexao->Consulta($sqlConsultaCodigo);
                    if ($consultaCodigo) { ?>
                        <div style="text-align: center;"> <? 
                        // Mensagem de aviso		         
                        $mess = 'Código <span style="color: red;"><b><i>' . $_POST['codigo'] . '</i></b></span> já foi cadastrado!!!';
                        $mensagem->aviso($mess, $_SESSION['servidor']); ?> 
                            <br><br>
                            <a href="produtos.php">
                                <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';">
                            </a> 
                        </div><?
                    } else {                     
                        //Cria a localização da imagem
                        $nome_img = $codigo.'_'.$codEmpresa.'.jpg';

                        /*
                         * Redimensiona a imagem e
                         * Envia via FTP para o servidor
                         */
                        if( $_SERVER['REQUEST_METHOD']=='POST' )  
                        {  
                            // lê o INI e retorna um array
                            $db = parse_ini_file("config_fotos.ini");

                            // lê as informações contidas no arquivo
                            $servidor = isset($db['servidor']) ? $db['servidor'] : NULL;
                            $caminho_absoluto = isset($db['caminho']) ? $db['caminho'] : NULL;
                            $user = isset($db['user']) ? $db['user'] : NULL;
                            $pass = isset($db['pass']) ? $db['pass'] : NULL;
                            
                            /*copia a imagem da pasta temporária do servidor para a pasta produtos*/                     
                            move_uploaded_file($imagem["tmp_name"], "./fotos/".$codigo.'_'.$codEmpresa.".jpg");

                            $imagem = "./fotos/".$codigo.'_'.$codEmpresa.".jpg"; // imagem que será redimensionada
                            $imagem_redimensionada = $codigo.'_'.$codEmpresa.".jpg"; //nova imagem
                            list($largura, $altura) = getimagesize($imagem);
                            $nova_largura = 300; // nova largura
                            $nova_altura = ($nova_largura * $altura) / $largura; // calcula a nova altura
                            $image_p = imagecreatetruecolor($nova_largura, $nova_altura); $image = imagecreatefromjpeg($imagem);
                            imagecopyresampled($image_p, $image, 0, 0, 0, 0, $nova_largura, $nova_altura, $largura, $altura);
                            imagejpeg($image_p, $imagem_redimensionada, 80);
                            imagedestroy($image_p);

                            $con_id = ftp_connect($servidor) or die( 'Não conectou em: '.$servidor );  
                            ftp_login( $con_id, $user, $pass );  

                            ftp_put( $con_id, $caminho_absoluto.$imagem_redimensionada, $imagem_redimensionada, FTP_BINARY );  

                            unlink($imagem_redimensionada);
                            unlink($imagem);
                        }  
                        // Cria a Consulta SQL
                        $sql = "INSERT INTO produtos (idEmpresa, cod_produto, nome_produto, descri_produto, valor, quantidade, qtMinima, foto_produto, obs_produto)" .
                               " VALUES ('{$_COOKIE['idEmpresa']}', '{$codigo}', '{$nome}', '{$descricao}', '{$valor}','{$quantidate}', '{$qtMin}', '{$nome_img}', '{$obs}')";

                        // Grava os dados no BD
                        $GravaProduto = $conexao->onSaveBD($sql);

                        // Verifica se os dados foram salvos e imprime a mensagem
                        if ($GravaProduto)
                        {
                           // Mensagem de aviso		         
                           $mess = 'Produto <span style="color: blue;">'.utf8_encode($nome).'</span> cadastrado com sucesso!!!';
                           $mensagem->acerto($mess, $_SESSION['servidor']); 
                           ?>
                           <p align="center"><a href="produtos.php">
                               <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';">
                           </a></p> <?
                        }           
                    } // Finaliza verificação do Código
                    
                } elseif ($_GET['acao'] == 'Localizar') {
                    /* *************************************** *
                     * ****  Localiza os dados do produto **** *
                     * *************************************** */
                    // Obtem os dados a serem pesquizados
                    if (!$_POST["nome"]) {
                        $nome = $_GET["nome"];
                    } else {
                        $nome = $_POST["nome"];
                    }
                   //$nome = $_POST["nome"];
                    $codigo = $_POST['codigo'];                    

                    $limite = 4; // limite de registros por pagina
                    $pag = 0; // valor padrao se nao for enviado nenhum valor via metodo GET
                    $pag_atual = $_GET["pag_atual"]; // recebe o valor enviado pelo metodo GET		

                    /* Verifica qual a página atual 
                       Caso não haja, a página atual será 0 */
                    if (!$pag_atual) {	
                        $pag_atual = $pag;
                    } else {
                        $pag_atual = $pag_atual;
                    }					
                    
                    // Consulta da quantidade de Registros encontrados
                     if ($nome != '')
                     {
                        // Cria a Consulta do Nome
                        $sqlTotalProdutos = "SELECT * FROM produtos WHERE nome_produto like'%{$nome}%' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";
                     }
                     elseif ($codigo != '')
                     {
                        // Cria a Consulta pelo Código do Produto
                        $sqlTotalProdutos = "SELECT * FROM produtos WHERE cod_produto like'%{$codigo}%' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";
                     } else {
                        // Cria a Consulta pelo Código do Produto
                        $sqlTotalProdutos = "SELECT * FROM produtos WHERE cod_produto like'%{$codigo}%' AND idEmpresa = '{$_COOKIE['idEmpresa']}'";
                     }                            

                    // sql que pega o resultado total de registro
                        $resultado2 = $conexao->ConsultaDado($sqlTotalProdutos);
                    // fim sql

                    // Verifica qual o campo que está preenchido para efetuar a consulta
                     if ($nome != '')
                     {
                        // Cria a Consulta do Nome do Produto
                        $sql = "SELECT * FROM produtos WHERE nome_produto like'{$nome}%' AND idEmpresa = '{$_COOKIE['idEmpresa']}' order by nome_produto LIMIT $pag_atual, $limite";
                     }
                     elseif ($codigo != '')
                     {
                        // Cria a Consulta do Cógigo
                        $sql = "SELECT * FROM produtos WHERE cod_produto like'%{$codigo}%' AND idEmpresa = '{$_COOKIE['idEmpresa']}' order by nome_produto LIMIT $pag_atual, $limite";
                     } else {
                        // Cria a Consulta do Nome
                        $sql = "SELECT * FROM produtos WHERE cod_produto like'%{$codigo}%' AND idEmpresa = '{$_COOKIE['idEmpresa']}' order by nome_produto LIMIT $pag_atual, $limite";
                     }                    

                     // Executa a consulta criada
                     $LocalizaProduto = $conexao->consultaBanco($sql);	?>                           
                    <!-- BARRA DE TÍTULO -->
                    <div id="barraTitulo">
                        <span class="legenda">Cadastro de Produtos</span>
                    </div>        
                    <!-- Menu de Botões -->
                    <? include ('../includes/botoes.php'); ?>
                    <div id="FormPF">  <?				

                    // inicio paginação
                    $ultima = intval($resultado2-$limite); // define o valor da ultima pagina
                    $anterior = $pag_atual-$limite; // define o valor da pagina anterior a atual

                    if ($anterior < 0) { // se anterior for menor que 0, ele exibe apenas os nomes sem link
                    echo "Primeira - Anterior - ";
                    } else { // senao ele exibe os links
                    echo " <a href=./produtos.php?acao=Localizar&pag_atual=0&nome=$nome>Primeira</a> - ";
                    echo " <a href=./produtos.php?acao=Localizar&pag_atual=$anterior&nome=$nome>Anterior</a> - ";
                    }

                    $proxima = intval($pag_atual+$limite); // define o valor da proxima pagina
                    if ($proxima > $resultado2) { // não deixa o link passar do total de registros
                    echo "Proxima - Ultima";
                    } else {
                    echo " <a href=./produtos.php?acao=Localizar&pag_atual=$proxima&nome=$nome>Proxima</a> - ";
                    echo " <a href=./produtos.php?acao=Localizar&pag_atual=$ultima&nome=$nome>Ultima</a>";
                    }

                    ?>
                    <table cellpadding="5" style="border-collapse: collapse" align="center">
                        <tr>
                    <!-- Exibe a tabela com os dados do cliente -->
                     <? // Exibe os dados da consulta
                     if ($LocalizaProduto > 0)
                     {
                        // Você define o número de Colunas desejadas
                        $colunas = 2;
                        // Criamos um verificador, para contagem
                        $i = 1;

                        // Fizemos a nossa query normal no Banco de Dados
                        // E iniciamos a exibição dos dados com o WHILE
                        while($fotos = mysql_fetch_array($LocalizaProduto)){
                        // Aqui é parte do truque, fizemos um calculo, dividindo nosso $i pelo número de colunas
                        $resto = $i%$colunas;
                        ?>                                    
                            <td align="center">
                                <div class="tblProdutos">
                                <img src="http://www.ffctechnologies.com.br/produtos_teste/<?php echo $fotos['foto_produto'];?>" height="120">
                                <br>
                                <b><? print utf8_encode($fotos['nome_produto']); ?></b>
                                <br>
                                <button class="btnExibir" type="button" value="<? print $fotos['idProduto']; ?>">Exibir</button>
                                </div>
                            </td>
                        <?
                        // Aqui vem o truque, se o $resto for igual 0, iniciamos uma nova linha de dados na tabela, fechando a anterior com o </tr>
                        if($resto == 0){
                            print "</tr>";
                            print "<tr>";
                        }
                        // Incrementamos +1 no $i ao final de cada loop do WHILE
                        $i++;    
                        }
                        // Se o $resto for diferente de 0, fecha a linha da tabela, com o </tr>
                        if($resto != 0){ ?>

                        <? } 
                     } else {
                         // Caso nenhum dado tenha sido encontrado ?>
                        <tr>
                                <td>Nenhum registro foi encontrado!!</td>
                        </tr> //<?                    
                     }// Finaliza IF ($LocalizaProduto)
                       ?>                        
                   </table>
                   <p align="center"><a href="produtos.php">
                       <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';">
                   </a></p>
                    </div><?                    
                } elseif ($_GET['acao'] == 'exibedados') {
                    // Recebe o Código do Produto
                    if (!$_POST["codigo"]) {
                        $codigo = $_GET["codigo"];
                    } else {
                        $codigo = $_POST["codigo"];
                    }
                    
                    // Cria a Consulta da base inteira
                    $sql = "SELECT * FROM produtos WHERE idProduto = '{$codigo}'";

                    // Executa a consulta criada
                    $LocalizaProduto = $conexao->Consulta($sql); 
                    
                    /****** EXIBE OS DADOS DO PRODUTO ******/ ?>  
                    <!-- BARRA DE TÍTULO -->
                    <div id="barraTitulo">
                        <span class="legenda">Cadastro de Produtos</span>
                    </div> 
                    <!-- Menu de Botões -->
                    <? include ('../includes/botoes.php'); ?>
                    <div id="FormPF"> 
                    <form id="formulario" name="formulario" action="produtos.php" enctype="multipart/form-data" method="post" > 
                        <!-- CÓDIGO -->
                        <label class="txtCampos">Código:</label><br> 
                        <input name="codigo" type="text" id="cod_exibe" size="8" maxlength="15" value="<? echo $LocalizaProduto[0]['cod_produto']; ?>">
                        <input type="hidden" name="cod" value="<? echo $LocalizaProduto[0]['idProduto']; ?>">
                        <input type="hidden" name="codigo" value="<? echo $LocalizaProduto[0]['cod_produto']; ?>">
                        <br>
                        <!-- NOME DO PRODUTO -->
                        <label class="txtCampos">Nome do Produto:</label><br>
                        <input name="nome" type="text" id="nome" style="width: 440px;" maxlength="100" value="<? echo utf8_encode($LocalizaProduto[0]['nome_produto']); ?>">
                        <br>
                        <!-- DESCRIÇÃO -->
                        <label class="txtCampos">Descrição:</label><br>
                        <textarea name="descri_produto" rows="3" class="msnBox" style="width: 440px;"><? echo utf8_encode($LocalizaProduto[0]['descri_produto']); ?></textarea>
                        <table>
                            <tr>
                                <td width="180">
                                    <!-- VALOR -->
                                    <label class="txtCampos">Valor:</label><br> 
                                    <label class="txtCampos">R$</label> <input name="valor" type="text" id="valor" size="8" value="<? echo $LocalizaProduto[0]['valor']; ?>">
                                </td>
                                <td width="200">
                                    <!-- QUANTIDADE INICIAL -->
                                    <label class="txtCampos">Quant. Inicial:</label><br> 
                                    <input type="text" name="quant_ini" size="5" value="<? echo $LocalizaProduto[0]['quantidade']; ?>">
                                </td>
                                <td width="180">
                                    <!-- QUANTIDADE MÍNIMA -->
                                    <label class="txtCampos">Quant. Mínima:</label><br> 
                                    <input type="text" name="quant_min" size="5" value="<? echo $LocalizaProduto[0]['qtMinima']; ?>">
                                </td>
                            </tr>
                        </table>
                        <!-- FOTO -->
                        <label class="txtCampos">Foto:</label><br>
                        <input type="file" name="foto" size="25">
                        <br>
                        <!-- OBSERVAÇOES -->
                        <label class="txtCampos">Observações:</label><br>
                        <textarea name="comentario" rows="7" class="msnBox" style="width: 440px;"><? echo utf8_encode($LocalizaProduto[0]['obs_produto']); ?></textarea>                    
                   </form>
                </div> <?
                } elseif ($_GET['acao'] == 'atualizar') {
                    /* ***************************************** *
                     * **** Atualiza os Dados do Produto     *** *
                     * ***************************************** */
                    // Recebe os dados do formulário  
                    $nome       = utf8_decode($_POST['nome']); //Aqui recebemos o nome da imagem informado no formulário
                    $descricao  = utf8_decode($_POST['descri_produto']);
                    $codigo     = $_POST['cod']; // Aqui recebemos o código da imagem
                    $codImagem  = $_POST['codigo'];
                    $valor      = $_POST['valor'];
                    $quantidate = $_POST['quant_ini'];
                    $qtMin      = $_POST['quant_min'];
                    $imagem     = $_FILES['foto']; //Aqui recebemos a imagem que foi selecionada no formulário
                    $obs        = utf8_decode($_POST['comentario']);
                    $erro       = null;
                    
                    $codEmpresa = $_COOKIE['idEmpresa'];

                    // Cria a Consulta SQL
                    $sql = "UPDATE produtos SET nome_produto   = '{$nome}',      ".
                           "                    descri_produto = '{$descricao}', ".
                           "                    valor          = '{$valor}',     ". 
                           "                    qtMinima       = '{$qtMin}',     ".
                           "                    obs_produto    = '{$obs}'        ".
                           "                 WHERE idProduto   = '{$codigo}'     ";

                    // Grava os dados no BD
                    $AtualizaProduto = $conexao->onSaveBD($sql);

                    if(!empty($imagem["name"]))  
                    {  
                        // lê o INI e retorna um array
                        $db = parse_ini_file("config_fotos.ini");
                        
                        // lê as informações contidas no arquivo
                        $servidor = isset($db['servidor']) ? $db['servidor'] : NULL;
                        $caminho_absoluto = isset($db['caminho']) ? $db['caminho'] : NULL;
                        $user = isset($db['user']) ? $db['user'] : NULL;
                        $pass = isset($db['pass']) ? $db['pass'] : NULL;
                        
                        /*copia a imagem da pasta temporária do servidor para a pasta produtos*/                     
                        move_uploaded_file($imagem["tmp_name"], "./fotos/".$codImagem.'_'.$codEmpresa.".jpg");

                        $imagem = "./fotos/".$codImagem.'_'.$codEmpresa.".jpg"; // imagem que será redimensionada
                        $imagem_redimensionada = $codImagem.'_'.$codEmpresa.".jpg"; //nova imagem
                        list($largura, $altura) = getimagesize($imagem);
                        $nova_largura = 300; // nova largura
                        $nova_altura = ($nova_largura * $altura) / $largura; // calcula a nova altura
                        $image_p = imagecreatetruecolor($nova_largura, $nova_altura); $image = imagecreatefromjpeg($imagem);
                        imagecopyresampled($image_p, $image, 0, 0, 0, 0, $nova_largura, $nova_altura, $largura, $altura);
                        imagejpeg($image_p, $imagem_redimensionada, 80);
                        imagedestroy($image_p);

                        $con_id = ftp_connect($servidor) or die( 'Não conectou em: '.$servidor );  
                        ftp_login( $con_id, $user, $pass );  

                        ftp_put( $con_id, $caminho_absoluto.$imagem_redimensionada, $imagem_redimensionada, FTP_BINARY );  

                        unlink($imagem_redimensionada);
                        unlink($imagem);
                    }

                    // Verifica se os dados foram salvos e imprime a mensagem
                    if ($AtualizaProduto)
                    {
                       // Mensagem de aviso		         
                       $mess = 'Produto <span style="color: blue;">'.utf8_encode($nome).'</span> atualizado com sucesso!!!';
                       $mensagem->acerto($mess, $_SESSION['servidor']); 
                       ?>
                       <p align="center"><a href="produtos.php?acao=exibedados&codigo=<? echo $codigo; ?>">
                           <img src="<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png"  onmouseout="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltar.png';" onmouseover="this.src='<? echo $_SESSION['servidor']; ?>/layout/btnVoltarActive.png';">
                       </a></p> <?
                    }                              
                }
                elseif ($_GET['acao'] == 'excluir')
                {
                    #### EXCLUIR ####
                    
                    // Recebe os dados
                    $codigoProduto = $_GET['codigoProduto'];
                    $idEmpresa     = $_COOKIE['idEmpresa']; 
                    
                    // cria a consulta
                    $sqlExcluiProduto = "DELETE FROM produtos WHERE cod_produto = '{$codigoProduto}' AND idEmpresa = '{$idEmpresa}'";
                    $ExcluiProduto = $conexao->onSaveBD($sqlExcluiProduto); ?>
                       
                    <div class="borda">
                        <!-- BARRA DE TÍTULO -->
                        <div class="titulo2">
                            <span class="legenda">Cadastro de Produtos</span>
                        </div>                    
                    <?php
                    
                    // Verifica se o produto foi excluído
                    if ($ExcluiProduto)
                    { 
                        // Exclui a imagem do produto
                        $servidor = 'ftp.ffctechnologies.com.br';  
                        $caminho_absoluto = '/www/produtos_teste/';  
                        
                        // imagem que será removida
                        $imagem = $codigoProduto.'_'.$idEmpresa.".jpg";
                        
                        // conecta ao servidor
                        $con_id = ftp_connect($servidor) or die( 'Não conectou em: '.$servidor );  
                        ftp_login( $con_id, 'ffctechnologies', 'Fla796' );  
                        
                        // exclui a imagem
                        unlink($caminho_absoluto.$imagem);
                        
                        
                        echo 'Exclusão!!!'."<br>\n";
                        echo 'Código = '.$codigoProduto."<br>\n";
                        echo 'Id Empresa = '.$idEmpresa."\n"; 
                    }
                    else
                    {
                        
                    } ?>
                       
                    
                    
                    
                    </div> <?php
                }
                ?>
            </div>
        <!-- Rodapé do Sistema -->
	<? include ('../includes/rodape.php'); ?>
    </div>
    <!-- CX de Confirmação -->
    <div id="dialog-confirm"></div>
    </body>
</html>