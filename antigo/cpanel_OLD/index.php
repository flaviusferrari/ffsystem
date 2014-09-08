<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Painel de Controle - FFSystem</title>
<style type="text/css">    
    #fundo {
        width: 500px;
        height: 500px;
        margin: 0 auto; 
        background: url("../layout/cpanel.png") no-repeat center top; 
    }
     #cxLogin {        
        width: 300px;  
        height: 150px;
        position:relative;
        margin: 10px;
        left:170px;
        top: 180px;        
    }    
    .atencao {
        font-family: Courier New, monospace;
        font-weight: bolder;
        font-size: 14px;
        color: #CC0000;
    }
    .informacao {
        font-family: Times New Roman, Times, serif;        
        font-size: 12px;        
    }
</style>
<script src="../scripts/jquery.js" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#logar').click(function () {
            var user = $('#login').val();
            if (user != 'admin') {
                alert('Usuário ' + user +' Inválido!!!\nAcesso permitido somente ao administrador.');    
                document.getElementById('login').value = '';
                document.getElementById('senha').value = '';
                document.getElementById('login').focus();
                return false;
            }
        }); 
    });
</script>
</head>
<body bgcolor="#CCCCCC">
    <div id="fundo">
        <div id="cxLogin">
            <form action="control.php" method="post" enctype="multipart/form-data" name="formlogin">
                <p><span>Login:</span><br>
                <input name="login" type="text" id="login" maxlength="15" />
                <br>
                    Senha:<br>            
                <input name="senha" type="password" id="senha" maxlength="15" /></p>
                <? /***** Aviso de erro de senha *****/
                    if ($_GET['errousuario'] == 'si') { ?>
                        <label class="atencao">Atenção!!!</label><br>
                        <label class="informacao">Senha incorreta! Favor tentar novamente.</label>
                        <br>
                <?  } ?>
                <input type="submit" name="logar" value="Logar" id="logar" />
            </form>
        </div>
    </div>
</body>
</html>
