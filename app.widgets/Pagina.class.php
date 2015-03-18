<?php
class Pagina
{
    public function __construct($arquivo)
    {
        echo '<!DOCTYPE html>' . "\n";
        echo '<html>' . "\n";
        echo '    <head>' . "\n";
        echo '        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />' . "\n";
        echo '        <base href="/ffsystem/">'."\n";
        echo '        <title>FFSystem - Sistema de Gestão de Empresas</title>' . "\n";
        echo "\n";
        echo '        <!-- Importa os arquivos CSS -->' . "\n";
        echo '        <link href="css/cssGeral.css" rel="stylesheet" type="text/css" />' . "\n";
        echo '        <link href="css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />' . "\n";
        echo '        <link href="css/smoothness/jquery-ui.css" rel="stylesheet" type="text/css" />' . "\n";
        echo '        <link href="template/css/' . $arquivo . '.css" rel="stylesheet" type="text/css" />' . "\n";
        echo "\n";
        echo '        <!-- Importa os arquivos JQuery -->' . "\n";
        echo '        <script type="text/javascript" src="./scripts/jquery.js"></script>' . "\n";
        echo '        <script type="text/javascript" src="./scripts/jquery-ui.js"></script>' . "\n";
        echo '        <script type="text/javascript" src="./scripts/maskedinput.js"></script>' . "\n";
        echo '        <script type="text/javascript" src="./scripts/geral.js"></script>' . "\n";
        echo '        <script type="text/javascript" src="./scripts/'. $arquivo . '.js"></script>' . "\n";
        echo '   </head>' . "\n";
        echo '<body>' . "\n";
        echo '  <div id="tudo">' . "\n";
    }
}