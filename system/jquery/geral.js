/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(function() {
    /** Converte o valor para moeda **/
    $('.moeda').live('blur', function() {
        var valor = $(this).val();
        
        // converte em Moeda
        valor = converteMoedaFloat(valor);
              
        // preenche o campo valor
        $(this).val(converteFloatMoeda(valor));
    });
    
    // Campo DATA
    $( ".dtForm" ).datepicker({
        dateFormat: 'dd/mm/yy',
        dayNames: ['Domingo','Segunda','Terça','Quarta','Quinta','Sexta','Sábado','Domingo'],
        dayNamesMin: ['D','S','T','Q','Q','S','S','D'],
        dayNamesShort: ['Dom','Seg','Ter','Qua','Qui','Sex','Sáb','Dom'],
        monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'],
        monthNamesShort: ['Jan','Fev','Mar','Abr','Mai','Jun','Jul','Ago','Set','Out','Nov','Dez']
    });
    
    
});


// Converte Moeda para Float
function converteMoedaFloat(valor){
      if(valor === ""){
         valor =  0;
      }else{
         valor = valor.replace(".","");
         valor = valor.replace(",",".");
         valor = parseFloat(valor);
      }
      return valor;
}

// Converte Float para Moeda
function converteFloatMoeda(valor){
      var inteiro = null, decimal = null, c = null, j = null
      var aux = new Array();
      valor = ""+valor;
      c = valor.indexOf(".",0);
      //encontrou o ponto na string<br>
      if(c > 0){
         //separa as partes em inteiro e decimal<br>
         inteiro = valor.substring(0,c);
         decimal = valor.substring(c+1,valor.length);
      }else{
         inteiro = valor;
      }
     
      //pega a parte inteiro de 3 em 3 partes<br>
      for (j = inteiro.length, c = 0; j > 0; j-=3, c++){
         aux[c]=inteiro.substring(j-3,j);
      }
     
      //percorre a string acrescentando os pontos<br>
      inteiro = "";
      for(c = aux.length-1; c >= 0; c--){
         inteiro += aux[c]+'.';
      }
      //retirando o ultimo ponto e finalizando a parte inteiro<br>
     
      inteiro = inteiro.substring(0,inteiro.length-1);
     
      decimal = parseInt(decimal);
      if(isNaN(decimal)){
         decimal = "00";
      }else{
         decimal = ""+decimal;
         if(decimal.length === 1){
            decimal = decimal+"0";
         }
      }
      
      
      valor = inteiro+","+decimal;
      
      
      return valor;

   }