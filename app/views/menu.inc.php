<div id='NavbarMenuleft'>
   <!-- Insere os menus principais -->	
  <ul id='nav'>
    <li><a href='Tpage.php?controller=index'>Principal</a></li>
    <li>
       <!-- Menu de Cadastro -->	
       <a href=#>Cadastros</a>
         <ul>
            <!-- Submenus do ítem Cadastro -->
            <li><a href="Tpage.php?controller=clientespf">Clientes PF</a></li>
            <li><a href="<?php echo $_COOKIE['servidor']; ?>/cadastros/cadastropj.php">Clientes PJ</a></li>
            <li><a href='<?php echo $_COOKIE['servidor']; ?>/cadastros/OrdemServico.php'>Ordem de Serviço</a></li>
         </ul>
    </li>
    <li><a href="#">Produtos</a>
        <ul>
            <li><a href="Tpage.php?controller=produtos">Cadastro</a></li>                
        </ul>
    </li>
    <!-- Menu Financeiro -->
    <li>
        <a href="#">Financeiro</a>
        <ul>
            <li><a href="<?php echo $_COOKIE['servidor']; ?>/cadastra_conta.php">Contas a pagar</a></li>
        </ul>
    </li>
    <!-- Menu Relatórios -->
    <li><a href='#'>Relatórios</a>
        <ul>
            <li><a href="<?php echo $_COOKIE['servidor']; ?>/relatorios/rltOrdem.php">Ordem de Serviço</a></li>
        </ul>
    </li>
    <li><a href='Tpage.php?controller=logout'>Sair</a>
    </li>
   </ul>
   <!-- Painel de Controle -->
   <?php
//       // inicia transação como banco de dados
//       TTransaction::open('mysql');
//       
//       $user = new Usuarios($_COOKIE['idUsuario']);
//       
//       if ($user->admin == 'S')
//       {
//           #### DIV PAINEL ####
//           $divPainel = new TElement('div');
//           $divPainel->id = 'cpanel';           
//           // link
//           $a = new TElement('a');
//           $a->href = 'cpanel.php';
//           $divPainel->add($a);           
//           // Imagem
//           $img = new TImage('layout/cpanel_ico.png');
//           $img->title = 'Painel de Controle';
//           $a->add($img);
//           
//           // Exibe a Div
//           $divPainel->show();
//       }               
   ?>
</div>
