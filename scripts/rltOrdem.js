$(document).ready(function(){
   
   // MÁSCARAS
   $("#dataInicial").mask("99/99/9999"); 
   $("#dataFinal").mask("99/99/9999"); 
   $("#dtInicialSituacao").mask("99/99/9999"); 
   $("#dtFinalSituacao").mask("99/99/9999"); 
   
   
   // BOTÃO EFETUAR LANÇAMENTO
   $('#btnLocalizaOrdem').click(function() {
       var dataInicial = $('#dataInicial').val();
       
       if (dataInicial == '')
       {
           // Mensagem que será exibida
           var message = 'Campo <i><b>Data Inicial</b><i> não pode ficar em branco!';

           $("#dialog-confirm").dialog( {
            modal : true,
            title : 'Aviso',
            buttons: {
                Ok: function() {
                    $(this).dialog( "close" );
                    $('#dataInicial').focus();
                }
            }
           });
           $("#dialog-confirm").html("<p><span class='ui-icon-help' style='float:left; margin:0 auto;'></span>"+ message+"</p>");  
           
       } else {
           // Exibindo os dados da tabela
           $.ajax({
               url : '../classes/exibeDados.php',
               type : 'POST',
               data : 'dataInicial=' + $('#dataInicial').val() + 
                      '&dataFinal=' + $('#dataFinal').val() + 
                      '&idEmpresa=' + $('#idEmpresa').val() +
                      '&tipo=periodo',
               success: function(data){
                   $('#tabela').html(data);
               }
           });
       }
   });
   
   // BOTÃO LOCALIZAR SITUAÇÃO
   $('#btnLocalSituacao').click(function() {
       // recebe os parâmetros
       var dtInicial = $('#dtInicialSituacao').val();
       var dtFinal   = $('#dtFinalSituacao').val();
       var situacao  = $('#situacaoOS').val();
       
       // verifica se a data Inicial foi digita
       if (dtInicial == '')
       {       
           alert('Data Inicial não pode ficar em branco');
           $('#dtInicialSituacao').focus();
           return false;
       }
       
       // verifica se foi selecionada uma situação
       if (situacao == 'Selecione...')
       {
           alert('Escolha uma Situação!');
           return false;
       }
       
       // Exibindo os dados da tabela
       $.ajax({
           url : '../classes/exibeDados.php',
           type : 'POST',
           data : 'dataInicial=' + dtInicial + 
                  '&dataFinal=' + dtFinal + 
                  '&idEmpresa=' + $('#idEmpresa').val() +
                  '&situacao=' + situacao +
                  '&tipo=situacao',
           success: function(data){
               $('#tabela').html(data);
           }
       });
       
   });



});

