<?
// Servidor absoluto
$servidor = '/ffsystem';

// inclui o arquivo de conexão
include "./bd/conexao.class.php";

// recebe dados do Login
$login = htmlspecialchars($_POST['usuario']);
$senha = $_POST['senha'];

if ($login == "") 
{
    //se não existir lhe mando outra vez ao portal
    $retorno = 'Nome do Usuário não pode ficar em branco!!';
    
    /* IMPRIME RETORNO */
    echo $retorno;
}
elseif ($senha == '')
{
    $retorno = 'Digite a senha';
    
    echo $retorno;
} 
else 
{
    // Instancia a Classe Conexao
    $conexao = new Conexao;
    
    $senha = md5($_POST['senha']);

    // Sql de consulta ao usuário
    $sql = "SELECT * from usuarios WHERE Login = '{$login}' ";

    // Efetua a consulta ao BD
    $user = $conexao->consulta($sql);

    //vemos se o usuário e senha são válidos
    if ($user[0]['Login']== $login && $user[0]['Senha'] == $senha){
        //usuario e senha válidos

        setcookie('usuario', $login);
        setcookie('servidor', $servidor);
        setcookie('idUsuario', $user[0]['ID']);
        setcookie('nomeUsuario', $user[0]['Nome']);
        setcookie('idEmpresa', $user[0]['idEmpresa']);
        setcookie('logado', 'SI');

        return false;

    }else {

       $retorno  = 'Senha incorreta!<br>'."\n";
       $retorno .= '<span><a href="lembrar_senha.php" title="Clique para recuperar a senha">Esqueci a senha</a></span>';
       
        /* IMPRIME RETORNO */
        echo $retorno;
    }
}   


?> 
