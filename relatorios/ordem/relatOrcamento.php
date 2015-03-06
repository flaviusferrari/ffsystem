<?php
// Verifica se a Sessão foi Iniciada
include_once ("../../seguranca.php");

// Inclui a classe e efetua a conexão ao Banco de Dados
include "../../bd/conexao.class.php";
$conexao = new Conexao;          
?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <!-- Insere o título -->
        <title>FFSystem - Visualização do Orçamento</title> 
        <style type="text/css">
            .tableborder {
                border-bottom: 1px solid black;
                border-left: 1px solid black;
                border-right: 1px solid black;
                border-top: 1px solid black;
            }

            .bordaordem {
                border-left: 1px solid black;                            
                border-right: 1px solid black;
                border-top: 1px solid black;
            }

            .bordanumero {
                border-bottom: 1px solid black;
                border-left: 1px solid black;
                border-right: 1px solid black;                            
            }

            .campodescri {
                max-height: 200px; 
                min-height: 70px; 
                max-width: 555px; 
                min-width: 555px;
            }

            .campoobs {
                max-height: 250px; 
                min-height: 150px; 
                max-width: 570px; 
                min-width: 570px;
            }
            .bordacima {
                border-left: 1px solid black;                            
                border-right: 1px solid black;
                border-top: 1px solid black;
            }

            .bordabaixo {
                border-left: 1px solid black;
                border-right: 1px solid black;                            
                border-bottom: 1px solid black;
            }          
            .TituloRel {
                font-size: 10px;
                font-family: monospace; 
                font-weight: bold; 
                color: gray;
            }
            .pagamento {
                font-family: Georgia, serif;
                font-size: 14px;
            }
            .txtInfo {
                font-size: 8px;
                white-space: pre-wrap;
            }
            .txtDadosCadastrais {
                font-size: 11px;
            }            
            .campoServico {
                border-left: 1px solid black;
                border-right: 1px solid black;                            
                border-bottom: 1px solid black;
                height: 150px; 
                vertical-align: top;
            }
            .campoProblema {
                border-left: 1px solid black;
                border-right: 1px solid black;                            
                border-bottom: 1px solid black;
                height: 80px; 
                vertical-align: top;
            }
            .campoAssinatura {
                height: 150px;
                vertical-align: bottom;
            }
        </style>
        <link href="../layout/CSS/FormularioCss.css" rel="stylesheet" type="text/css" />       
    </head> 
    <body> <?php
        /**************************************
         ***  Exibe a Ordem de Serviço     ****
         **************************************/ 
        // Obtem o dado a ser Pesquizado
        if ($_GET['ordem'] != "") {
            $ordem = $_GET['ordem'];
        } else {
            $ordem = $_POST['ordem'];
        }           
        
        // Verifica o ID da Empresa
        $sqlCodEmpresa = "SELECT idEmpresa FROM empresa WHERE codEmpresa = '{$_GET['codEmpresa']}'";
        $consultaCodEmpresa = $conexao->Consulta($sqlCodEmpresa);
        $idEmpresa = $consultaCodEmpresa[0]['idEmpresa'];
        
        // Cria a Consulta ao BD com o ID do cliente
        $sqlOrdem = "SELECT * FROM ordem WHERE os = '{$ordem}'";

        // Executa a consulta criada
        $LocalizaOrdem = $conexao->Consulta($sqlOrdem); 

        // Cria a Consulta ao BD com o ID do cliente
        $sqlCliente = "SELECT * FROM clientes WHERE clientes.id_cliente = '{$LocalizaOrdem[0]['idCliente']}'";

        // Executa a consulta criada
        $LocalizaCliente = $conexao->Consulta($sqlCliente);
        
        // Verifica o Tipo de Cliente
        if($LocalizaCliente[0]['tipo'] == 'PF'){
            $tipo = 'CPF';
            $tipo2 = 'RG ';
            $tipo3 = '';            
        } else {
            $tipo = 'CNPJ';
            $tipo2 = 'Insc. Estadual';
            $tipo3 = 'Insc. Municipal: ';
        }    
        
        // Verifica se o cliente é PJ ou PF
        if($LocalizaCliente[0]['tipo'] == 'PF'){
            // Localiza o CPF do Cliente
            $sqlDocumento = "SELECT cpf FROM clientespf WHERE idClientes = '{$LocalizaCliente[0]['id_cliente']}'";
        } else {
            // Localiza o CNPJ do cliente
            $sqlDocumento = "SELECT * FROM clientespj WHERE idClientes = '{$LocalizaCliente[0]['id_cliente']}'";
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
            $insest = $LocalizaCNPJ[0]['ins_est'];
            $insmun = $LocalizaCNPJ[0]['ins_mun'];
        }
        
        $numordem    = $LocalizaOrdem[0]['os'];        
        // Acerta a Exibição da Data vinda do Banco de Dados
        $dataTemp    = explode('-', $LocalizaOrdem[0]['data']);
        //armazena na variavel data os valores do vetor data e concatena /
        $data      = $dataTemp[2].'/'.$dataTemp[1].'/'.$dataTemp[0]; 
        $problema  = utf8_encode($LocalizaOrdem[0]['problema']);
        $servico   = utf8_encode($LocalizaOrdem[0]['servico']);   
        // Hora
        $horaEntrada = $LocalizaOrdem[0]['horaEntrada'];
        $horaSaida   = $LocalizaOrdem[0]['horaSaida'];
        $tempoTotal  = $LocalizaOrdem[0]['tempoTotal'];
        // Valores
        $valorInicial = $LocalizaOrdem[0]['valorInicial'];
        $valorExcedente = $LocalizaOrdem[0]['valorExcedente'];
        $desconto    = $LocalizaOrdem[0]['desconto'];
        $custoServico  = $LocalizaOrdem[0]['custoServico'];
        $valorMaterial = $LocalizaOrdem[0]['valorMaterial'];
        
        /****** Forma de Pagamento ******/
        // Acerta a Exibição da Forma de Pagamento vinda do Banco de Dados
//        $pagamento   = explode('~', $LocalizaOrdem[0]['fpagamento']);
//        // Verifica o tipo de pagamento
//        switch ($pagamento[0]) {
//            case 'avista':
//                $tipoPagamento = 'A vista';
//                break;
//            case 'depconta':
//                $tipoPagamento = 'Depósito em Conta';
//                break;
//            case 'bolbanc':
//                $tipoPagamento = 'Boleto Bancário';
//                break;
//            case 'deposito_e_boleto':
//                $tipoPagamento = 'Depósito em Conta + Boleto Bancário';
//                break;
//        }
//        // Verifica se possui Nota Fiscal
//        if ($LocalizaOrdem[0]['nota'] == 'S') {
//            $tipoPagamento .= ' com Nota Fiscal';
//        }
//        // Verifica as prestações
//        $prestacoes  = explode('-', $pagamento[1]);
//
//        // PRESTAÇÕES
//        for ($i=0;$i<count($prestacoes);$i++)
//        {
//            //$prestacoes .=  $_POST['prestacoes'][$i] . '-';
//            switch ($prestacoes[$i]) {
//                case 'A vista':
//                    $NPrestacoes .= 'A vista';
//                    break;
//                case '15dd':
//                    $NPrestacoes .= '15dd ';
//                    break;
//                case '20dd':
//                    $NPrestacoes .= '20dd ';
//                    break;
//                case '30dd':
//                    $NPrestacoes .= '30dd ';
//                    break;
//                case '45dd':
//                    $NPrestacoes .= '45dd ';
//                    break;
//                case '60dd':
//                    $NPrestacoes .= '60dd ';
//                    break;
//                case '90dd':
//                    $NPrestacoes .= '90dd ';
//                    break;
//            }
//        } 
//        $ventrada = $pagamento[2];
//        $vpresta  = $pagamento[3];
//        
//        // Formula a Frase
//        $fpagamento = $tipoPagamento;
//        if ($ventrada != '0') {
//            $fpagamento .= ' com Entrada de R$ '. $ventrada;
//        }
//        if ($vpresta != '0') {
//            $fpagamento .= '<br>';
//            $fpagamento .= 'Em Prestações de ' . $NPrestacoes;
//            $fpagamento .= '<br>';
//            $fpagamento .= 'No Valor de R$ ' . $vpresta;
//        } else {
//            if ($NPrestacoes != '') {
//                $fpagamento .= '<br>';
//                $fpagamento .= 'Para: ' . $NPrestacoes;
//            }
//        }      
//        $end_entrega = utf8_encode($LocalizaOrdem[0]['end_entrega']);        
        ?>
        <!-- Formulário de Cadastro de OS -->        
        <table border="0" cellpading="0" cellspacing="0" align="center"  width="630px">
            <tr>
                <td width="70" colspan="3" rowspan="2" align="center" style="border-top: 1px solid #000; border-left: 1px solid #000;"><img src="<?php echo $_SESSION['servidor'] ?>/layout/logo.png"></td>
                <td width="70" colspan="5" align="right" style="border-top: 1px solid #000; border-right: 1px solid #000;">Ordem de Serviço: <span style="font-size: 18px; color: red;"><?php echo $numordem; ?></span>&nbsp;&nbsp;&nbsp;</td>
               
            </tr>
            <tr>
                <td colspan="5" align="center" style="border-right: 1px solid #000;"><span style="font-size: 10px; font-weight: bold;">Telefone: (21) 3238-1828 / 9717-7913</span></td>                
            </tr>
            <tr>
                <td colspan="3" align="center" style="border-left: 1px solid #000;"><span class="TituloRel">E-mail:</span><span style="font-size: 10px; font-weight: bold;"> suporte@ffctechnologies.com.br</span></td>
                <td>&nbsp;</td>  
                <td align="center" colspan="3"><span style="color: #CC0000;">www.ffctechnologies.com.br</span></td>
                <td style="border-right: 1px solid #000;">&nbsp;</td>                
            </tr>            
            <!-- Nome e Endereço do Cliente -->
            <tr>                                                        
                <td colspan="6" rowspan="2" class="tableborder">
                    <table border="0" width="100%">
                        <tr><td colspan="4"><?php echo $nome; ?></td></tr>
                        <tr>
                            <td colspan="2" class="txtDadosCadastrais" ><?php echo $endereco; ?>, <?php echo $numero; ?> - <?php echo $complemento; ?>
                                <br><?php echo $bairro; ?> &nbsp;-&nbsp; <?php echo $cidade; ?> &nbsp;-&nbsp; <?php echo $uf; ?></td>
                        </tr>                        
                    </table>
                </td>          
                <!-- Número da Ordem de Serviço -->
                <td width="70" colspan="2" valign="top" class="bordacima"><span class="TituloRel">Data:&nbsp;</span></td>                                                        
            </tr>   
            <tr>
                <td colspan="2" align="center" class="bordabaixo"></span><?php echo $data; ?>&nbsp;</td>
            </tr>                                            
            <!-- PROBLEMA -->
            <tr>
                <td colspan="8" class="bordacima"><span class="TituloRel">Problema informado:</span></td>
            </tr>
            <tr>
                <td colspan="8" class="campoProblema"><?php echo nl2br($problema); ?>&nbsp;</td>          
            </tr>
            <!-- SERVIÇO EXECUTADO -->
            <tr>
                <td colspan="8" class="bordacima"><span class="TituloRel">Serviço Executado:</span></td>
            </tr>
            <tr>
                <td colspan="8" class="campoServico"><?php echo $servico; ?>&nbsp;</td>          
            </tr> <?php
            if($LocalizaOrdem[0]['material'] != '~~~') { ?>
                <!-- Quantidade, Material e Custo -->
                <tr>
                    <td colspan="8" class="bordacima"><span class="TituloRel">Material Utilizado:</span></td> 
                </tr>
                <tr>                                                        
                <td colspan="8" class="tableborder" valign="top">                    
                    <table border="0" cellspacing="0" id="tblSample" width="100%">
                        <thead>                                
                            <tr>
                                <th class="tableborder" style="background-color: #d0d0d0;">Quant</th>
                                <th width="300" class="tableborder" style="background-color: #d0d0d0;">Produto</th>
                                <th class="tableborder" style="background-color: #d0d0d0;">Valor Unitário</th>
                                <th colspan="2" class="tableborder" style="background-color: #d0d0d0;">Valor Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
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
                                    <td class="bordanumero" align="center">
                                        <?php echo $material[$i][0]; ?>
                                    </td>
                                    <td class="bordanumero">
                                        <?php echo utf8_encode($material[$i][1]); ?>
                                    </td>
                                    <td class="bordanumero" align="center">
                                        <?php echo $material[$i][2]; ?>
                                    </td>
                                    <td class="bordanumero" align="center">
                                        <?php echo $material[$i][3]; ?>
                                    </td>                                    
                                </tr> <?php
                                $i++;
                            } 
                              ?>
                        </tbody>
                    </table>                          
                </td>
                </tr> <?php
            } ?>            
            <!-- TEMPO -->
            <tr>
                <td colspan="3" class="bordacima"><span class="TituloRel">Hora Entrada:</span></td>
                <td colspan="3" class="bordacima"><span class="TituloRel">Hora Saída:</span></td>
                <td colspan="2" class="bordacima"><span class="TituloRel">Tempo Total:</span></td>                
            </tr>
            <tr>
                <td colspan="3" class="bordabaixo"><?php echo $horaEntrada; ?>&nbsp;</td>
                <td colspan="3" class="bordabaixo"><?php echo $horaSaida; ?>&nbsp;</td>
                <td colspan="2" class="bordabaixo"><?php echo $tempoTotal; ?>&nbsp;</td>                
            </tr>
            <!-- VALORES -->
            <tr>
                <td colspan="3" class="bordacima"><span class="TituloRel">Valor Inicial:</span></td>
                <td colspan="3" class="bordacima"><span class="TituloRel">Valor Excedente:</span></td>
                <td colspan="2" class="bordacima"><span class="TituloRel">Desconto:</span></td>                
                                
            </tr>
            <tr>
                <td colspan="3" class="bordabaixo">R$ <?php echo $valorInicial; ?></td>
                <td colspan="3" class="bordabaixo">R$ <?php echo $valorExcedente; ?>&nbsp;</td>
                <td colspan="2" class="bordabaixo">R$ <?php echo $desconto; ?>&nbsp;</td>     
            </tr>            
            <!-- CUSTO DO SERVIÇO -->
            <tr> <?php
                // Insere o campo para exibição do Custo do material
                if($LocalizaOrdem[0]['material'] != '~~~') { ?>
                <td colspan="5" class="bordacima"><span class="TituloRel">Valor do Material:</span></td>
                    <?php
                } else { ?>
                    <td colspan="5" class="bordacima">&nbsp;</td> <?php
                } ?>                
                <td colspan="3" class="bordacima"><span class="TituloRel">Custo do Serviço:</span></td>
            </tr>
            <tr> <?php
                // Insere o campo para exibição do Custo do material
                if($LocalizaOrdem[0]['material'] != '~~~') { ?>
                    <td colspan="5" class="bordabaixo"><?php echo $valorMaterial; ?></td> <?php
                } else { ?>
                    <td colspan="5" class="bordabaixo">&nbsp;</td>
                     <?php
                } ?>                
                <td colspan="3" class="bordabaixo">R$ <?php echo $custoServico; ?></td>
            </tr>                       
            <tr>
                <td colspan="8" class="campoAssinatura bordabaixo">
                    <p align="center">____________________________________________________________<br>
                    assinatura do cliente</p>
                </td>
            </tr>
            <!-- GARANTIA -->                                  
            <tr>
                <td colspan="8" class="bordabaixo" align="center"><span style="font-family: monospace; font-size: 10px; font-weight: bold;">Garantia de 90 dias sobre o serviço executado</span></td>
            </tr> 
            <!-- Informações adicionais do Orçamento -->
            <tr><td colspan="8" class="txtInfo">OBS: a garantia não cobre problemas causados por vírus, curtos provocados pela rede elétrica, falha de usuário ou troca/defeito em outras peças que não as descriminadas acima.</td></tr>
        </table>
    </body>   
</html>