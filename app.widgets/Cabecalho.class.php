<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Cabecalho
{
    public function __construct() 
    {
        // Div Cabeçalho
        $divCabecalho = new TElement('div');
        $divCabecalho->id = 'header';
        
        // div do Logo
        $divLogo = new TElement('div');
        $divLogo->class = 'logo';
        
        // Logomarca
        $logo = new TElement('img');
        $logo->src = './img/logo.png';
        $divLogo->add($logo); // adiciona a imagem
        $divCabecalho->add($divLogo); // adiciona o logo ao cabeçalho
        
        # Div Login
        $login = new TElement('div');
        $login->class = 'login';
        
        // Bem Vindo
        $ben_vindo = new TElement('font');
        $ben_vindo->class = 'txtBem';
        $ben_vindo->add('Bem Vindo,');        
        
        $login->add($ben_vindo); // adiciona a fonte ao Div
        
        // Quebra de linha
        $br = new TElement('br');
        $login->add($br);
        
        // Usuário
        $user = new TElement('a');
        $user->href = 'index.php?sessao=dados_pessoais';
        $user->title = 'Clique para exibir os dados';
        $user->style = 'text-decoration: none; color: blueviolet;';
        $user->add($_COOKIE['usuario']);
        $login->add($user);
        
        $divCabecalho->add($login); // adiciona o login ao cabeçalho
        
        // Exibe o Div com o conteúdo
        $divCabecalho->show();
    }
}