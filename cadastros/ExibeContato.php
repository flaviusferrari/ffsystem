<?php
// Verifica se a Sessão foi Iniciada
include_once ("../seguranca.php");

// Inclui a classe para Conexão ao Banco de Dados
include "../bd/conexao.class.php";

?>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                
                <script language="javascript" SRC="<? echo $_SESSION['servidor']; ?>/scripts/jquery.js"></script>
                <script language="javascript" src="<? echo $_SESSION['servidor']; ?>/scripts/maskedinput.js"></script>                
                
		<script language="javascript">
                    // Funções jQuery
                    $(document).ready(function(){ 
                        // jQuery Masked Input
                        $('#telefone').mask("(99)9999-9999");
                        $("#cep").mask("99999-999"); 
                        $("#cpf").mask("999.999.999-99"); 
                        //$("#cnpj").mask("99.999.999/9999-99"); 

                        $('#celular').focusout(function(){
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
                    
			/***** Envia os dados do formulário junto com a ação específica *****/
			function doEnviar(Acao) 
				{ 
					//pega o formulário como elemento
			        var formulario = document.getElementById('formulario');
			        
			        //monta os parametros de get
			        var parsGet = '?acao=' + Acao;
			       			        
			        //muda o parâmetro action do formulário com os parmetros get
			        formulario.action = formulario.action + parsGet;
			        
			        //envia o formulário
			        formulario.submit();
			    } 

			// Exclusão de usuário
			function ExcluirContato(form)
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
					 enviar = window.confirm("Você deseja excluir " + form.contato.value + "?"); 
					 if(enviar){
						doEnviar('ExcluiContato');  
						return true;
					}  
				  }                                                         
			   }          

			// Atualiza o Contato
			function AtualizaContato()
			   {
				  opener.location.Form.reload()                                                       
			   }          

		</script>
	</head>
<body>
	<?
	// Verifica se o link enviou o ID do Contato
	if (!$_GET or $_GET['acao'] == 'novo')
	{
		// Formulário de Cadastro de Novos Contatos ?>
		<form  name="formulario" id="formulario" method="post" action="ExibeContato.php">
		<table>
			<tr>
				<td width="290" colspan="3">Nome do Contato:<br> <input name="contato" type="text" size="51">
				<input type=hidden name="idCliente" value="<? echo $_GET['idCliente']; ?>"></td>
			</tr>
			<tr>
				<td>Setor: <br><input name="setor" type="text" size="15"></td>
				<td>Telefone: <br><input id="telefone" name="telcont" type="text" size="15"></td>
				<td>Ramal: <br><input name="ramal" type="text" size="15"></td>
			</tr>
			<tr>
				<td>Celular: <br><input id="celular" name="celular" type="text" size="15"></td>
				<td colspan="2">E-mail: <br><input name="mailcont" type="text" size="33"></td>
			</tr>
			<tr>
				<td colspan="3" height="50" align="center"><input type="button" style="width: 350px;" name="acao" onclick="doEnviar('GravaContato')" value="Grava Novo Contato"></td>
			</tr>			
		</table>
		</form>
	<?	} elseif ($_GET["acao"] == "exibe") {
                /*
                 * Exibe os Dados do Contato
                 */
            
		$id = $_GET['idContato'];
		
		// Executa a conexão com o BD
		$conexao = new Conexao;

		// Cria a Consulta do Contato
		$sql = "SELECT * FROM contatos WHERE contatos.idContato = '{$id}' ORDER BY contato";

		// Executa a consulta criada
		$LocalizaContato = $conexao->Consulta($sql); ?>
		<form name="formulario" id="formulario" method="post" action="ExibeContato.php">
			<table>
				<tr>
                                    <td width="290" colspan="3">Nome do Contato:<br> <input name="contato" type="text" size="51" value="<? echo $LocalizaContato[0]['contato']; ?>">
																	 <input type=hidden name="idContato" value="<? echo $_GET['idContato']; ?>"></td>
				</tr>
				<tr>
                                    <td>Setor: <br><input name="setor" type="text" size="15" value="<? echo $LocalizaContato[0]['setor']; ?>"></td>
                                    <td>Telefone: <br><input id="telefone" name="telcont" type="text" size="15" value="<? echo $LocalizaContato[0]['telefone']; ?>"></td>
                                    <td>Ramal: <br><input name="ramal" type="text" size="15"></td>
					
				</tr>
                                <tr>
                                    <td>Celular: <br><input id="celular" name="celular" type="text" size="15" value="<? echo $LocalizaContato[0]['celular']; ?>"></td>
                                    <td colspan="2">E-mail: <br><input name="mailcont" type="text" size="33" value="<? echo $LocalizaContato[0]['email']; ?>"></td>
                                </tr>
				<tr>
                                    <td><input type="button" name="ModificaContato" onClick="doEnviar('ModificaContato')" value="Modifica Contato"></td>
                                    <td><input type="button" name="ExcluiContato" onClick="ExcluirContato(this.form)" value="Exclui Contato"></td>
				</tr>
			
			</table>
		</form>
	<? } elseif ($_GET['acao'] == 'GravaContato') { 
			// Obtedo os campos a serem gravados
			$contato   = $_POST['contato'];
			$idCliente = $_POST['idCliente'];
			$setor     = utf8_decode($_POST['setor']);
			$telefone  = $_POST['telcont'];
			$ramal     = $_POST['ramal'];
			$celular   = $_POST['celular'];
			$email      = $_POST['mailcont'];
			
			// Executa a conexão com o Bando de Dados
			$conexao = new Conexao;

			// Faz a verificação para saber se o Contato já foi cadastrado
			$sqlConsultaContato = "SELECT idContato FROM contatos WHERE contato='{$contato}' AND email='{$email}'";

			$ConsultaContato = $conexao->ConsultaDado($sqlConsultaContato);
		
			// Verifica se o Contato existe
		 	if ($ConsultaContato > 0)
			{  // Mensagem de aviso	?>

				<p>Contato já foi cadastrado!!!</p>	
			<? }else{
				// Grava os dados do novo Contato
				$sqlDadosContato = "INSERT INTO contatos (idCliente, contato, setor, telefone, ramal, celular, email)" .
		        "  VALUES ('{$idCliente}', '{$contato}' , '{$setor}' , '{$telefone}', '{$ramal}', '{$celular}', '{$email}')";

				// Efetua a gravação
				$GravaContato = $conexao->onSaveBD($sqlDadosContato);

				if ($GravaContato) {
					// Mensagem de aviso ?>		         
		       	    <p>Parabêns!!!<br>
					Contato cadastrado com sucesso!!!</p>
					<input type="button" name="OK" onClick="AtualizaContato(this.form)" value="OK">



				<?	}
			}
		// Fim do GravaContato
                        
                } elseif ($_GET['acao'] == 'ModificaContato') {
                    /*
                     * Atualiza o Contato
                     */
                    // Obtedo os campos a serem gravados
                    $contato   = $_POST['contato'];
                    $idContato = $_POST['idContato'];
                    $setor     = utf8_decode($_POST['setor']);
                    $telefone  = $_POST['telcont'];
                    $ramal     = $_POST['ramal'];
                    $celular   = $_POST['celular'];
                    $email      = $_POST['mailcont'];

                    // Executa a conexão com o Bando de Dados
                    $conexao = new Conexao;
                                        
                    // Atualiza os dados do Contato
                    $sqlDadosContato = "UPDATE contatos SET contato  = '{$contato}',    " .
                                       "                    setor    = '{$setor}',      " .
                                       "                    telefone = '{$telefone}',   " .
                                       "                    ramal    = '{$ramal}',      " .
                                       "                    celular  = '{$celular}',    " .
                                       "                    email    = '{$email}'       " .         
                                       " WHERE idContato = '{$idContato}'               ";        
             

                    // Efetua a gravação
                    $GravaContato = $conexao->onSaveBD($sqlDadosContato);

                    if ($GravaContato) {
                            // Mensagem de aviso ?>		         
                        <p>Parabêns!!!<br>
                        Contato Atualizado com sucesso!!!</p>
                        <input type="button" name="OK" onClick="AtualizaContato(this.form)" value="OK"> <?
                    }
                
		} elseif ($_GET['acao'] == 'ExcluiContato') { 
			/*******************************************************
		 	      Exclui o cliente selecionado
		    *******************************************************/ 
			// Obtem os dados necessários a exclusão
			$form['codigo']   = $_POST["idContato"];
			$form['nome']     = $_POST["contato"];

			// Executa a conexão com o BD
	       	$conexao = new Conexao;
		       
	       	// Cria a exclusão do cliente
	       	$sql1 = "DELETE FROM contatos WHERE idContato = '{$form['codigo']}' ";

			$ExcluiContato = $conexao->onSaveBD($sql1);
		       
	       	// Verifica se a sql1 foi executada com sucesso
		  	if ($ExcluiContato)
		 	{
			   /*** Mensagem de aviso ***/ ?>	         
			   	    <h1>Contato Excluido com sucesso!!!</h1> <?
			}		

		} else { ?>	
		Nenhum registro encontrado!!!
	<? } ?>
</body>
</html>
