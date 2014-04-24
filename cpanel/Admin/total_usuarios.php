<?
include "../validar_session.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {	color: #000000;
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
<table width="761" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="214" height="29">&nbsp;</td>
    <td width="15">&nbsp;</td>
    <td width="253">&nbsp;</td>
    <td width="39">&nbsp;</td>
    <td width="11">&nbsp;</td>
    <td width="229">&nbsp;</td>
  </tr>
  <tr>
    <td height="44">&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><span class="style1">Total de usuarios</span> </td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="28">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="24">&nbsp;</td>
    <td colspan="4" valign="middle"><span class="style2"><a href="listar_usuarios.php" class="style2">Lista de usuarios</a> | Total de cadastros | <a href="../logout.php" class="style2">Logout</a></span></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="18"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="28"></td>
    <td colspan="3" valign="top"><table width="100%" border="2" bordercolor="#FFFFFF" cellpadding="0" cellspacing="0">
      <!--DWLayoutTable-->
      <tr>
        <td width="224" height="24" align="right" valign="middle" bgcolor="#000000"><span class="style3">Total de usuarios cadastrados:</span></td>
          <td width="79" align="center" valign="middle" bgcolor="#CCCCCC"><font color="#FF0000"><b>
            <?php
include "../Config/config_sistema.php";

$consulta = mysql_query("select * from dados_usuarios");
$num_usuarios = mysql_num_rows($consulta);
$total_usuarios = $num_usuarios - 1;
echo $total_usuarios;
?>
          </b></font>		  &nbsp;</td>
        </tr>
      
      
      
      
      
    </table></td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="234"></td>
    <td>&nbsp;</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</table>
</body>
</html>
