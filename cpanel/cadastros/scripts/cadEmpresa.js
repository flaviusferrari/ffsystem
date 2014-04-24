/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    $('#btnGravaEmpresa').click(function() {
        $.ajax({
            url: './scripts/cadastra_empresa.php',
            type: 'POST',
            data: 'acao=CadastraEmpresa&codEmpresa=' + $('#codEmpresa').val() +
                  '&nomeEmpresa=' + $('#nomeEmpresa').val(),
            success: function(data) {
                $('#setor').html(data);
            }
        });
    });
    
    
});

