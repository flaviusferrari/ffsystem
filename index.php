<html>
<head>
<title>FFSystem - Sistema de Gestão de Empresas</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="./css/index.css" rel="stylesheet" type="text/css" />
    <link href="./css/cssFormGeral.css" rel="stylesheet" type="texte/css" />
    
    <!-- Importa os arquivos JQuery -->
    <script type="text/javascript" src="./scripts/jquery.js"></script>
    <script type="text/javascript" src="./scripts/index.js"></script>

</head>
<body>
    <div id="Autentica">
        <div id="superior">
            <img src="./layout/ffsystem.png" style="margin-top: 15px;">
        </div>
        <div id="logar">
          <form method="POST" action="control.php">
              <div>
                  <label class="TituloRel">Nome de Usuário:</label>
              </div>
              <div>
                   <input type="Text" name="usuario" id="usuario" maxlength="50" class="inpLogon">
              </div>
              <div style="margin-top: 20px;">
                  <label class="TituloRel">Senha:</label>
              </div>
              <div>
                  <input type="password" name="senha" id="senha" maxlength="50" class="inpLogon">
              </div>
              <div id="resposta" style="color: red;"></div>
              <div style="margin-top: 10px;">
                  <button type="button" id="entrar">Entrar</button>
              </div>
              <p align="center">
                <span style="font-size: 12px; color: #666666;"><b><a href="changelog.html" target="new" class="link">Versão: 0.6.1</a></b></span>
              </p>
          </form>
        </div>
</div>
</body>
</html> 
