<?php
##### DIV SISTEMA #####
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
// label Título
$label_titulo = new TElement('span');
$label_titulo->class = 'legenda';
$label_titulo->add('Listagem de Usuarios');
$divTitulo->add($label_titulo);

# Div do Formulario
$padding = new TElement('div');
$padding->class = 'padding';
$divBorda->add($padding);


// Quebra de linha
$br = new TElement('br');

// exibe a div
$tudo->add($divSistema);