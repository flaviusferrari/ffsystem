$(document).ready(function(){ 

    // Muda a imagem do Voltar
    $('#btnVoltar').hover(function() {
        $("#btnVoltar").attr("src", '/ffsystem/layout/btnVoltarActive.png');
    }, function () {
        $('#btnVoltar').attr("src", '/ffsystem/layout/btnVoltar.png');
    });
    
    // Trocando a cor do link
    $('.link').hover(function() {
        $(this).css('color', '#0000FF');
    }, function() {
        $(this).css('color', '#666');
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
    
});         
