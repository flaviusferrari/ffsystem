<?php

define('CONTROLLERS', 'app/controllers/');
define('VIEWS', 'app/views/');
define('MODELS', 'app/models');
define('HELPERS', 'system/helpers');
define('WIDGET', 'system/widget/');
define('DATABASE', 'system/database/');
define('BASEPATH', __DIR__);
define('MODULES', 'app/modules/');

require_once 'system/controller.php';
require_once 'system/model.php';
require_once 'system/loader.php';
require_once 'system/view.php';

// Carrega as classes do sistema
spl_autoload_register(array('TLoader', 'loader'));

// Recebe o Controller
$controller = $_POST['controller'];
$action     = $_POST['action'];

// Caminho do Controller
$controller_path = CONTROLLERS . $controller . 'Controller.php';

// Inclui o arquivo de Controller
if (file_exists($controller_path))
{
    require_once ($controller_path);            
}
else
{
    $controller_path = MODULES . $controller . '/controllers/' .  $controller. 'Controller.php';

    if (file_exists($controller_path))
    {
        require_once ($controller_path);
    }
} 

// Executa o controller
$app = new $controller();
$result = $app->$action();

if(!$result)
{    
    return FALSE;
}