<?
// Conecta ao banco
$servidor = "mysql.ffctechnologies.com.br";
$usuario  = "ffctechnologies";
$senha    = "f24f01c75";
$banco    = "ffctechnologies";
mysql_connect($servidor, $usuario, $senha) or die(mysql_error());
mysql_select_db($banco) or die(mysql_error());

$abre = fopen("BANCO.sql", "w"); // nome do arquivo que será salvo o backup

$sql1 = mysql_list_tables($banco) or die(mysql_error());

while ($ver=mysql_fetch_row($sql1)) {
	$tabela = $ver[0];
	$sql2 = mysql_query("SHOW CREATE TABLE $tabela");
	while ($ver2=mysql_fetch_row($sql2)) {
		fwrite($abre, "-- Criando tabela: $tabela\n");
		$pp = fwrite($abre, "$ver2[1]\n\n-- Salva os dados\n");
		$sql3 = mysql_query("SELECT * FROM $tabela");

		while($ver3=mysql_fetch_row($sql3)) {
			$grava = "INSERT INTO $tabela VALUES ('";
			$grava .= implode("', '", $ver3);
			$grava .= "')\n";
			fwrite($abre, $grava);
		}
		fwrite($abre, "\n\n");
	}
}

$finaliza = fclose($abre);

if($finaliza) {
	echo "Pronto!!";
}
?>
