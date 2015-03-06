$(document).ready(function() {
    /*
     *  BOTÃO ATUALIZAR
     */
    $('#btnAtualizar').click(function() {
        $("#formulario").attr("action","cadastropj.php?acao=atualizar");
        $("#formulario").submit();
    });
    
    /*
     *  BOTÃO NOVO
     */
    $('#btnNovo').click(function() {
        var novaURL = "cadastropj.php";
        $(window.document.location).attr('href',novaURL);  
    });
    
    /* 
     *  BOTÃO EXCLUIR 
     */
    $('#btnExcluir').click(function() {
       var idCliente = $('#idCliente').val();
       var nomeCliente = $('#nome').val();
       // Mensagem que será exibida
       var message = 'Tem certeza que deseja excluir o Cliente <span style="color: blue;">'+ nomeCliente + '</span>?';
       
       $("#dialog-confirm").dialog( {
        modal : true,
        resizable : false,
        width : 450,
        title : 'Confirmação',
        buttons : {
            "Sim" : function() { 
                var novaURL = 'cadastropj.php?acao=excluir&id=' + idCliente;
                $(window.document.location).attr('href',novaURL);                
            },
            "Não" : function() {
                $(this).dialog("close");
            } 
        }
       });
        $("#dialog-confirm").html("<p><span class='ui-icon-help' style='float:left; margin:0 auto;'></span>"+ message+"</p>");     
    });
    
    
    /*
     *  MASCARÁ DOS CAMPOS
     */
    // jQuery Masked Input
    $("#telefone1").mask("(99)9999-9999"); 
    $("#telefone2").mask("(99)9999-9999"); 
    $("#fax").mask("(99)9999-9999"); 
    $("#cep").mask("99999-999"); 
    $("#cnpj").mask("99.999.999/9999-99");  
    $('#cttTelefone').mask("(99)9999-9999");
    $('#cttCelular').mask("(99)9999-9999?9");
    $('#cttTelefoneNovo').mask("(99)9999-9999");
    $('#cttCelularNovo').mask("(99)9999-9999?9");
      
    /*
     * JANELA MODAL
     */
    //seleciona os elementos a com atributo name="modal"
    $('button[name=modal]').click(function(e) {
        
        //Executa Loop entre todas as Radio buttons com o name de valor
        $('input:radio[name=selcontato]').each(function() {
            //Verifica qual está selecionado
            if ($(this).is(':checked'))
                valor = $(this).val();
        });
        
        // Busca os dados do Contato selecionado
        $.ajax({
            type: "POST",
            url: "../cadastros/scripts/Contato.php",
            data: "cod="+valor + '&acao=exibe',
            success: function(pessoa){
                informacoesPessoa = pessoa.split("~");
                $('#cttContato').val(informacoesPessoa[0]);
                $("#cttMail").val(informacoesPessoa[1]);
                $('#cttSetor').val(informacoesPessoa[2]);
                $('#cttIdContato').val(informacoesPessoa[3]);
                $('#cttTelefone').val(informacoesPessoa[4]);
                $('#cttRamal').val(informacoesPessoa[5]);
                $('#cttCelular').val(informacoesPessoa[6]);
            }
        });
        
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
     
     $('button[name=modal2]').click(function(e) {
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
   
    /*
     * BOTÃO ATUALIZA CONTATO
     */
    $('#btnAtualizaContato').click(function() {
        // Exibindo os dados da tabela
       $.ajax({
           url : '../cadastros/scripts/Contato.php',
           type : 'POST',
           data : 'acao=atualiza&contato=' + $('#cttContato').val() + '&idContato=' + $('#cttIdContato').val() + 
                  '&setor=' + $('#cttSetor').val() + '&telefone=' + $('#cttTelefone').val() + '&ramal=' + 
                  $('#cttRamal').val() + '&celular=' + $('#cttCelular').val() + '&email=' + $('#cttMail').val(),
           success: function(data){
               $('#cadastro').html(data);
           }
       });
    });
    
    /*
     * BOTÃO CADASTRA CONTATO
     */
    $('#btnNovoContato').click(function() {
        // Exibindo os dados da tabela
       $.ajax({
           url : './scripts/Contato.php',
           type : 'POST',
           data : 'acao=novo&contato=' + $('#cttContatoNovo').val() + '&setor=' + $('#cttSetorNovo').val() + 
                   '&telefone=' + $('#cttTelefoneNovo').val() + '&ramal=' + $('#cttRamalNovo').val() + 
                   '&celular=' + $('#cttCelularNovo').val() + '&email=' + $('#cttMailNovo').val() + '&idCliente=' + $('#cttIdClienteNovo').val(),
           success: function(data){
               $('#cadastroNovo').html(data);
           }
       });
    });
    
});

// Remove a div
function onOK() {    
    $(this).hide();       
    location.reload();    
}


