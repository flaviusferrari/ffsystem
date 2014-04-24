<?php
$mensagem = nl2br($_POST['mensagem']);
/***********  ENVIA O E-MAIL E IMPRIME A CONFIRMAÇÃO *************/
$assunto = '[Formulario do site] '.$_POST['assunto'];
$corpo = "
<html>
<head>
    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />
   <title>Recupera Senha</title>   
</head>
<body>
    <h1 style=\"color: #F00;\">Recuperação de Senha:</h1>
    <br>
    <p>Prezado usuário do login
    <b>Nome</b>: {$_POST['nome']}
    <br><br>    
    <b>Mensagem:</b><br>
       {$mensagem}
    </p>
</body>
</html>
";

       
       echo $corpo;
       
/*/para o envio em formato HTML
$headers = "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/html; charset=utf-8\r\n";

//endereço do remetente
$headers .= "From: {$_POST['email']}\r\n";

//endereço de resposta, se queremos que seja diferente a do remitente
//$headers .= "Reply-To: mariano@desarrolloweb.com\r\n";

//endereços que receberão uma copia $headers .= "Cc: manel@desarrolloweb.com\r\n";
//endereços que receberão uma copia oculta
//$headers .= "Bcc: vinnie@criarweb.com,joao@criarweb.com\r\n";
//$message = "Testando outros remetentes, para facilitar a resposta";
//$headers = 'From: suporte@ffctechnologies.com.br';// <- O e-mail que está configurado no .htaccess

if (mail('suporte@ffctechnologies.com.br', $assunto, $corpo, $headers)) { 
    $retorno  = '<p align="center">';
    $retorno .= '<font style="font-size: 20px; color: 0F6;">Parabéns!</font>';
    $retorno .= '<br>';
    $retorno .= 'Mensagem enviada com sucesso!!!!';
    $retorno .= '<br><br>';
    $retorno .= '<font style="font-size: 10px;">clique <a href="./contato.php">aqui</a> para voltar.</font>';
    $retorno .= '</p>';    
}else{ 
    $retorno  = '<p align="center">';
    $retorno .= '<font style="font-size: 20px; color: red;">Atenção!</font>';
    $retorno .= '<br>';
    $retorno .= 'Erro ao Enviar o E-mail';
    $retorno .= '<br><br>';
    $retorno .= '<font style="font-size: 10px;">clique <a href="./contato.php">aqui</a> para tentar novamente.</font>';
    $retorno .= '</p>'; 
    $retorno .= '</p>';
};

echo $retorno;
?>
                    
                    
               





