$(document).ready(function() {
    /*
     *  BOTÃO ATUALIZAR
     */
    $('#btnAtualizar').click(function() {
        $("#formulario").attr("action","cadastropf.php?acao=atualizar");
        $("#formulario").submit();
    });
    
    /*
     *  BOTÃO NOVO
     */
    $('#btnNovo').click(function() {
        var novaURL = "cadastropf.php";
        $(window.document.location).attr('href',novaURL);  
    });
    
    /* BOTÃO EXCLUIR */
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
                var novaURL = 'cadastropf.php?acao=excluir&id=' + idCliente;
                $(window.document.location).attr('href',novaURL);                
            },
            "Não" : function() {
                $(this).dialog("close");
            } 
        }
       });
        $("#dialog-confirm").html("<p><span class='ui-icon-help' style='float:left; margin:0 auto;'></span>"+ message+"</p>");     
    });
    
    // jQuery Masked Input
    $("#telefone1").mask("(99)9999-9999"); 
    $("#telefone2").mask("(99)9999-9999"); 

    $("#cep").mask("99999-999");                 
    $("#cpf").mask("999.999.999-99");

    // Máscara para os telefones de São Paulo
    $('#cel').focusout(function(){
        var phone, element;
        element = $(this);
        element.unmask();
        phone = element.val().replace(/\D/g, '');
        if(phone.length > 10) {
            element.mask("(99)99999-999?9");
        } else {
            element.mask("(99)9999-9999?9");
        }
    }).trigger('focusout');
});


