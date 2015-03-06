<div id="NavbarMenu">
   <div id='NavbarMenuleft'>
       <!- Insere os menus principais -->	
      <ul id='nav'>
	<li><a href="<?php echo $_SESSION['servidor']; ?>/cpanel/cpanel.php">Principal</a></li>
	<li>
	   <!-- Menu de Cadastro -->	
	   <a href=#>Usuários</a>
	     <ul>
                <!- Submenus do ítem Cadastro -->
                <li><a href="<? echo $_SESSION['servidor']; ?>/cpanel/Admin/listar_usuarios.php?acao=listar">Lista Usuários</a></li>
                <li><a href="<? echo $_SESSION['servidor']; ?>/cpanel/Admin/cadastra_usuario.php">Cadastra Usuário</a></li>
	     </ul>
	</li>
	<li><a href="#">Empresas</a>
            <ul>
                <li><a href="<? echo $_SESSION['servidor']; ?>/cpanel/cadastros/cadEmpresa.php">Cadastro</a></li>                
            </ul>
	</li>    
        <li><a href="backup.php">Backup</a></li>
	<li><a href="<? echo $_SESSION['servidor']; ?>/cpanel/sair.php">Sair</a></li>
      </ul>       
   </div>
</div>
