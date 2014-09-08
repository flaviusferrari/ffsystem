<?php 
// Verifica se a Sessão foi Iniciada
include_once "./seguranca.php";

function __autoload($classe)
{
    $pastas = array('app.widgets', 'app.ado', 'app.model', 'app.control');
    foreach ($pastas as $pasta)
    {
        if (file_exists("{$pasta}/{$classe}.class.php"))
        {
            include_once "{$pasta}/{$classe}.class.php";
        }
    }
}

?>

<html> 
    <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>FFSystem - Sistema de Gestão de Empresas</title>
        
        <!-- Importa os arquivos CSS -->
        <link href="css/cssGeral.css" rel="stylesheet" type="text/css" />                       
        <link href="css/MenuPrincipalCss.css" rel="stylesheet" type="text/css" />
	
        <!-- Importa do arquivo JavaScript -->
        <script  language="javascript"  SRC="../scripts/tooltip.js"></script>	
    </head>
<body>
    <div id="tudo">
        <!-- CABEÇÁLHO DO SISTEMA -->
        <? include ('./includes/cabecalho.php'); ?>
        
        <!-- Menu do Sistema -->
	<? include ("./includes/menu.inc.php");	?>

	<!-- CONTEÚDO DO SISTEMA -->
        <div id="conteudo"> 
            <?php
                # DIV DO TÍTULO
                $divTitulo = new TElement('div');
                $divTitulo->id = 'barraTitulo';                
                // label Título
                $label_titulo = new TElement('span');
                $label_titulo->class = 'legenda';
                $label_titulo->add('Contas a Pagar');
                // insere na Div
                $divTitulo->add($label_titulo);
                // exibe o elemento
                $divTitulo->show();
                
                # BOTÕES
                include ('./includes/botoes.php');
                
                # DIV FORMPF
                $divForm = new TElement('div');
                $divForm->id = 'FormPF';
                
                    # FORMULÁRIO
                    $form = new TElement('form');
                    $form->id = 'formulario';
                    $form->action = 'cadastra_conta.php';
                    $form->method = 'post';
                
                # VENCIMENTO
                // Linha 01
                $linha1 = new TElement('div');
                $linha1->class = 'tableBlock';                
                // Label Vencimento
                $label_vencimento = new TElement('label');
                $label_vencimento->add('Vencimento:');
                $label_vencimento->class = 'TituloRel';
                $linha1->add($label_vencimento);
                // Quebra de linha
                $br = new TElement('br');
                $linha1->add($br);
                // Input Vencimento
                $input_vencimento = new TElement('input');
                $linha1->add($input_vencimento);
                // adiciona
                $form->add($linha1);

                # LINHA 2
                $linha2 = new TElement('div');
                $linha2->class = 'tableBlock';

                # CONTA
                $cell = new TElement('span');
                $cell->class = 'tableCell';
                // Label conta
                $label_conta = new TElement('label');
                $label_conta->add('Conta:');
                $label_conta->class = 'TituloRel';
                $cell->add($label_conta);
                // Quebra de linha
                $cell->add($br);
                // input
                $input_conta = new TElement('input');
                $cell->add($input_conta);
                // adiciona
                $linha2->add($cell);              

                # VALOR
                $cell2 = new TElement('span');
                $cell2->class = 'tableCell';
                // Campo valor
                $label_valor = new TElement('label');
                $label_valor->add('Valor:');
                $label_valor->class = 'TituloRel';
                $cell2->add($label_valor);
                // Quebra de linha
                $cell2->add($br);
                // input
                $input_valor = new TElement('input');
                $cell2->add($input_valor);
                // adiciona
                $linha2->add($cell2);
                $form->add($linha2);
                
                
                // DATA PAGAMENTO
                $label_dtPagamento = new TElement('label');
                $label_dtPagamento->add('Data de Pagamento:');
                $label_dtPagamento->class = 'TituloRel';
                $form->add($label_dtPagamento);
                // Quebra de linha
                $form->add($br);
                // Input Dt Pagamento
                $input_dtPagamento = new TElement('input');
                $form->add($input_dtPagamento);
                
                
                
                $divForm->add($form);
                
                // Exibe 
                $divForm->show();
            
            ?>
        </div>

        <!-- Rodapé do Sistema -->
	<? include ('./includes/rodape.php'); ?>
        
    </div> <!-- Final Div Tudo -->
</body>
</html>