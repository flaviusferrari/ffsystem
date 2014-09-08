/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
    // Muda a imagem do Voltar
    $('#btnVoltar').hover(function() {
        $("#btnVoltar").attr("src", './img/btnVoltarActive.png');
    }, function () {
        $('#btnVoltar').attr("src", './img/btnVoltar.png');
    });
    
    
});
