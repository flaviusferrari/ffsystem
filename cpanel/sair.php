<?
session_name("loginPainel"); 
session_start();
$servidor = $_SESSION['servidor'];
session_destroy();
header("Location: {$servidor}/cpanel/index.php");
?>