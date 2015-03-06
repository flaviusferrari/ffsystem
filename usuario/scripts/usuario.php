<?php

// INCLUDES
include "../../bd/conexao.class.php";

// Cria a conexão como Banco de Dados		
$conexao = new Conexao;

/* VARIÁVEL PARA VALIDAR O FORMULÁRIO */
$valida = true;

if($_POST['acao'] == 'atualiza') {
    /* VERIFICA SE O CAMPO NOME PARA EXIBIÇÃO FOI PREENCHIDO */
    if ($_POST['nomeUsuario'] == '') {
        $retorno .= '<span class="txtERRO">Campo Nome para Exibição não pode ficar em Branco!</span><br>';
        $valida = false;
    }

    /* VERIFICA SE O CAMPO E-MAIL FOI PREENCHIDO */
    if ($_POST['mailUsuario'] == '') {
        $retorno .= '<span class="txtERRO">Campo E-mail não pode ficar em Branco!</span><br>';
        $valida = false;
    }

    /* VERIFICA SE O CAMPO PERGUNTA DO USUÁRIO FOI PREENCHIDO */
    if ($_POST['perguntaUsuario'] == '') {
        $retorno .= '<span class="txtERRO">Campo Pergunta Secreta não pode ficar em Branco!</span><br>';
        $valida = false;
    }

    /* VERIFICA SE O CAMPO REFERÊNCIA FOI PREENCHIDO */
    if ($_POST['respostaUsuario'] == '') {
        $retorno .= '<span class="txtERRO">Campo Resposta Secreta não pode ficar em Branco!</span><br>';
        $valida = false;
    }
    
    /* Efetua a gravação dos dados */
    if($valida)
    {
        $pergunta = utf8_decode($_POST['perguntaUsuario']);
        $resposta = utf8_decode($_POST['respostaUsuario']);
        
        // Sql de gravação dos dados
        $sqlAtualizaDados = "UPDATE usuarios SET Nome = '{$_POST['nomeUsuario']}', 
                                                 Email = '{$_POST['mailUsuario']}',
                                                 Pergunta = '{$pergunta}',
                                                 Resposta = '{$resposta}'

                            WHERE ID = '{$_POST['idUsuario']}'";
        $AtualizaDados = $conexao->onSaveBD($sqlAtualizaDados);

        if ($AtualizaDados)
        {
            $retorno = '<span class="txtOK">Dados alterados com Sucesso!!</span>';
        } else {
            $retorno = '<span class="txtERRO">Problema ao atualizar os Dados!</span>';
        }
    }
    
    
} elseif ($_POST['acao'] == 'mudasenha') {
    // Busca a senha atual
    $sqlSenhaAtual = "SELECT senha FROM usuarios WHERE ID = '{$_POST['idUsuario']}'";
    $senhaAtual = $conexao->Consulta($sqlSenhaAtual);   
    
    
    /* Verifica se todos os campos foram preenchidos */
    if ($_POST['senhaAtual'] == '' OR $_POST['senhaNova'] == '' OR $_POST['repeteSenha']  == '') {
        $retorno = '<span class="txtERRO">Todos os campos devem ser preenchidos!</span><br>';
        $valida = false;
    } 
    // Verifica se a senha Atual é igual a senha Nova 
    elseif ($_POST['senhaAtual'] === $_POST['senhaNova']) {
        $retorno = '<span class="txtERRO">Senha nova não pode ser igual a atual!</span>';
        $valida = false;
    } 
    // Verifica se as senhas novas são iguais 
    elseif (strcmp($_POST['senhaNova'], $_POST['repeteSenha']) != 0) {
        $retorno = '<span class="txtERRO">Campos Senha Nova e Repete Senha diferentes!!!</span>';  
        $valida = false;
    } 
    // Verifica se a senha digitada foi mesmo a atual
    elseif (md5($_POST['senhaAtual']) != $senhaAtual[0]['senha']) {
        $retorno = '<span class="txtERRO">Não foi digitada a senha Atual correta!!</span>';
        $valida = false;
    }
    // Valida a troca da senha
    else {
        $valida = true;
    }
       
    
    /* Efetua a gravação da Senha nova */
    if ($valida)
    {
        // criptografa a senha
        $senhaNova = md5($_POST['senhaNova']);        
             
        // Sql de gravação de senha
        $sqlAtualizaSenha = "UPDATE usuarios SET Senha = '{$senhaNova}' WHERE ID = '{$_POST['idUsuario']}'";
        $AtualizaSenha = $conexao->onSaveBD($sqlAtualizaSenha);

        if ($AtualizaSenha)
        {
            $retorno = '<span class="txtOK">Senha alterada com Sucesso!!</span>';
        } else {
            $retorno = '<span class="txtERRO">Problema ao atualizar a senha!</span>';
        }
       
        
    }
}





/* IMPRIME RETORNO */
echo $retorno;
?>
