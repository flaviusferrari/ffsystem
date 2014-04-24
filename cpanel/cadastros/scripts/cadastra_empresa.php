<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
// Inclui a classe para Conexão ao Banco de Dados
include_once "../../../bd/conexao.class.php";
$conexao = new Conexao;


if($_POST["acao"] == "CadastraEmpresa") { 
    // Recebe os dados
    $nomeEmpresa = utf8_decode($_POST['nomeEmpresa']);
    $codEmpresa = strtoupper($_POST['codEmpresa']);
    
    // Verifica se a Empresa já está cadastrado
    $sqlConsultaEmpresa = "SELECT idEmpresa FROM empresa WHERE nomeEmpresa = '{$nomeEmpresa}' OR codEmpresa = '{$codEmpresa}'";
    $consultaEmpresa = $conexao->Consulta($sqlConsultaEmpresa);
    
    if ($consultaEmpresa) {
        // Mensagem de aviso
        $retorno = '<p align="center">Empresa<br> <span style="color: red;"><b><i>' . utf8_encode($nomeEmpresa) . '</i></b></span> <br>já foi cadastrada!</p>';        
    } else {
        // Cria a consulta SQL
        $sqlGravaEmpresa = "INSERT INTO empresa (idEmpresa, nomeEmpresa, codEmpresa) VALUES ('', '{$nomeEmpresa}', '{$codEmpresa}')";

        // Efetua a Gravação no Bancon de Dados
        $GravaEmpresa = $conexao->onSaveBD($sqlGravaEmpresa);	

        // Verifica se foi efetuada a gravação no Banco de Dados
        if ($GravaEmpresa) { 
            // Mensagem de aviso	
            $retorno = '<p align="center">Empresa<br> <span style="color: blue;"><b><i>' . utf8_encode($nomeEmpresa) . '</i></b></span> <br>cadastrada com sucesso!</p>';                
        }
    } // Finaliza verificação do Setor
    
//    $retorno = $nomeEmpresa;
} else {
    $retorno = 'Erro ao cadastrar Empresa';
}

// Retorna o conteúdo a ser exibido
echo $retorno;
?>