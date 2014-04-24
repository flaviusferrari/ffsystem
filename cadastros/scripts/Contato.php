<?php 
    $cod  = $_POST['cod'];
    $acao = $_POST['acao'];
    
    // Dados do Contato
    $idContato = $_POST['idContato'];
    $idCliente = $_POST['idCliente'];
    $contato   = utf8_decode($_POST['contato']);
    $setor     = utf8_decode($_POST['setor']);
    $telefone  = $_POST['telefone'];
    $ramal     = $_POST['ramal'];
    $celular   = $_POST['celular'];
    $email     = $_POST['email'];

    // INCLUDES
    include "../../bd/conexao.class.php"; 		
    $conexao = new Conexao;
    
    if($acao == 'exibe') {
        // Cria a Consulta ao BD com o ID do cliente
        $sqlProduto = "SELECT * FROM contatos WHERE idContato = '{$cod}'";

        // Executa a consulta criada
        $LocalizaProduto = $conexao->Consulta($sqlProduto); 

        // Envia os dados para o Sistema
        echo utf8_encode($LocalizaProduto[0]['contato']) ."~". $LocalizaProduto[0]['email'] . '~' . utf8_encode($LocalizaProduto[0]['setor']
                         . "~". $LocalizaProduto[0]['IdContato'] . '~' . $LocalizaProduto[0]['telefone'] . '~' . $LocalizaProduto[0]['ramal'] 
                         . '~' . $LocalizaProduto[0]['celular']);
        
    } elseif ($acao == 'atualiza') {
        // Cria a Consulta para Atualização do Contato
        $sqlAtualizaContato = "UPDATE contatos SET contato  = '{$contato}',
                                                   setor    = '{$setor}',
                                                   telefone = '{$telefone}',
                                                   ramal    = '{$ramal}',
                                                   celular  = '{$celular}',
                                                   email    = '{$email}'
                               WHERE IdContato = '{$idContato}'";
                               
       // Executa a consulta criada
       $atualizaContato = $conexao->onSaveBD($sqlAtualizaContato);
       
       if($atualizaContato) {
           $retorno  = '<div class="msnResposta">';
           $retorno .= 'Contato atualizado com Sucesso!!!';         
           $retorno .= '</div>';
           $retorno .= '<br />';
           $retorno .= '<button type="button" id="btnOk" onClick="onOK()">OK</button>';
       }
       
        // Imprime o resultado da consulta
        echo $retorno;    
    } elseif ($acao == 'novo') {           
        // Faz a verificação para saber se o Contato já foi cadastrado
        $sqlConsultaContato = "SELECT idContato FROM contatos WHERE contato='{$contato}' AND email='{$email}'";

        $ConsultaContato = $conexao->ConsultaDado($sqlConsultaContato);
		
        // Verifica se o Contato existe
        if ($ConsultaContato > 0) { 
            $retorno = 'Contato já foi cadastrado!!!';
        } else {
            // Grava os dados do novo Contato
            $sqlDadosContato = "INSERT INTO contatos (IdCliente, contato, setor, telefone, ramal, celular, email)" .
            "  VALUES ('{$idCliente}', '{$contato}' , '{$setor}' , '{$telefone}', '{$ramal}', '{$celular}', '{$email}')";

            // Efetua a gravação
            $GravaContato = $conexao->onSaveBD($sqlDadosContato);

            if ($GravaContato) {
                $retorno  = '<div class="msnResposta">';
                $retorno .= 'Contato cadastrado com sucesso!!!';
                $retorno .= '</div>';
                $retorno .= '<br />';
                $retorno .= '<button type="button" onClick="onOK();">OK</button>';
            }    
        }
        // Imprime o resultado
        echo $retorno;
    }

    
?>