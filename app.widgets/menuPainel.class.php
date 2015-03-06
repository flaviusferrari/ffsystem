<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of menuPainel
 *
 * @author flavius
 */
class menuPainel 
{
    public $menu;
    
    public function __construct() 
    {
        #### DIV NavbarMenu ###
        $divNavbarMenu = new TElement('div');
        $divNavbarMenu->id = 'NavbarMenu';
        
        #### Div NavbarMenuLeft ####
        $divNavbarMenuLeft = new TElement('div');
        $divNavbarMenuLeft->id = 'NavbarMenuleft';
        $divNavbarMenu->add($divNavbarMenuLeft);
        
        #### Menu Principal ####
        $ul = new TElement('ul');
        $ul->id = 'nav';
        $divNavbarMenuLeft->add($ul);
        // Cpanel
        $principal = new TElement('li');
        $ul->add($principal);
        // link
        $link_principal = new TElement('a');
        $link_principal->href = 'cpanel.php?s=painel';
        $link_principal->add('Principal');
        $principal->add($link_principal);
        
        ####Menu Usuarios ####
        $usarios = new TElement('li');
        $ul->add($usarios);
        // label
        $menuUsuarios = new TElement('a');
        $menuUsuarios->href = '#';
        $menuUsuarios->add('Usuarios');
        $usarios->add($menuUsuarios);
        
        #### Sub-menu Usuarios ###
        $ul_user = new TElement('ul');
        $usarios->add($ul_user);
        
        /**** Lista Usuarios ****/
        $listUsers = new TElement('li');
        $ul_user->add($listUsers);
        // Link
        $menuListUsers = new TElement('a');
        $menuListUsers->href = 'cpanel.php?s=listaUsuarios';
        $menuListUsers->add('Lista Usuarios');
        $listUsers->add($menuListUsers);
        
        /**** Cadastra Usuarios ****/
        $cadUsers = new TElement('li');
        $ul_user->add($cadUsers);
        // Link
        $menuCadUsers = new TElement('a');
        $menuCadUsers->href = 'cpanel.php?s=cadUser';
        $menuCadUsers->add('Cadastra Usuarios');
        $cadUsers->add($menuCadUsers);

        
        #### Sistema ####
        $system = new TElement('div');
        $system->id = 'cpanel';
        $divNavbarMenuLeft->add($system);
        // link
        $link_system = new TElement('a');
        $link_system->href = 'principal.php';
        //$link_system->add("sis");
        $system->add($link_system);
        // Imagem
        $img_system = new TImage('layout/system.png');
        $img_system->title = 'Retorna ao sistema';
        $link_system->add($img_system);

        
        $this->menu = $divNavbarMenu;
    }
}
