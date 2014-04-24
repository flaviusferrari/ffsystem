<?php

// Verifica se a Sessão foi Iniciada
include_once ("./seguranca.php");
?>
<html>
   <head>
      <title>FFSystem - Painel de Controle</title>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
      <link href="../css/cssGeral.css" rel="stylesheet" type="text/css" />
      <link href="../css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
   </head>
    <body>
        <!-- Conteúdo do Sitema -->
        <div id="tudo">
            <!-- CABEÇÁLHO DO SISTEMA -->
            <? include ('./includes/cabecalho.php'); ?>
            
            <!-- Menu do Sistema -->
            <? include ("./includes/menuCpanel.inc.php"); ?>
            
            <!-- Conteúdo do Sistema -->
            <div id="conteudo">
                <!-- Barra de Título -->
            <div class="borda">
                <div class="titulo2">
                     Backup
                </div> 
                    <!-- Separação -->
                    <div style="padding: 10px;">    
                        <?
//                        // Conecta ao banco
//                        $servidor = "localhost";
//                        $usuario  = "root";
//                        $senha    = "q1w2e3r4";
//                        $banco    = "ffsystem";

                        // Conecta ao banco
                        $servidor = "mysql.ffctechnologies.com.br";
                        $usuario  = "ffctechnologies";
                        $senha    = "f24f01c75";
                        $banco    = "ffctechnologies";
                        
                        // Cria a data do dia
                        $date = date('dmY');

                        mysql_connect($servidor, $usuario, $senha) or die(mysql_error());
                        mysql_select_db($banco) or die(mysql_error());

                        $abre = fopen("BANCO_{$date}.sql", "w"); // nome do arquivo que será salvo o backup

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
                            echo "Backup Efetuado com Sucesso!!";
                            echo '<br><br>';
                            echo "Clique <a href=\"BANCO_{$date}.sql\">aqui</a> para salvar o arquivo!!";
                        }
                        ?>
                    </div>
                </div>
            </div>
        </div>  
    </body>
</html>
