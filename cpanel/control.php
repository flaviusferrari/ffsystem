<?
// Servidor absoluto
$servidor = '/ffsystem';

// inclui o arquivo de conexão
include "../bd/conexao.class.php";

// recebe dados do Login
$login = htmlspecialchars($_POST['login']);
$senha = md5($_POST['senha']);

// Instancia a Classe Conexao
$conexao = new Conexao;

// Sql de consulta ao usuário
$sql = "SELECT * from usuarios WHERE Login = '{$login}' ";

// Efetua a consulta ao BD
$user = $conexao->consulta($sql);

////Verifica se o usuário é o administrador
if ($user[0]['Login']=="admin" && $user[0]['Senha'] == $senha){
    //usuario e senha válidos

    //atribui um nome à sessão para poder salvar diferentes dados     
    session_name("loginPainel");

    //defino uma sessão e salvo dados
    session_start();
    
    $_SESSION["autenticado"]= "SI";
    
    // Grava dados do Usuário
    $_SESSION['login']     = $user[0]['Login'];
    $_SESSION['senha']     = $user[0]['Senha'];    
    
    // Grava o servidor geral
    $_SESSION['servidor'] = $servidor;    
    
    //defino a data e hora de inicio de sessão em formato aaaa-mm-dd hh:mm:ss 
    $_SESSION["ultimoAcesso"]= date("Y-n-j H:i:s");

    header ("Location: $servidor/cpanel/cpanel.php");

}else {

    //se não existir lhe mando outra vez ao portal
    header("Location: $servidor/cpanel/index.php?errousuario=si");
}
?> 
