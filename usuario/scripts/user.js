/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
   // BOTÃO ATUALIZA DADOS
   $('#btnAtualizaUsuario').click(function() { 
       // Exibindo os dados da tabela
       $.ajax({
           url : './scripts/usuario.php',
           type : 'POST',
           data : 'acao=atualiza&respostaUsuario=' + $('#respostaUsuario').val() + '&perguntaUsuario=' + $('#perguntaUsuario').val() + 
                   '&nomeUsuario=' + $('#nomeUsuario').val() + '&mailUsuario=' + $('#mailUsuario').val() + '&idUsuario=' + $('#idUsuario').val(),
           success: function(data){
               $('#mensagem').css('display', 'block').html(data);
           }
       });
   });
   
   
   /*
     * JANELA MODAL
     */
    //seleciona os elementos a com atributo name="modal"
    $('button[name=modal]').click(function(e) {        
        //cancela o comportamento padrão do link
        e.preventDefault();

        //armazena o atributo href do link
        var id = $(this).val();

        //armazena a largura e a altura da tela
        var maskHeight = $(document).height();
        var maskWidth = $(window).width();

        //Define largura e altura do div#mask iguais ás dimensões da tela
        $('#mask').css({'width':maskWidth,'height':maskHeight});

        //efeito de transição
        $('#mask').fadeIn(1000);
        $('#mask').fadeTo("slow",0.8);

        //armazena a largura e a altura da janela
        var winH = $(document).height();
        var winW = $(window).width();

        //centraliza na tela a janela popup
        $(id).css('top',  winH/2-$(id).height()/2);
        $(id).css('left', winW/2-$(id).width()/2);

        //efeito de transição
        $(id).fadeIn(2000); 
     });
    
    //se o botãoo fechar for clicado
    $('.window .close').click(function (e) {
        //cancela o comportamento padrão do link
        e.preventDefault();
        $('#mask, .window').hide();       
        location.reload();
    });

    //se div#mask for clicado
    $('#mask').click(function () {
        $(this).hide();
        $('.window').hide();
    });
   
   // BOTÃO MUDA SENHA
   $('#btnMudaSenha').click(function() {      
        // Exibindo os dados da tabela
       $.ajax({
           url : './scripts/usuario.php',
           type : 'POST',
           data : 'acao=mudasenha&idUsuario=' + $('#idUsuario').val() + '&senhaAtual=' + $('#senhaAtual').val() + 
                  '&senhaNova=' + $('#senhaNova').val() + '&repeteSenha=' + $('#repeteSenha').val() ,
           success: function(data){
               $('#msnSenha').html(data);
           }
       });
    });
    
    
    
}); // Final Jquery

