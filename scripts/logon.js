$(document).ready(function () {
   
    // Trocando a cor do link
    $('.link').hover(function() {
        $(this).css('color', '#0000FF');
    }, function() {
        $(this).css('color', '#666');
    });
    
    // BOTÃO ENTRAR
   $('#entrar').click(function() {        
       // Exibindo os dados da tabela
       $.ajax({
           url : 'control.php',
           type : 'POST',
           data : 'usuario=' + $('#usuario').val() + '&senha=' + $('#senha').val(),
           success: function(data){ 
               if (!data) {
                   window.location.href = 'Tpage.php?controller=index';
               } else {
                   $('#resposta').html(data);   
               }
               
           }           
       });       
   });
});

