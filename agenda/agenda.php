<?php
/*
 *  Desenvolvimento: FFC Technologies
 *  Responsável: Flavius Ferrari
 * 
 *  Tempo total de Desenvolvimento: 268min
 * 
 */

// Verifica se a Sessão foi Iniciada
include_once "../seguranca.php";

// CONEXÃO
include_once '../bd/conexao.class.php';
$conexao = new Conexao;
?>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>FFSystem - Sistema de Gestão de Empresas</title>
        
        <!-- Importa os arquivos CSS -->
        <link href="../css/cssGeral.css" rel="stylesheet" type="text/css" />                       
        <link href="../css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />        
        <link href="estilo.css" rel="stylesheet" type="text/css" />
        
        <script type="text/javascript" src="../scripts/jquery.js"></script>
        <script type="text/javascript" src="../scripts/maskedinput.js"></script>
        <script type="text/javascript" src="agenda.js"></script>
    </head>

<body>
    <div id="tudo">
        <!-- CABEÇÁLHO DO SISTEMA -->
        <? include ('../includes/cabecalho.php'); ?>
        
        <!-- Menu do Sistema -->
	<? include ("../includes/menu.inc.php");	?>

	<!-- CONTEÚDO DO SISTEMA -->
        <div id="conteudo"> 
            <?php
            // Acessa os dados do Dia e Mês
            if ($_GET['ano'] == ''){
                $ano = date("Y");
            } else {
                $ano = $_GET['ano'];
            }
            if ($_GET['mes'] == ''){
                $mes = date("m");
            } else {
                $mes = $_GET['mes'];
            }
            
            $cont = 0;
            $dia = date("d");
            $dias = array();
        
            $totalDias = date("t");
            $primeiroDia = date("D", mktime(0, 0, 0, $mes, 1, $ano));

            for($d = 0; $d < $totalDias; $d++)$dias[$d] = array_push($dias, $d+1);
                    switch($primeiroDia){
                            case "Sun":
                                $pos = 0;
                            break;

                            case "Mon":
                                $pos = 1;
                            break;

                            case "Tue":
                                $pos = 2;
                            break;

                            case "Wed":
                                $pos = 3;
                            break;

                            case "Thu":
                                $pos = 4;
                            break;

                            case "Fri":
                                $pos = 5;
                            break;

                            case "Sat":
                                $pos = 6;
                            break;
            }

            switch($mes){
                    case 1:
                        $mes2 = "Janeiro";
                    break;

                    case 2:
                        $mes2 = "Fevereiro";
                    break;

                    case 3:
                        $mes2 = "Março";
                    break;

                    case 4:
                        $mes2 = "Abril";
                    break;

                    case 5:
                        $mes2 = "Maio";
                    break;

                    case 6:
                        $mes2 = "Junho";
                    break;

                    case 7:
                        $mes2 = "Julho";
                    break;

                    case 8:
                        $mes2 = "Agosto";
                    break;

                    case 9:
                        $mes2 = "Setembro";
                    break;

                    case 10:
                        $mes2 = "Outubro";
                    break;

                    case 11:
                        $mes2 = "Novembro";
                    break;

                    case 12:
                        $mes2 = "Dezembro";
                    break;
            }

            $mesanterior = 1;
            $anoapresentado = $ano;
            $mesproximo = 1;
            $anoapresentadoproximo = $ano;
            if($mes==1){
                $mesanterior=12;
                $anoapresentado=$ano - 1;                
            }else{
                $mesanterior = $mes-1;                
            }
            
            if($mes==12){
                $mesproximo=1;
                $anoapresentadoproximo=$ano + 1;                
            }else{
                $mesproximo = $mes+1;                
            } ?>

            <table cellpading="0" cellspacing="0" border="0" class="tabelamesagenda" style="width:90%;">
                <thead> 
                    <tr>
                        <!-- Botão Mês Anterior -->
                        <td class="btn-controlemes" onclick="agendamudames('<?php echo $mesanterior; ?>','<?php echo $anoapresentado; ?>');">Mês Anterior</td>
                        <!-- Mês Atual -->
                        <td colspan="5"><?php echo $mes2; ?> de <?php echo $ano; ?></td> 
                        <!-- Próximo Mês -->
                        <td class="btn-controlemes" onclick="agendamudames('<?php echo $mesproximo; ?>','<? echo $anoapresentadoproximo; ?>');">Mês Posterior</td>
                    </tr>
                    <tr><td>Domingo</td><td>Segunda</td><td>Terça</td><td>Quarta</td><td>Quinta</td><td>Sexta</td><td>Sábado</td></tr>
                </thead>
            <tbody>
            <?php
            // Exibe os dias e verifica se possui algum compromisso
            for($linha = 0; $linha < 6; $linha++){ ?>
                    </tr> <?php
                    for($coluna = 0; $coluna < 7; $coluna++){
                        $pos2 = $cont - $pos;

                        $data = $ano.'-'.$mes.'-'.$dias[$pos2];
                        $hoje = date("Y-m-j");
                        
                        // Executa a conexão com o Banco de Dados
                        $sqlConsultaDia = "SELECT * FROM agenda WHERE data = '{$data}' AND codEmpresa = '{$_COOKIE['idEmpresa']}'";
                        $ConsultaDia = $conexao->Consulta($sqlConsultaDia);

                        if(empty($dias[$pos2])) {
                            echo '<td class="semconteudo"></td>';
                        } else{
                            // Verifica se o dia é o atual
                            if($data == $hoje) { 
                                // Verifica se possui algo gravado no dia
                                if ($ConsultaDia)
                                { ?>
                                    <td onClick="agendadia('<?php echo $dias[$pos2]; ?>','<?php echo $mes2; ?>','<?php echo $ano; ?>');" style="border-color: black; background-color: #ccc;"><?php echo $dias[$pos2]; ?><span class="numerotexto">&nbsp;</span></td> <?php
                                } else { ?>
                                    <td onClick="agendadia('<?php echo $dias[$pos2]; ?>','<?php echo $mes2; ?>','<?php echo $ano; ?>');" style="border-color: black;"><?php echo $dias[$pos2]; ?><span class="numerotexto">&nbsp;</span></td> <?php
                                }
                            } else { 
                                // Verifica se possui algo gravado no dia
                                if ($ConsultaDia)
                                {
                                    ?>
                                <td onClick="agendadia('<?php echo $dias[$pos2]; ?>','<?php echo $mes2; ?>','<?php echo $ano; ?>');" style="background-color: #ccc;"><?php echo $dias[$pos2]; ?><span class="numerotexto">&nbsp;</span></td> <?php
                                } else {
                                    ?>
                                <td onClick="agendadia('<?php echo $dias[$pos2]; ?>','<?php echo $mes2; ?>','<?php echo $ano; ?>');"><?php echo $dias[$pos2]; ?><span class="numerotexto">&nbsp;</span></td> <?php
                                }
                            }
                        }
                        $cont++;
                    } ?>
                    </tr> <?php
            } ?>

            </tbody>
            </table>           
            
        </div> <!-- Final Conteúdo -->

        <!-- Rodapé do Sistema -->
	<? include ('../includes/rodape.php'); ?>
        
    </div> <!-- Final Div Tudo -->
    
    
    <!-- #personalize sua janela modal aqui -->
    <div id="dialog" class="window">
        <!-- Botão para fechar a janela tem class="close" -->
        <a href="#" class="close">X</a>
        <b>Agenda</b> 
        <hr>
        <div id="txtAgenda"></div>
    </div>
    <!-- Não remova o div#mask, pois ele é necessário para preencher toda a janela -->
    <div id="mask"></div>
    
    


</body>
</html>