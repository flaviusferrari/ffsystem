$(document).ready(function() {
    //se div#mask for clicado
    $('#mask').click(function () {
        $(this).hide();
        $('.window').hide();
    });
    
    //se o botãoo fechar for clicado
    $('.window .close').click(function (e) {
        //cancela o comportamento padrão do link
        e.preventDefault();
        $('#mask, .window').hide();       
        location.reload();
    });
    
    
    
});



function agendadia(dia,mes,ano){
    // Exibindo os dados da tabela
    $.ajax({
       url : './exibeAgenda.php',
       type : 'POST',
       data : 'acao=exibedia&dia=' + dia + '&mes=' + mes + '&ano=' + ano,
       success: function(data){
           $('#txtAgenda').html(data);          
       }
    });
    
    
    /*
     * JANELA MODAL
     */
    //seleciona os elementos a com atributo name="modal"
    
    //armazena o atributo href do link
    //var id = $(this).val();

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
    $('.window').css('top',  winH/2-$('#dialog').height()/2);
    $('.window').css('left', winW/2-$('#dialog').width()/2);

    //efeito de transição
    //$(id).fadeIn(2000); 
    
    // Exibe o Box
    $('#dialog').css('display', 'block');        
     
}


function agendamudames(mes,ano){
    // Nova URL da página
    var mudaMes = 'agenda.php?ano='+ano+'&mes='+mes;
    $(window.document.location).attr('href', mudaMes);
        
}

function gravaEvento() {
     $.ajax({
       url : './exibeAgenda.php',
       type : 'POST',
       data : 'acao=gravaEvento&evento='+$("#evento").val()+
               '&horaEvento='+$('#horaEvento').val()+
               '&localEvento='+$('#localEvento').val()+
               '&obsEvento='+$('#obsEvento').val()+
               '&dataEvento='+$('#dataEvento').val(),
       success: function(data){
           $('#txtAgenda').html(data);
       }
    });
}

function novoEvento(data) {
     $.ajax({
       url : './exibeAgenda.php',
       type : 'POST',
       data : 'acao=novoEvento&dataEvento='+data,
       success: function(data){
           $('#txtAgenda').html(data);
       }
    });
}

function mostraDia(dia,mes,ano,hora) {
    $.ajax({
       url : './exibeAgenda.php',
       type : 'POST',
       data : 'acao=mostraDia&dia='+dia+
               '&mes='+mes+
               '&ano='+ano+
               '&hora='+hora,
       success: function(data){
           $('#txtAgenda').html(data);
       }
    });    
}

function atualizaEvento() {
    $.ajax({
       url : './exibeAgenda.php',
       type : 'POST',
       data : 'acao=atualizaEvento&evento='+$("#evento").val()+
               '&horaEvento='+$('#horaEvento').val()+
               '&localEvento='+$('#localEvento').val()+
               '&obsEvento='+$('#obsEvento').val()+
               '&dataEvento='+$('#dataEvento').val()+
               '&idEvento='+$('#idEvento').val(),
       success: function(data){
           $('#txtAgenda').html(data);
       }
    });
}