<?php 
    $cod  = $_POST['cod'];
    $acao = $_POST['acao'];
    
    // Dados do Contato
    $idCliente = $_POST['idCliente'];
    $idContato = $_POST['idContato'];
    $contato   = utf8_decode($_POST['contato']);
    $setor     = utf8_decode($_POST['setor']);
    $telefone  = $_POST['telefone'];
    $ramal     = $_POST['ramal'];
    $celular   = $_POST['celular'];
    $email     = $_POST['email'];
    $nextell   = $_POST['nextell'];
    $idNextell = $_POST['idNextell'];

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
                         . '~' . $LocalizaProduto[0]['celular'] . '~' . $LocalizaProduto[0]['nextell'] . '~' . $LocalizaProduto[0]['idNextell']);
        
    } elseif ($acao == 'atualiza') {
        // Cria a Consulta para Atualização do Contato
        $sqlAtualizaContato = "UPDATE contatos SET contato  = '{$contato}',
                                                   setor    = '{$setor}',
                                                   telefone = '{$telefone}',
                                                   ramal    = '{$ramal}',
                                                   celular  = '{$celular}',
                                                   email    = '{$email}',
                                                   nextell  = '{$nextell}',
                                                   idNextell = '{$idNextell}'
                               WHERE IdContato = '{$idContato}'";
                               
       // Executa a consulta criada
       $atualizaContato = $conexao->onSaveBD($sqlAtualizaContato);
       
       if($atualizaContato) {
           $retorno  = '<br>';
           $retorno .= 'Contato atualizado com Sucesso!!!';         
           $retorno .= '<br>';           
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
            $sqlDadosContato = "INSERT INTO contatos (idCliente, contato, setor, telefone, ramal, celular, email, nextell, idNextell)" .
            "  VALUES ('{$idCliente}', '{$contato}' , '{$setor}' , '{$telefone}', '{$ramal}', '{$celular}', '{$email}', '{$nextell}', '{$idNextell}')";

            // Efetua a gravação
            $GravaContato = $conexao->onSaveBD($sqlDadosContato);

            if ($GravaContato) {
                $retorno = 'Contato cadastrado com sucesso!!!';
            }    
        }
        
        // Imprime o resultado da consulta
        echo $retorno;
    }

    
?>