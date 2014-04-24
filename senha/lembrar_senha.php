<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
    <script language="javascript">
        function validar()
        {
            var login = formlembrar.login.value;
            
            if (login == "") {
                alert ('Login não pode ficar em branco!!!');
                formlembrar.login.focus();
                return false;
            }            
            formlembrar.submit();
        }
    </script>

<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {
	color: #000000;
	font-weight: bold;
}
.style3 {
	color: #FFFFFF;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<form action="pergunta_secreta.php" method="post" enctype="multipart/form-data" name="formlembrar">
<table width="772" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="193" height="19">&nbsp;</td>
    <td width="51">&nbsp;</td>
    <td width="76">&nbsp;</td>
    <td width="63">&nbsp;</td>
    <td width="82">&nbsp;</td>
    <td width="63">&nbsp;</td>
    <td width="244">&nbsp;</td>
  </tr>
  <tr>
    <td height="44">&nbsp;</td>    
    <td colspan="5" valign="top"><span class="style1">Lembrar senha</span> </td>    
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="12"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="24"></td>
    <td></td>
    <td></td>
    <td align="center" valign="middle"><a href="../index.php" class="style2">Home</a></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>   
    <td colspan="5" valign="middle"><span class="style2">Digite seu login aqui por favor!</span></td>    
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="56">&nbsp;</td>
    <td colspan="5" valign="top">
        <table width="100%" border="0" bordercolor="#FFFFFF" cellpadding="0" cellspacing="0">
          <!--DWLayoutTable-->
          <tr>
            <td height="28" colspan="2" align="right" valign="middle" bgcolor="#000000" class="style3">Login:</td>
            <td colspan="2" valign="middle" bgcolor="#CCCCCC"><label for="textfield"></label>
              <input name="login" type="text" id="login" size="35" maxlength="200" /></td>
          </tr>
          <tr>
            
              <td colspan="2" align="center" valign="middle"><label for="Submit"></label>
              <input type="button" name="Verificar" value="Verificar" id="Verificar" onClick="validar()" /></td>
              <td width="129">&nbsp;</td>
          </tr>
          <tr>
            <td height="1"></td>
              <td width="10"></td>
              <td width="97"></td>
              <td></td>
          </tr>
        </table>        
    </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="239">&nbsp;</td>
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
