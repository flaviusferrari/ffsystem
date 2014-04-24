$(document).ready(function() {
    $('#btnExibeSenha').click(function() {
        alert('Senha');
    });   
    
    // Botão Exibe Frase
    $('#btnExibeFrase').click(function() {
        login = $('#login').val();
        
        /* 
         * Verifica se o campo Login foi preenchido
         */
        if (login == '')
        {
            alert('Não foi digitado nenhum Login');
            return false;
        }
        
        
    });
    
    
    // Verifica se as senhas digitadas são iguais
    $('#btnNovaSenha').click(function() {
        // busca o conteúdo digitados nos campos para verificação
        var senha = $('#novaSenha').val();
        var novaSenha = $('#confirmaSenha').val();
        
        // Se o campo Nova Senha estiver em branco, apresenta msg de erro e retorna
        if (senha == '')
        {
            alert('Senha em branco!!');
            $('#novaSenha').focus();
            return false;
        }
        
        /*
         * Se o campo de Confirmação da nova senha estiver em branco,
         * apresenta msg de erro e coloca o foco no campo
         */
        if (novaSenha == '')
        {
            alert('Confirmacao da senha em branco!');
            $('#confirmaSenha').focus();
            return false;
        }
        
        /*
         * Se os dois campos não forem iguais, apresenta msg de erro 
         */
        if (senha != novaSenha)
        {
            alert('As duas senhas devem ser iguais');
            return false;
        }
        
    });   
    
    // Botão Index
    $('#btnIndex').click(function() {
        /* Envia o usuário para a pagina de login */
        var novaURL = "index.php";
        $(window.document.location).attr('href',novaURL); 
    });
    
    // Botão Envia E-mail
    $('#btnEnvMail').click(function() {
        var user = $('#login').val();
        var novaURL = "lembrar_senha.php?modulo=mail&user=" + user;
        $(window.document.location).attr('href',novaURL); 
    });
    
});