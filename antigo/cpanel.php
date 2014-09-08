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
           $sessao = $_GET['s'];

           if ($sessao != '')
           {
              new PaginaPainel($sessao);
           }
           elseif ($sessao == '')
           {
               new PaginaPainel('painel');
           }
       }    
       else
       {
           new PaginaPainel('painel');
       }
    }
}

TApplication::run();
