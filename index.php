<?php

function __autoload($classe)
{
    $pastas = array('app.widgets', 'app.ado', 'app.model', 'app.control');
    foreach ($pastas as $pasta)
    {
        if (file_exists("{$pasta}/{$classe}.class.php"))
        {
            include_once "{$pasta}/{$classe}.class.php";
        }
    }
}

class TApplication
{
    static public function run()
    {
       if ($_GET)
       {
           $sessao = $_GET['sessao'];

           if ($sessao != '')
           {
               $pagina    = new Pagina($sessao);
               $cabecalho = new Cabecalho;
               $menu      = new Menu;
               include_once "{$sessao}.php";
               $rodape = new Rodape;
           }
           elseif ($sessao == '')
           {
               include_once 'logon.php';
           }
       }
       else 
       {
           $sessao = 'logon';
           $pagina = new Pagina($sessao);
           include_once 'logon.php';
           //$rodape = new Rodape();
       }
    }
}

TApplication::run();