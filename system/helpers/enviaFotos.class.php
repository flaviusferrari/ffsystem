<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*copia a imagem da pasta temporária do servidor para a pasta produtos*/                     
move_uploaded_file($imagem["tmp_name"], "./fotos/".$codigo.'_'.$codEmpresa.".jpg");

$imagem = "./fotos/".$codigo.'_'.$codEmpresa.".jpg"; // imagem que será redimensionada
$imagem_redimensionada = $codigo.'_'.$codEmpresa.".jpg"; //nova imagem
list($largura, $altura) = getimagesize($imagem);
$nova_largura = 300; // nova largura
$nova_altura = ($nova_largura * $altura) / $largura; // calcula a nova altura
$image_p = imagecreatetruecolor($nova_largura, $nova_altura); $image = imagecreatefromjpeg($imagem);
imagecopyresampled($image_p, $image, 0, 0, 0, 0, $nova_largura, $nova_altura, $largura, $altura);
imagejpeg($image_p, $imagem_redimensionada, 80);
imagedestroy($image_p);

$con_id = ftp_connect($servidor) or die( 'Não conectou em: '.$servidor );  
ftp_login( $con_id, $user, $pass );  

ftp_put( $con_id, $caminho_absoluto.$imagem_redimensionada, $imagem_redimensionada, FTP_BINARY );  

unlink($imagem_redimensionada);
unlink($imagem);