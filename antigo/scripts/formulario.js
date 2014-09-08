



// Botões do Formulário
	function doEnviar(Acao) { //inicio da funcao
				//pega o formulário como elemento
	            var formulario = document.getElementById('formulario');
	            
	            //monta os parametros de get
	            var parsGet = '?acao=' + Acao;
	            //parsGet = parsGet + '&txtNome=' + document.getElementById('txtNome').value;
	            
	            //muda o parâmetro action do formulário com os parmetros get
	            formulario.action = formulario.action + parsGet;
	            
	            //envia o formulário
	            formulario.submit();
	        }    

// Exclusão de usuário
	function excluir(form, nome)
	   {
		  //Verifica se foi selecionado um cliente
		  if(form.id.value == "")
		  {  
		    alert("Você presica de um cliente válido!!"); 
		    return true;
		  }                                                   
		  
		  // Imprime a confirmação de exclusão
		  if(form.id.value != "")                      
		  {                                          
		    enviar = window.confirm("Você deseja excluir " + nome + "?"); 
                         if(enviar){
                                doEnviar('excluir');  
                                return true;
                        }  
		  }                                                         
	   }       

/****************************************************
		 Atualiza Cadastro
*****************************************************/
	function atualizar(form)
	   {
		  //Verifica se foi selecionado um cliente
		  if(form.id.value == "")
		  {  
		    alert("Você presica de um cliente válido!!"); 
		    return true;
		  } else {
			 doEnviar('atualizar');  
		  }                                                         
	   }       

    
/*************************************************
	Função simplificada para validação de campos
**************************************************/
	function mascara(o,f){
	    v_obj=o
	    v_fun=f
	    setTimeout("execmascara()",1)
	}

	function execmascara(){
	    v_obj.value=v_fun(v_obj.value)
	}
		
// Função para inserir uma máscara no campo de Telefone              
	function telefone(v){
	    v=v.replace(/\D/g,"")                 //Remove tudo o que não é dígito
	    v=v.replace(/^(\d\d)(\d)/g,"($1)$2") //Coloca parênteses em volta dos dois primeiros dígitos
	    v=v.replace(/(\d{4})(\d)/,"$1-$2")    //Coloca hífen entre o quarto e o quinto dígitos
	    return v
	}                       

// Exibe os dados da consulta
	function ExibeConsulta(nome, acao)
	{
		//pega o formulário como elemento
		var formulario = document.getElementById(nome);

		//monta os parametros de get
		var parsGet = '?acao=' + acao;
		//parsGet = parsGet + '&txtNome=' + document.getElementById('txtNome').value;

		//muda o parâmetro action do formulário com os parmetros get
		formulario.action = formulario.action + parsGet;

		//envia o formulário
		formulario.submit();
	}
