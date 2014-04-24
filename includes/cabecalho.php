<div id="header">
    <div class="logo">
        <img src="<? echo $_SESSION['servidor']; ?>/layout/logo.png">
    </div>
    <div class="login">
        <font class="txtBem">Bem Vindo,</font>
        <br> 
        <a href="<? echo $_SESSION['servidor']; ?>/usuario/user.php" style="text-decoration: none; color: blueviolet;" title="Clique para exibir os dados.">
        <? echo $_COOKIE['nomeUsuario']; ?></a>
    </div>
</div>