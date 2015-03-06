<?php
//Inicio a sessão
//session_name("loginUsuario"); 
//session_start();

$logado = $_COOKIE['logado'];
$_SESSION['servidor'] = $_COOKIE['servidor'];


//COMPROVA QUE O USUARIO ESTA AUTENTICADO
if ($logado != "SI")
{
    //se não existe, envio à página de autenticação
    header("Location: index.php");
} 
?> 
