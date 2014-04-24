<html>
    <head>
        <style type="text/css">/* O z-index do div#mask deve ser menor que do div#boxes e do div.window */
            #mask {
              position:absolute;
              left:0;
              top:0;
              z-index:9000;
              background-color:#000;
              display:none;
            }

            #boxes .window {
                position:absolute;
                width:440px;
                height:200px;
                display:none;
                z-index:9999;
                padding:20px;
            }

            /* Personalize a janela modal aqui. Você pode adicionar uma imagem de fundo. */
            #boxes #dialog {
                width:375px;
                height:203px; 
                background-color: white;
            }
            /* posiciona o link para fechar a janela */
            .close {
                display: block;
                text-align:right;
            }  
        </style>

        <script type="text/javascript" src="./scripts/jquery.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {

                //seleciona os elementos a com atributo name="modal"
                $('button[name=modal]').click(function(e) {
                    //cancela o comportamento padrão do link
                    e.preventDefault();

                    //armazena o atributo href do link
                    var id = $(this).val();

                    //armazena a largura e a altura da tela
                    var maskHeight = $(document).height();
                    var maskWidth = $(window).width();

                    //Define largura e altura do div#mask iguais ás dimensões da tela
                    $('#mask').css({'width':maskWidth,'height':maskHeight});

                    //efeito de transição
                    $('#mask').fadeIn(1000);
                    $('#mask').fadeTo("slow",0.8);

                    //armazena a largura e a altura da janela
                    var winH = $(document).height();
                    var winW = $(window).width();
                    
                    //centraliza na tela a janela popup
                    $(id).css('top',  winH/2-$(id).height()/2);
                    $(id).css('left', winW/2-$(id).width()/2);
                    
                    //efeito de transição
                    $(id).fadeIn(2000);                

                    //se o botãoo fechar for clicado
                    $('.window .close').click(function (e) {
                        //cancela o comportamento padrão do link
                        e.preventDefault();
                        $('#mask, .window').hide();
                        $('button[name=modal]').text('Janela');
                    });

                    //se div#mask for clicado
                    $('#mask').click(function () {
                        $(this).hide();
                        $('.window').hide();
                    });
                    
                    //Executa Loop entre todas as Radio buttons com o name de valor
                    $('input:radio[name=contato]').each(function() {
                        //Verifica qual está selecionado
                        if ($(this).is(':checked'))
                            valor = $(this).val();
                    });
                    $('button[name=modal]').text(valor);
                });
             });
        </script>
    </head>
    <body>
        <input type="radio" name="contato" value="flavius">Flavius<br>
        <input type="radio" name="contato" value="ferrari">Ferrari<br>
        <input type="radio" name="contato" value="cunha">Cunha<br>
        
        
        <!-- #dialog é o id do DIV definido como mostrado a seguir  -->
        <button type="button" name="modal" value="#dialog">Janela Modal</button>

        <div id="boxes">
            <!-- #personalize sua janela modal aqui -->
            <div id="dialog" class="window">
                <!-- Botão para fechar a janela tem class="close" -->
                <a href="#" class="close">X</a>
                <b>Teste de Janela Modal</b>                
                <table>
                    <tr>
                        <td width="290" colspan="3">Nome do Contato:<br> <input name="contato" type="text" size="51">
                        <input type=hidden name="idCliente" value="<? echo $_GET['idCliente']; ?>"></td>
                    </tr>
                    <tr>
                        <td>Setor: <br><input name="setor" type="text" size="15"></td>
                        <td>Telefone: <br><input id="telefone" name="telcont" type="text" size="15"></td>
                        <td>Ramal: <br><input name="ramal" type="text" size="15"></td>
                    </tr>
                    <tr>
                        <td>Celular: <br><input id="celular" name="celular" type="text" size="15"></td>
                        <td colspan="2">E-mail: <br><input name="mailcont" type="text" size="33"></td>
                    </tr>
                    <tr>
                        <td colspan="3" height="50" align="center"><input type="button" style="width: 350px;" name="acao" onclick="doEnviar('GravaContato')" value="Grava Novo Contato"></td>
                    </tr>			
		</table>
            </div>

            <!-- Não remova o div#mask, pois ele é necessário para preencher toda a janela -->
            <div id="mask"></div>
        </div>
    </body>
</html>
