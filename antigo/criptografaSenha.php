<?php

// Inclui a classe para Conexão ao Banco de Dados
include "./bd/conexao.class.php";

// Instancia a Classe Conexao
$conexao = new Conexao;

// Sql de consulta ao usuário
$sql = "SELECT * from usuarios";

// Efetua a consulta ao BD
$user = $conexao->consulta($sql);

for ($i=0; $i<count($user); $i++) {
    // Criptografa a senha
    $senha = md5($user[$i]['Senha']);
    
    // Cria o SQL para atualizar os dados do Usuário
    $sqlUpdateUser = "UPDATE usuarios SET Senha = '{$senha}' WHERE Login = '{$user[$i]['Login']}'";

    // Atualiza o Usuário
    $AtualizaUsuario = $conexao->onSaveBD($sqlUpdateUser);
    
    echo 'Usuário ' .$user[$i]['Login']. ' Atualizado com sucesso!! <br>';
}


?>
