<?php
class PaginaPainel
{
    public function __construct($pag)
    {
        echo '<!DOCTYPE html>' . "\n";
        
        // Pagina principal
        $html = new TElement('html');
        
        // HEAD
        $head = new TElement('head');
        $html->add($head);
        
        // Charset
        $meta = new TElement('meta');
        $meta->http_equiv = 'Content-Type';
        $meta->content    = 'text/html; charset=utf-8';
        $head->add($meta);
        
        // Titulo
        $title = new TElement('title');
        $title->add('FFSystem - Painel de Controle');
        $head->add($title);
        
        // CSS Geral
        $link = new TElement('link');
        $link->href = 'css/cssGeral.css';
        $link->rel  = 'stylesheet';
        $link->type = 'text/css';
        $head->add($link);
        
        // CSS Menu
        $link2 = new TElement('link');
        $link2->href = 'css/MenuPrincipalCss.css';
        $link2->rel  = 'stylesheet';
        $link2->type = 'text/css';
        $head->add($link2);
        
        // CSS Personalizada
        $link_person = new TElement('link');
        $link_person->href = 'css/painel/' . $pag .  '.css';
        $link_person->rel  = 'stylesheet';
        $link_person->type = 'text/css';
        $head->add($link_person);
        
        // script JQuery
        $jquery = new TElement('script');
        $jquery->type = 'text/javascript';
        $jquery->src  = 'scripts/jquery.js';
        $jquery->add('');
        $head->add($jquery);        
        
        // Script Local
        $script_local = new TElement('script');
        $script_local->type = 'text/javascript';
        $script_local->src  = 'scripts/painel/'.$pag.'.js';
        $script_local->add('');
        $head->add($script_local);
        
        // BODY
        $body = new TElement('body');
        $html->add($body);
        
        // TUDO
        $tudo = new TElement('div');
        $tudo->id = 'tudo';
        $body->add($tudo);
        
        // CABEÇALHO
        $cabecalho = new CabecalhoPainel;
        $tudo->add($cabecalho->cabecalho);
        
        // MENU
        $menu = new menuPainel;
        $tudo->add($menu->menu);
        
        
        // Inclui o arquivo 
        include_once "./cpanel/{$pag}.php";
        
        // Exibe a pagina
        $html->show();
    }
}