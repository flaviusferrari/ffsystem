<?
//Inicio a sessão
session_name("loginPainel"); 
session_start();

//COMPROVA QUE O USUARIO ESTA AUTENTICADO
if (isset($_SESSION['login']) and isset($_SESSION['senha']))
{
    //calculamos o tempo transcorrido
    $dataSalva = $_SESSION["ultimoAcesso"];
    $agora = date("Y-n-j H:i:s");
    $tempo_transcorrido = (strtotime($agora)-strtotime($dataSalva));
    
    // Armazena os dados do servidor
    $servidor = $_SESSION['servidor'];

    //comparamos o tempo transcorrido
     if($tempo_transcorrido >= 6000) {
     //se passaram 10 minutos ou mais
      session_destroy(); // destruo a sessão
      header("Location: {$servidor}/cpanel/index.php"); //envio ao usuário à página de autenticação
      //senão, atualizo a data da sessão
     }else {
     $_SESSION["ultimoAcesso"] = $agora;
     }    
} else {
     //se não existe, envio à página de autenticação
    header("Location: /ffsystem/cpanel/index.php");
}
?> 
