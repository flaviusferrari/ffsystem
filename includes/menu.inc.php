<div id="NavbarMenu">
   <div id='NavbarMenuleft'>
       <!- Insere os menus principais -->	
      <ul id='nav'>
	<li><a href='/ffsystem/principal.php'>Principal</a></li>
	<li>
	   <!-- Menu de Cadastro -->	
	   <a href=#>Cadastros</a>
	     <ul>
                <!- Submenus do ítem Cadastro -->
                <li><a href="<? echo $_SESSION['servidor']; ?>/cadastros/cadastropf.php">Cadastro PF</a></li>
                <li><a href='<? echo $_SESSION['servidor']; ?>/cadastros/cadastropj.php'>Cadastro PJ</a></li>
                <li><a href='<? echo $_SESSION['servidor']; ?>/cadastros/OrdemServico.php'>Ordem de Serviço</a></li>
	     </ul>
	</li>
	<li><a href="#">Produtos</a>
            <ul>
                <li><a href="<? echo $_SESSION['servidor']; ?>/produtos/produtos.php">Cadastro</a></li>                
            </ul>
	</li>
        <!-- Menu Financeiro -->
        <li>
            <a href="#">Financeiro</a>
            <ul>
                <li><a href="<?php echo $_SESSION['servidor']; ?>/cadastra_conta.php">Contas a pagar</a></li>
            </ul>
        </li>
        <!-- Menu Relatórios -->
	<li><a href='#'>Relatórios</a>
            <ul>
                <li><a href="<? echo $_SESSION['servidor']; ?>/relatorios/rltOrdem.php">Ordem de Serviço</a></li>
            </ul>
	</li>
	<li><a href='<? echo $_SESSION['servidor']; ?>/sair.php'>Sair</a>
	</li>
      </ul>
       <!-- AGENDA -->
       <div id="agenda">
           <a href="<?php echo $_SESSION['servidor']; ?>/agenda/agenda.php">
               <img src="<? echo $_SESSION['servidor']; ?>/layout/agenda.png" title="Exibe agenda">
           </a>
       </div>
   </div>
</div>
