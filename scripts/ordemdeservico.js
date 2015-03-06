/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(function(){ 
    
    // BOTÃO SALVAR     
    $('#btnSalvar').click(function() {
        $("#formulario").attr("action","OrdemServico.php?acao=salvar");
        $("#formulario").submit();
    });
    
    // BOTÃO ATUALIZAR     
    $('#btnAtualizar').click(function() {
        $("#formulario").attr("action","OrdemServico.php?acao=atualizar");
        $("#formulario").submit();
    });
    
    // BOTÃO NOVO
    $('#btnNovo').click(function() {
        var novaURL = "OrdemServico.php";
        $(window.document.location).attr('href',novaURL);  
    });
    
    // Insere as máscaras nos campos
    $("#horaEntrada").mask("99:99"); 
    $("#horaSaida").mask("99:99"); 
    
    
    // Efetua o cálculo do tempo
    $(".teste").blur(function(){
	
        txtHoraInicial = document.getElementById("horaEntrada");
        txtHoraFinal = document.getElementById("horaSaida");

        SegundosInicial = (txtHoraInicial.value.substr(0,2) * 3600);
        SegundosInicial += (txtHoraInicial.value.substr(3,2) * 60);

        SegundosFinal = (txtHoraFinal.value.substr(0,2) * 3600);
        SegundosFinal += (txtHoraFinal.value.substr(3,2) * 60);

        HorasTotal = parseInt((SegundosFinal - SegundosInicial)/3600);
        MinutosTotal = parseInt(((SegundosFinal - SegundosInicial)%3600)/60);

        document.getElementById("tempoTotal").value = HorasTotal + ":" + MinutosTotal;	
    });
    
    // Calcula o valor Total da nota
    $('.valor').blur(function () {
        var vInicial = $('#valorInicial').val().replace(',','.');
        var vExcedente = $('#valorExcedente').val().replace(',','.');
        var desconto = $('#desconto').val().replace(',','.');
        var vMaterial = $('#valorMaterial').val();
        //var vMaterial = 

        vServico = (parseFloat(vInicial) + parseFloat(vExcedente)) - parseFloat(desconto);
        custoTotal = vServico + parseFloat(vMaterial);

        $('#valorServico').val(vServico.toFixed(2));
        $('#custoServico').val(custoTotal.toFixed(2));
    });
    
    // Calcula valor por produto
    $('.valUnit').blur(function() {
       
    });
    
    // Botão Exclui Material
    $('.btnExcluiMaterial').click(function() {
        var id = $(this).attr('value');
        var codigo = $('#cod'+id).val();
        
        // mensagem de alerta
        msn = 'Deseja excluir o Material de código ' + codigo;
        
       if (confirm(msn))
        {
            $('#cod'+id).val('del');
        
            // Atualiza o formulário
            $("#formulario").attr("action","OrdemServico.php?acao=atualizar");
            $("#formulario").submit();
        }
        
        
        
    });
   
   
}); // finaliza JQuery

function calcula() {
    //$('.vmaterial')
//    valor = 0; 
//    $('.vmaterial').each(function(i){ 
//
//        valor += parseInt($(this).val());
//    }); 
    quant = document.formulario.quantidade.length;
    //taxa = parseFloat(document.getElementById("taxa").value.replace(',','.'));

    var total = 0;
    for (i=0;i < quant; i++){                           
       var valor = parseFloat(document.getElementById("totalmat" + i).value);
       total = total + valor;
    }
    $('#valorMaterial').val(total.toFixed(2)); //fora do loop
}

function calculaValor(num) {
    var quant = parseFloat(document.getElementById("quant"+num).value);
    var valorunit = parseFloat(document.getElementById("valor"+num).value.replace(',','.') );

    // Calcula do valor
    var valor = valorunit * quant;

    document.getElementById("totalmat"+num).value = valor.toFixed(2);
    
}