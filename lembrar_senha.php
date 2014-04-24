<?php
/*
 * function __autoload()
 *  chama a classe automaticamente assim que ela é instanciada
 */
function __autoload($classe)
{
    $pastas = array('app.widgets', 'app.ado', 'app.model', 'app.control');
    foreach ($pastas as $pasta)
    {
        if (file_exists("{$pasta}/{$classe}.class.php"))
        {
            include_once "{$pasta}/{$classe}.class.php";
        }
    }
}

// Html
$html = new TElement('html');

$head = new TElement('head');
$html->add($head);

// Meta
$meta = new TElement('meta');
$meta->http_equiv = 'Content-Type';
$meta->content = 'text/html; charset=utf-8';
$head->add($meta);

// CSS Geral
$cssGeral = new TElement('link');
$cssGeral->href = 'css/cssGeral.css';
$cssGeral->rel  = 'stylesheet';
$cssGeral->type = 'text/css';
$head->add($cssGeral);
 
// Título da página
$title = new TElement('title');
$title->add('Recupera Senha');
$head->add($title);

// CSS Geral
$link = new TElement('link');
$link->href = 'css/index.css';
$link->rel  = 'stylesheet';
$link->type = 'text/css';
$head->add($link);

// CSS Personalizado
$cssPerson = new TElement('link');
$cssPerson->href = 'css/cssFormGeral.css';
$cssPerson->rel  = 'stylesheet';
$cssPerson->type = 'text/css';
$head->add($cssPerson);

// script JQuery
$jquery = new TElement('script');
$jquery->type = 'text/javascript';
$jquery->src  = './scripts/jquery.js';
$jquery->add('');
$head->add($jquery);

// Script Local
$script_local = new TElement('script');
$script_local->type = 'text/javascript';
$script_local->src  = './scripts/senha.js';
$script_local->add('');
$head->add($script_local);

// Body
$body = new TElement('body');
$html->add($body);

// Quebra de linha
$br = new TElement('br');
        
// Div Conteúdo
$conteudo = new TElement('div');
$conteudo->id = 'autentica';
$conteudo->style = 'margin: 0 auto;';
$body->add($conteudo);

// Div Superior
$div_superior = new TElement('div');
$div_superior->id = 'superior';
$conteudo->add($div_superior);

// IMG
$img = new TElement('img');
$img->src   = './layout/ffsystem.png';
$img->style = 'margin-top: 15px';
$div_superior->add($img);

# DIV DO TÍTULO
$divTitulo = new TElement('div');
$divTitulo->class = 'TituloSenha';       
$conteudo->add($divTitulo);

$conteudo->add($br);

// Div Borda
$borda = new TElement('div');
$borda->class = 'borda';
$conteudo->add($borda);



// Título
$label_titulo = new TElement('span');
$label_titulo->class = 'legenda';
$label_titulo->add('Recupera Senha');
$divTitulo->add($label_titulo);

# Div Padding
$padding = new TElement('div');
$padding->class = 'padding';
$borda->add($padding);



if (!$_GET)
{
    // Label Login
    $labelLogin = new TElement('label');
    $labelLogin->class = 'TituloRel';
    $labelLogin->add('Digite o seu Login:');
    $padding->add($labelLogin);
    
    $padding->add($br);
    
    // Formulario
    $form = new TElement('form');
    $form->name = 'formulario';
    $form->method = 'post';
    $form->action = 'lembrar_senha.php?modulo=frase';
    $padding->add($form);

    // campo login
    $input = new TElement('input');
    $input->type = 'text';
    $input->name = 'login';
    $input->id   = 'login';
    $form->add($input);

    $form->add($br);
    $form->add($br);

    // Botão Visualizar Senha
    $btnFrase = new TElement('button');
    $btnFrase->class = 'botao';
    $btnFrase->id = 'btnExibeFrase';
    $btnFrase->add('Exibe Frase');
    $form->add($btnFrase);
}
elseif ($_GET['modulo'] == 'frase')
{
    // Recebe o usuário
    $usuario = $_POST['login'];
    
    /* 
     * Busca a Frase secreta
     */
    // cria instrução de SELECT
    $sql = new TSqlSelect;

    // define o nome da entidade
    $sql->setEntity('usuarios');

    // acrescenta colunas à consulta
    $sql->addColumn('Pergunta');
    
    // cria critério de seleção de dados
    $criteria = new TCriteria;

    // obtém a pessoa do código 1
    $criteria->add(new TFilter('Login', '=', $usuario));

    // atribui o critério de seleção de dados
    $sql->setCriteria($criteria);

    try
    {
        // abre conexão com a base my_livro (mysql)
        $conn = TConnection::open('mysql');

        // executa a instrução SQL
        $result = $conn->query($sql->getInstruction());

        if ($result)
        {
            $row = $result->fetch(PDO::FETCH_ASSOC);

            // exibe os dados resultantes
            $pergunta =  $row['Pergunta'];
            
            /*
             *  Verifica se possui alguma pergunta registrada,
             *  caso não haja, exibe mensagem de erro
             */
            if ($pergunta == '')
            {
                // Mensagem de erro
                $msg = "Não foi encontrada nenhuma pergunta cadastrada.";
                
                $padding->add($msg);
                
                $padding->add($br);
                $padding->add($br);
                
                // login usuário
                // campo login
                $input = new TElement('input');
                $input->type = 'hidden';
                $input->name = 'login';
                $input->id   = 'login';
                $input->value = $usuario;
                $padding->add($input);
                
                // Botão enviar senha por e-mail
                $btnEnvMail = new TElement('button');
                $btnEnvMail->class = 'botao';
                $btnEnvMail->id = 'btnEnvMail';
                $btnEnvMail->add('Enviar E-mail');
                $padding->add($btnEnvMail);
                
                // Botão Index
                $btnIndex = new TElement('button');
                $btnIndex->class = 'botao';
                $btnIndex->id = 'btnIndex';
                $btnIndex->add('Index');
                $padding->add($btnIndex);
            }
            else
            {
                // Formulario
                $form = new TElement('form');
                $form->name = 'formulario';
                $form->method = 'post';
                $form->action = 'lembrar_senha.php?modulo=resposta';
                $padding->add($form);    

                // Frase Secreta
                $fraseSecreta = new TElement('label');
                $fraseSecreta->add(utf8_encode($pergunta));
                $form->add($fraseSecreta);

                // Quebra de linha
                $br = new TElement('br');
                $form->add($br);

                // campo usuário
                $input = new TElement('input');
                $input->type = 'text';
                $input->name = 'frase';
                $form->add($input);

                // Login oculto
                $login = new TElement('input');
                $login->name = 'usuario';
                $login->type = 'hidden';
                $login->value = $usuario;
                $form->add($login);

                $form->add($br);
                $form->add($br);

                // Botão Visualizar Senha
                $btnSenha = new TElement('button');
                $btnSenha->class = 'botao';
                //$btnSenha->id = 'btnExibeSenha';
                $btnSenha->add('Verifica Resposta');
                $form->add($btnSenha);
            }
        }

        // fecha a conexão
        $conn = null;
    } 
    catch (Exception $e) 
    {
        // exibe a mensagem de erro
        print "Erro!: " . $e->getMessage() . "<br>\n";
    }
    
    
}
elseif ($_GET['modulo'] == 'resposta')
{
    $resposta = $_POST['frase'];
    $usuario  = $_POST['usuario'];
    
    /* 
     * Verifica se a Resposta está correta
     */
    // cria instrução de SELECT
    $sql = new TSqlSelect;

    // define o nome da entidade
    $sql->setEntity('usuarios');

    // acrescenta colunas à consulta
    $sql->addColumn('Resposta');
    
    // cria critério de seleção de dados
    $criteria = new TCriteria;

    // obtém a pessoa do código 1
    $criteria->add(new TFilter('Login', '=', $usuario));

    // atribui o critério de seleção de dados
    $sql->setCriteria($criteria);
    
    try
    {
        // abre conexão com a base my_livro (mysql)
        $conn = TConnection::open('mysql');

        // executa a instrução SQL
        $result = $conn->query($sql->getInstruction());

        if ($result)
        {
            $row = $result->fetch(PDO::FETCH_ASSOC);

            // Verifica se as respostas são iguais
            if ($row['Resposta'] == $resposta)
            {
                /* 
                 * Se a resposta for correta, abre um formulário para digitar uma 
                 *  nova senha
                 */
                // Formulario
                $form = new TElement('form');
                $form->name = 'formulario';
                $form->method = 'post';
                $form->action = 'lembrar_senha.php?modulo=nova_senha';
                $padding->add($form);    
                
                // Label Nova Senha
                $label = new TElement('label');
                $label->class = 'TituloRel';
                $label->add('Digite a nova senha:');
                $form->add($label);

                $form->add($br);
                
                // campo Nova Senha
                $senha = new TElement('input');
                $senha->type = 'password';
                $senha->name = 'novaSenha';
                $senha->id   = 'novaSenha';
                $form->add($senha);
                
                $form->add($br);
                
                // Label confirma
                $confirma = new TElement('label');
                $confirma->class = 'TituloRel';
                $confirma->add('Confirme a senha:');
                $form->add($confirma);

                $form->add($br);
                
                // campo Nova Senha
                $newSenha = new TElement('input');
                $newSenha->type = 'password';
                $newSenha->name = 'confirmaSenha';
                $newSenha->id   = 'confirmaSenha';
                $form->add($newSenha);
                
                // Login oculto
                $login = new TElement('input');
                $login->name = 'usuario';
                $login->type = 'hidden';
                $login->value = $usuario;
                $form->add($login);
                
                $form->add($br);
                $form->add($br);
                
                // Botão Nova Senha
                $btnSenha = new TElement('button');
                $btnSenha->class = 'botao';
                $btnSenha->id    = 'btnNovaSenha';                
                $btnSenha->add('Cadastra Nova Senha');
                $form->add($btnSenha);                
            }
            else
            {
                /*
                 * Caso a resposta não seja correta, apresenta 2 opções:
                 *  1ª - Retornar e tentar responder novamente;
                 *  2ª - Enviar a resposta para o e-mail cadastrado;
                 */
                // label
                $label = new TElement('label');
                $label->add('Resposta Errada!!');
                $padding->add($label);
                
                $padding->add($br);
                $padding->add($br);
                
                // opções
                $opcoe = new TElement('label');
                $opcoe->add('Escolha uma das opcoes a seguir:');
                $padding->add($opcoe);
                
                // Login oculto
                $login = new TElement('input');
                $login->name = 'usuario';
                $login->id   = 'login';
                $login->type = 'hidden';
                $login->value = $usuario;
                $padding->add($login);
                
                $padding->add($br);
                $padding->add($br);
                
                // Botão Voltar
                $opcao01 = new TElement('button');
                $opcao01->class = 'botao';
                $opcao01->onClick = 'history.go(-1);';
                $opcao01->add('Voltar');
                $padding->add($opcao01);
                
                # Botão Enviar por E-mail
                $opcao02 = new TElement('button');
                $opcao02->class = 'botao';
                $opcao02->id    = 'btnEnvMail';
                $opcao02->value = $usuario;
                $opcao02->add('Enviar por E-mail');
                $padding->add($opcao02);
            }
        }

        // fecha a conexão
        $conn = null;
    } 
    catch (Exception $e) 
    {
        // exibe a mensagem de erro
        print "Erro!: " . $e->getMessage() . "<br>\n";
    }
}
elseif ($_GET['modulo'] == 'nova_senha')
{
    /*
     * Cadastra a nova senha do Usuário.
     */
    $senha = md5($_POST['novaSenha']);
    $usuario  = $_POST['usuario'];
    
    /* 
     * Grava a nova senha
     */
    // cria instrução de SELECT
    $sql = new TSqlUpdate;

    // define o nome da entidade
    $sql->setEntity('usuarios');

    // acrescenta colunas à consulta
    $sql->setRowData('Senha', $senha);
    
    // cria critério de seleção de dados
    $criteria = new TCriteria;

    // obtém a pessoa do código 1
    $criteria->add(new TFilter('Login', '=', $usuario));

    // atribui o critério de seleção de dados
    $sql->setCriteria($criteria);
    
     try
    {
        // abre conexão com a base my_livro (mysql)
        $conn = TConnection::open('mysql');

        // executa a instrução SQL
        $result = $conn->query($sql->getInstruction());
        
        if($result)
        {
            // Mensagem de erro
            $msg = "Senha cadastrada com Sucesso!!";

            $padding->add($msg);
            
            $padding->add($br);
            $padding->add($br);
            
            // Botão Index
            $btnIndex = new TElement('button');
            $btnIndex->class = 'botao';
            $btnIndex->id = 'btnIndex';
            $btnIndex->add('Index');
            $padding->add($btnIndex);
                
        }
        
     } 
    catch (Exception $e) 
    {
        // exibe a mensagem de erro
        print "Erro!: " . $e->getMessage() . "<br>\n";
    }
    
    //$padding->add($sql->getInstruction());
} 
elseif ($_GET['modulo'] == 'mail') 
{
    
     try 
     {
         // abre conexão com a base my_livro (mysql)
        $conn = TTransaction::open('mysql');
        
        // define o arquivo de LOG
        TTransaction::setLogger(new TLoggerTXT('LOG.txt'));
        
        // instancia o critério de seleção de dados
        $criteria = new TCriteria;
        $criteria->add(new TFilter('Login', '=', $_GET['user']));
        
        // instancia repositório Usuários
        $repository = new TRepository('Usuarios');
        
        // retorna todos objetos que satisfazem o critério
        $usuarios = $repository->load($criteria);
        
        // verifica se retornou alguma inscrição
        if ($usuarios)
        { 
            // compem mensagem
            foreach ($usuarios as $usuario)
            {
                // verifica se possui e-mail cadastrado
                if ($usuario->Email != '')
                {                    
                    $mail = new Email();

                    $msg = trim('Algo');//Mensgaem do e-mail

                    $mail->Corpo($usuario->Nome, $usuario->Email, $msg);//Defini o corpo de e-mail

                    $enviar = $mail->Envia('Recuperação de Senha','suporte@ffctechnolgies.com.br');

                    $padding->add($enviar);
                }
                else 
                {
                    $padding->add('Não há e-mail cadastrado!!');
                }
            }
        }
     
        
     } catch (Exception $ex) {
         // exibe a mensagem de erro
        print "Erro!: " . $ex->getMessage() . "<br>\n";
     }
     
     

     
     
     
}

// exibe a página
$html->show();




