<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<style type="text/css">
    <!--
    .style1 {font-size: 36px}
    .style2 {
            color: #000000;
            font-weight: bold;
    }
    .style3 {color: #FFFFFF; font-weight: bold; }
    .style4 {color: #FFFFFF}
    -->
</style>
</head>

<body>
<form action="mostrar_senha.php" method="post" enctype="multipart/form-data" name="formmostar">
<table width="588" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="80" height="30">&nbsp;</td>
    <td width="70">&nbsp;</td>
    <td width="49">&nbsp;</td>
    <td width="134">&nbsp;</td>
    <td width="60">&nbsp;</td>
    <td width="84">&nbsp;</td>
    <td width="20">&nbsp;</td>
  </tr>
  <tr>
    <td height="42">&nbsp;</td>    
    <td colspan="5" valign="top"><span class="style1">Pergunta secreta</span> </td>   
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="15">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td>&nbsp;</td>   
    <td colspan="3" align="center" valign="middle"><span class="style2"><a href="../index.php" class="style2">Home</a> | <a href="lembrar_senha.php" class="style2">Voltar</a></span> </td>    
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="96">&nbsp;</td>
    <td colspan="5" valign="top">
        <table width="100%" border="2" bordercolor="#FFFFFF" cellpadding="0" cellspacing="0">
    
<?php
// inclui o arquivo de conexão
include "../bd/conexao.class.php";

// recebe dados do formulario
$login = htmlspecialchars($_POST['login']);

// Instancia a Classe Conexao
    $conexao = new Conexao;

    // Sql de consulta ao usuário
    $sql = "SELECT * from usuarios WHERE Login = '{$login}' ";
    
    // Efetua a consulta ao BD
    $user = $conexao->consulta($sql);

    if (!$user) {
        ?> <tr>
            <td colspan="5" align="center"><span style="color: red;">Usuário não Cadastrado!!!!</span><br>
            Favor entrar em contato com o administrador do Sistema.</td>
            </tr> <?
    } else {    
        if ($user[0]['Pergunta'] == "") { ?>
            <tr>
                <td colspan="5" align="center"><span style="color: red;">Usuário não possui pergunta segreta!</span> <br>
                Favor entrar em contato com o administrador do Sistema.</td>
            </tr> <?
        } else { ?>
            <tr>
                <td height="24" colspan="4" valign="middle">
                <b><? echo $user[0]['Pergunta']; ?> ?</b>&nbsp;</td>
            </tr>
            <tr>
               <td width="87" height="24" align="right" valign="middle" bgcolor="#000000" class="style3">Resposta:</td>
               <td colspan="3" valign="middle" bgcolor="#CCCCCC"><label for="textfield"></label>
               <input name="resposta" type="text" id="resposta" size="40" maxlength="200" /></td>
            </tr>
            <tr>
               <td height="24" align="right" valign="middle" bgcolor="#000000"><strong><span class="style4">Login:</span></strong></td>
               <td colspan="3" valign="middle" bgcolor="#CCCCCC"><label for="textfield"></label>
               <input name="login" type="text" id="login" size="40" maxlength="200" value="<? echo $login; ?>"/></td>
            </tr>
            <tr>               
                <td colspan="5" align="center" valign="middle"><label for="Submit"></label>
                <input type="submit" name="mostar" value="Mostar" id="mostar" /></td>
                
            </tr>
            <?
        }
    } ?>
 
    </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="26">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
