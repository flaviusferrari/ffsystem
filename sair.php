<?
//session_name("loginUsuario"); 
//session_start();
$servidor = $_COOKIE['servidor'];
//session_destroy();
setcookie('usuario');
setcookie('servidor');
setcookie('idUsuario');
setcookie('idEmpresa');


//atribui um nome à sessão para poder salvar diferentes dados     
//session_name("loginUsuario");

//defino uma sessão e salvo dados
//session_start();

//$_SESSION["autenticado"]= "SI";
setcookie('logado');
header("Location: {$servidor}/index.php");
?>



