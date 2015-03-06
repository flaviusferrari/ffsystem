<?php
define('CONTROLLERS', 'app/controllers/');
define('VIEWS', 'app/views/');
define('MODELS', 'app/models');
define('HELPERS', 'system/helpers');
define('WIDGET', 'system/widget/');
define('DATABASE', 'system/database/');
define('BASEPATH', __DIR__);
define('DIR', '/ffsystem/');
define('MODULES', 'app/modules/');

require_once 'system/system.php';
require_once 'system/controller.php';
require_once 'system/model.php';
require_once 'system/loader.php';
require_once 'system/view.php';


// Carrega as classes do sistema
spl_autoload_register(array('TLoader', 'loader'));



class TApplication
{
    static public function run()
    {
       if ($_GET)
       {
           $controller = $_GET['controller'];

           if (!empty($controller))
           {
              // Inicia a aplicaçao
              $start = new System($controller);
              
              $start->run();
           }
           else
           {
               die('Controller não existe!!');
           }
       }    
       else
       {
           new PaginaPainel('painel');
       }
    }
}

TApplication::run();
