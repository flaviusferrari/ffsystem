<?php
# Div Sistema
$divSistema = new TElement('div');
$divSistema->id = 'conteudo';

# Div Borda
$divBorda = new TElement('div');
$divBorda->class = 'borda';
$divSistema->add($divBorda);

# DIV DO TÍTULO
$divTitulo = new TElement('div');
$divTitulo->class = 'titulo2';  
$divBorda->add($divTitulo);

# Div do Formulario
$padding = new TElement('div');
$padding->class = 'padding';
$divBorda->add($padding);

// label Título
$label_titulo = new TElement('span');
$label_titulo->class = 'legenda';
$label_titulo->add('Cadastro de Usuarios');
$divTitulo->add($label_titulo);

// Quebra de linha
$br = new TElement('br');

/* 
 *  Verifica se foi enviado alguma açao para ser executada
 */
if(isset($_GET['acao']))
{
    $acao = $_GET['acao'];
}
else
{
    $acao = '';
}


/*
 *  Verifica a açao a ser efetuada e apresenta a pagina
 */
if($acao == '')
{ 
    $divBorda->add('acao');
}
elseif ($acao == 'gravar')
{
    $divBorda->add('Gravar');
}



// exibe a div
$tudo->add($divSistema);