<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of mensagens
 *
 * @author flavius
 */
class mensagens {
    function erro($mess, $server) {
        echo '<p class="msnAviso"><img src="' . $server . '/layout/erro.jpg">';
        echo '<br><br>';
        echo $mess;
        echo '<br>';
        echo 'Favor consultar o Adminstrador do sistema.';
        echo '</p>';
    }
    
    // Mensagem de aviso
    function aviso($mess, $server) {
        echo '<p class="msnAviso"><img src="' . $server . '/layout/atencao.jpg">';
        echo '<br><br>';
        echo $mess;
    }
    
    // Mensagem de OK
    function acerto($mess, $server) {
        echo '<p class="msnAviso"><img src="' . $server . '/layout/ok.jpg">';
        echo '<br><br>';
        echo $mess;
    }
}

?>
