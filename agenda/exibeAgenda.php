<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

// Recebe os dados 
$acao = $_POST['acao'];
$codEmpresa = $_COOKIE['idEmpresa'];

// Acerta a exibição do mes
switch($_POST['mes']){
    case "Janeiro":
        $mes2 = 1;
    break;

    case "Fevereiro":
        $mes2 = 2;
    break;

    case "Março":
        $mes2 = 3;
    break;

    case "Abril":
        $mes2 = 4;
    break;

    case "Maio":
        $mes2 = 5;
    break;

    case "Junho":
        $mes2 = 6;
    break;

    case "Julho":
        $mes2 = 7;
    break;

    case "Agosto":
        $mes2 = 8;
    break;

    case "Setembro":
        $mes2 = 9;
    break;

    case "Outubro":
        $mes2 = 10;
    break;

    case "Novembro":
        $mes2 = 11;
    break;

    case "Dezembro":
        $mes2 = 12;
    break;
}


// Banco de Dados
include_once '../bd/conexao.class.php';
$conexao = new Conexao;

if($acao == 'exibedia')
{
    // Recebe os campos
    $dia  = $_POST['dia'];
    $mes  = $_POST['mes'];
    $ano  = $_POST['ano'];
    // Efetua a Busca no Banco de Dados para ver se há algo na data clicada
    // ajeita a hora
    $data = $ano.'-'.$mes2.'-'.$dia;
    $sqlConsultaData = "SELECT * FROM agenda WHERE data = '{$data}' AND codEmpresa = '{$codEmpresa}' ORDER BY hora";
    $ConsultaData = $conexao->Consulta($sqlConsultaData);

    // Insere a data que está sendo clicada
    $retorno = $dia.' de '.$mes.' de '.$ano.'<br><br>';

    if (!$ConsultaData)
    {
        $retorno .= '<label class="TituloRel">Evento</label>';
        $retorno .= '<br>';
        $retorno .= '<input id="evento" type="text" />';
        $retorno .= '<br>';
        $retorno .= '<label class="TituloRel">Hora</label>';
        $retorno .= '<br>';
        $retorno .= '<input id="horaEvento" class="tempo" type="text" />';
        $retorno .= '<br>';
        $retorno .= '<label class="TituloRel">Local</label>';
        $retorno .= '<br>';
        $retorno .= '<input id="localEvento" type="text" />';
        $retorno .= '<br>';
        $retorno .= '<label class="TituloRel">Descrição</label>';
        $retorno .= '<br>';
        $retorno .= '<textarea id="obsEvento" class="msnBox" rows="3"></textarea>';
        $retorno .= '<input type="hidden" id="dataEvento" value="'.$data.'">';
        $retorno .= '<br>';
        $retorno .= '<button type="button" id="btnGravaEvento" onClick="gravaEvento();">Gravar</button>';       
    } else {
        if(count($ConsultaData) > 1) 
        {
            for($i=0; $i < count($ConsultaData); $i++)
            {
                $retorno .= '<div class="listaAgenda" onClick="mostraDia(\''.$dia.'\',\''.$mes2.'\',\''.$ano.'\',\''.$ConsultaData[$i]['hora'].'\');">';
                $retorno .= '<span>'.$ConsultaData[$i]['hora'].'</span>';
                $retorno .= '<br />';
                $retorno .= $ConsultaData[$i]['evento'];
                $retorno .= '</div>';
                $retorno .= '<br />';
            }
            
        } else {
            $retorno .= '<label class="TituloRel">Evento</label>';
            $retorno .= '<br>';
            $retorno .= '<input id="evento" type="text" value="'.$ConsultaData[0]['evento'].'" />';
            $retorno .= '<input id="idEvento" type="hidden" value="'.$ConsultaData[0]['id'].'" />';
            $retorno .= '<br>';
            $retorno .= '<label class="TituloRel">Hora</label>';
            $retorno .= '<br>';
            $retorno .= '<input id="horaEvento" type="text" value="'.$ConsultaData[0]['hora'].'"/>';
            $retorno .= '<br>';
            $retorno .= '<label class="TituloRel">Local</label>';
            $retorno .= '<br>';
            $retorno .= '<input id="localEvento" type="text" value="'.$ConsultaData[0]['local'].'" />';
            $retorno .= '<br>';
            $retorno .= '<label class="TituloRel">Descrição</label>';
            $retorno .= '<br>';
            $retorno .= '<textarea id="obsEvento" class="msnBox" rows="3">'.$ConsultaData[0]['conteudo'].'</textarea>';
            $retorno .= '<input type="hidden" id="dataEvento" value="'.$data.'">';
            $retorno .= '<br>';
            $retorno .= '<button type="button" id="btnAtualizaEvento" onClick="atualizaEvento()">Atualiza</button>';
            $retorno .= '<button type="button" id="btnNovoEvento" onClick="novoEvento(\''.$data.'\');">Novo Evento</button>';
        }
        
    }
}
elseif ($acao == 'gravaEvento') 
{
    // Recebe os campos
    $evento      = $_POST['evento'];
    $horaEvento  = $_POST['horaEvento'];
    $localEvento = $_POST['localEvento'];
    $obsEvento   = $_POST['obsEvento'];
    $dataEvento  = $_POST['dataEvento'];
    
    // Efetua a gravação do Evento
    $sqlGravaEvento = "INSERT INTO agenda (codEmpresa, evento, data, hora, conteudo,local)
                       VALUES ('{$codEmpresa}', '{$evento}', '{$dataEvento}', '{$horaEvento}', '{$obsEvento}', '{$localEvento}')";
    $GravaEvento = $conexao->onSaveBD($sqlGravaEvento);
    
    if($GravaEvento)
    {
        $retorno .= '<div class="listaAgenda">';
        $retorno .= 'Evento gravado com sucesso!!';        
        $retorno .= '</div>';
    } else {
        $retorno .= 'Erro ao gravar Evento!';
    }
    
    
}
elseif ($acao == 'novoEvento') {
    $retorno .= '<label class="TituloRel">Evento</label>';
    $retorno .= '<br>';
    $retorno .= '<input id="evento" type="text" />';
    $retorno .= '<br>';
    $retorno .= '<label class="TituloRel">Hora</label>';
    $retorno .= '<br>';
    $retorno .= '<input id="horaEvento" type="text" />';
    $retorno .= '<br>';
    $retorno .= '<label class="TituloRel">Local</label>';
    $retorno .= '<br>';
    $retorno .= '<input id="localEvento" type="text" />';
    $retorno .= '<br>';
    $retorno .= '<label class="TituloRel">Descrição</label>';
    $retorno .= '<br>';
    $retorno .= '<textarea id="obsEvento" class="msnBox" rows="3"></textarea>';
    $retorno .= '<input type="hidden" id="dataEvento" value="'.$_POST['dataEvento'].'">';
    $retorno .= '<br>';
    $retorno .= '<button type="button" id="btnGravaEvento" onClick="gravaEvento();">Gravar</button>';   
}
elseif ($acao == 'mostraDia') {
    // Recebe os campos
    $dia  = $_POST['dia'];
    $mes  = $_POST['mes'];
    $ano  = $_POST['ano'];
    $hora = $_POST['hora'];
    // Efetua a Busca no Banco de Dados para ver se há algo na data clicada
    // ajeita a hora
    $data = $ano.'-'.$mes.'-'.$dia;
    $sqlConsultaData = "SELECT * FROM agenda WHERE data = '{$data}' AND hora = '{$hora}' AND codEmpresa='{$codEmpresa}'";
    $ConsultaData = $conexao->Consulta($sqlConsultaData);
    
    // Acerta a exibição do mes
    switch($_POST['mes']){
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

    // Insere a data que está sendo clicada
    $retorno = $dia.' de '.$mes2.' de '.$ano.'<br><br>';
    
    $retorno .= '<label class="TituloRel">Evento</label>';
    $retorno .= '<br>';
    $retorno .= '<input id="evento" type="text" value="'.$ConsultaData[0]['evento'].'" />';
    $retorno .= '<input id="idEvento" type="hidden" value="'.$ConsultaData[0]['id'].'" />';
    $retorno .= '<br>';
    $retorno .= '<label class="TituloRel">Hora</label>';
    $retorno .= '<br>';
    $retorno .= '<input id="horaEvento" type="text" value="'.$ConsultaData[0]['hora'].'"/>';
    $retorno .= '<br>';
    $retorno .= '<label class="TituloRel">Local</label>';
    $retorno .= '<br>';
    $retorno .= '<input id="localEvento" type="text" value="'.$ConsultaData[0]['local'].'" />';
    $retorno .= '<br>';
    $retorno .= '<label class="TituloRel">Descrição</label>';
    $retorno .= '<br>';
    $retorno .= '<textarea id="obsEvento" class="msnBox" rows="3">'.$ConsultaData[0]['conteudo'].'</textarea>';
    $retorno .= '<input type="hidden" id="dataEvento" value="'.$data.'">';
    $retorno .= '<br>';
    $retorno .= '<button type="button" id="btnAtualizaEvento" onClick="atualizaEvento();">Atualiza</button>';
    $retorno .= '<button type="button" id="btnNovoEvento" onClick="novoEvento(\''.$data.'\');">Novo Evento</button>';
}
elseif ($acao == 'atualizaEvento') {
    // Recebe os campos
    $evento      = $_POST['evento'];
    $idEvento    = $_POST['idEvento'];
    $horaEvento  = $_POST['horaEvento'];
    $localEvento = $_POST['localEvento'];
    $obsEvento   = $_POST['obsEvento'];
    $dataEvento  = $_POST['dataEvento'];
    
    // Atualiza o dia
    $sqlAtualizaEvento = "UPDATE agenda SET evento = '{$evento}',"
    . "                                     hora   = '{$horaEvento}',"
    . "                                     conteudo = '{$obsEvento}',"
    . "                                     local = '{$localEvento}' "
    . "                               WHERE id = '{$idEvento}' AND codEmpresa='{$codEmpresa}' ";
    $atualizaEvento = $conexao->onSaveBD($sqlAtualizaEvento);
    
    if($atualizaEvento)
    {
        $retorno .= '<div class="listaAgenda">';
        $retorno .= 'Evento atualizado com sucesso!';
        $retorno .= '</div>';
    } else {
        $retorno .= '<div class="listaAgenda">';
        $retorno .= 'Erro ao Atualizar Evento!';
        $retorno .= '</div>';
    }
    
    
}



echo $retorno;
?>
