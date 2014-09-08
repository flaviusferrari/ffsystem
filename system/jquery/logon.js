$(document).ready(function () {
    
    // BOTÃO ENTRAR
   $('#entrar').click(function() {        
       // Exibindo os dados da tabela
       $.ajax({
           url : 'control.php',
           type : 'POST',
           data : 'controller=login&action=logar&usuario=' + $('#usuario').val() + '&senha=' + $('#senha').val(),
           success: function(data){ 
               if (!data) {
                   window.location.href = 'index';
               } else {
                   $('#resposta').html(data);   
               }
               
           }           
       });   
   });
});

