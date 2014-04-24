/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
function validar()
{
    var login = document.getElementById("login").value;
    var senha = formulario.senha.value;
    var rep_senha = formulario.rep_senha.value;
    var nome = formulario.nome.value;
    
    if (login == "") {
        alert ('Login não pode ficar em branco!!!');
        formulario.login.focus();
        return false;
    }
    
    if (senha == "") {
        alert ('Campo senha não pode ficar em branco!!!');
        formulario.senha.focus();
        return false;
    }
    
    if (rep_senha == "") {
        alert ('Campo Repetir senha não pode ficar em branco!!!');
        formulario.rep_senha.focus();
        return false;
    }
    
    if (senha != rep_senha) {
        alert('Campo Repetir senha diferente da senha!!!');
        formulario.rep_senha.focus();
        return false;
    }
    
    if (nome == "") {
        alert('Campo Nome é necessário para a Exibição. Não pode ser deixado em branco!!!');
        formulario.nome.focus();
        return false;
    }
    
    // Caso todos os requesitos tenham sido preenchidos
    doEnviar('CadastraUsuario');
}

