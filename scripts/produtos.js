$(document).ready(function(){          
    
    // BOTÃO SALVAR
    $('#btnSalvar').click(function() {
        $("#formulario").attr("action","produtos.php?acao=salvar");
        $("#formulario").submit();
    });
    
    // BOTÃO LOCALIZAR
    $('#btnLocalizar').click(function() {
        $("#formulario").attr("action","produtos.php?acao=localizar");
        $("#formulario").submit();
    });
    
    /*
     *  BOTÃO ATUALIZAR
     */
    $('#btnAtualizar').click(function() {
        $("#formulario").attr("action","produtos.php?acao=atualizar");
        $("#formulario").submit();
    });
    
    /*
     *  BOTÃO NOVO
     */
    $('#btnNovo').click(function() {
        var novaURL = "produtos.php";
        $(window.document.location).attr('href',novaURL);  
    });
    
    /**** BOTÃO EXCLUIR ****/
    $('#btnExcluir').click(function() {
        var codigo = $('#cod_exibe').val();
        var nomeProduto = $('#nome').val();
        
        // Mensagem que será exibida
        var message = 'Tem certeza que deseja excluir o produto <span style="color: blue;">'+ nomeProduto + '</span>?';
        
        $("#dialog-confirm").dialog( {
        modal : true,
        resizable : false,
        width : 450,
        title : 'Confirmação',
        buttons : {
            "Sim" : function() { 
                var novaURL = 'produtos.php?acao=excluir&codigoProduto=' + codigo;
                $(window.document.location).attr('href',novaURL);                
            },
            "Não" : function() {
                $(this).dialog("close");
            } 
        }
       });
        $("#dialog-confirm").html("<p><span class='ui-icon-help' style='float:left; margin:0 auto;'></span>"+ message+"</p>");     
    });
                
    // Bloqueia o campo Código para edição
    // desabilitando o campo 
    $('#cod_exibe').attr("disabled", true);
    // mudando a cor do campo
    $('#cod_exibe').css("background-color", "#cccccc"); 
    
    // Trocando a cor da borda dos Produtos
    $('.tblProdutos').hover(function() {
        $(this).css('border-color', '#0000FF');
    }, function() {
        $(this).css('border-color', '#777');
    });
    
    // Exibindo o produto clicado
    $('.btnExibir').click(function(){
        var newURL = 'produtos.php?acao=exibedados&codigo=' + $(this).val();
        $(window.document.location).attr('href', newURL);
    });
    
});      
        
