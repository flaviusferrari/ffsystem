/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function() {
    
    // Muda o nome "Selecionar arquivo" pelo nome do Arquivo
    $("#arquivo").change(function() { 
        $(this).prev().html($(this).val()); 
    });
    
    // BOTÃO SALVAR
    $('#btnSalvar').click(function() {
        // Verifica se os campos Nome, Endereço e Número foram preenchidos
        if ($('#codProduto').val() == '' || $('#nomeProduto').val() == '')
        {
            $('#txtMensagem').html("Código e nome do Produto não podem ficar em branco!");
            $('#mess').dialog({  
                autoOpen: true,  
                width: 400,  
                //height: 250,  
                modal: true,  
                buttons: {  
                    "OK": function () 
                    { 
                        $(this).dialog("close"); 
                    }
                }  
            });
            return false;
        };        
        
        $("#formulario").attr("action","produtos/salvar");
        $("#formulario").submit();
    });
    
    // BOTÃO LOCALIZAR
    $('#btnLocalizar').click(function() {
        // Verifica se o código do Produto foi digitado
        codProduto = $('#codProduto').val();
        
        if(codProduto == '')
        {
            $("#formulario").attr("action","produtos/exibeGeral");
        }
        else
        {
            $("#formulario").attr("action","produtos/exibe/"+codProduto);
        }
        
        // Envia o formulário
        $("#formulario").submit();        
    });
    
    
    /**
        * Verifica o código do produto
        */
    $('#codigo').blur(function() {
        cod = $('#codigo').val();
        
        // verifica o código digitado
        $.ajax({
           url : 'control.php',
           type : 'POST',
           data : 'controller=produtos&action=localizaProduto&cod=' + cod,
           success: function(data){ 
               // Exibe o produto
               if (data){
                    texto = data.split('~');
                    $('#nome').val(texto[0]);   
                    $('#descri').val(texto[1]);
                }
           }           
        });  
    });
    
    
    //$('.gallery_demo_unstyled').addClass('gallery_demo');
        $('.gallery_demo').galleria({
        history   : true, // ativa a legenda da foto ampliada
        clickNext : true, // ativa o link sobre a imagem ampliada para a próxima
        insert    : '#main_image', // nome do div onde aparecerá a imagem ampliada
        onImage   : function(image, caption, thumb) {

            // efeito na imagem e na legenda
            if (! ($.browser.mozilla && navigator.appVersion.indexOf("Win") != - 1)) {
                image.css('display', 'none').fadeIn(1000);
            }
            caption.css('display', 'none').fadeIn(1000);
                var _li = thumb.parents('li');
                _li.siblings().children('img.selected').fadeTo(500, 0.3);
                thumb.fadeTo('fast', 1).addClass('selected');
                // adiciona um título para a imagem ampliada
                image.attr('title', 'Próxima imagem >>');
                },
                onThumb : function(thumb) {
                var _li = thumb.parents('li');
                    var _fadeTo = _li.is('.active') ? '1' : '0.3';
                    // efeito ao carregar os thumbs
                    thumb.css({display:'none', opacity:_fadeTo}).fadeIn(1500);
                    // efeito ao colocar o mouse em cima do thumb
                    thumb.hover(
                        function() { thumb.fadeTo('fast', 1); },
                        function() { _li.not('.active').children('img').fadeTo('fast', 0.3); }
                    )
                }
        });   
    
    
});
