<?php 
    // INCLUDES
    include "../bd/conexao.class.php";        

    // Cria a conexão como Banco de Dados		
    $conexao = new Conexao;
    
    $idEmpresa = $_POST['idEmpresa'];
    // Verifica o Código da Empresa
    $sqlCodEmpresa = "SELECT codEmpresa FROM empresa WHERE idEmpresa = '{$idEmpresa}'";
    $consultaCodEmpresa = $conexao->Consulta($sqlCodEmpresa);

    /* VARIÁVEL PARA VALIDAR O FORMULÁRIO */
    $valida = true;
    
    if ($_POST['tipo'] == 'periodo')
    {
        /* SE OS VALORES FOREM VÁLIDOS, INSERE NO BANCO DE DADOS  */
        if($valida){
            //$referencia = $_POST['referencia'];
            //$dataFinal   = $_POST['dataFinal'];

            // Convertendo o formato de Data para o MYSQL
            $data1 = explode('/', $_POST['dataInicial']);
            $dataInicial = "{$data1[2]}-{$data1[1]}-{$data1[0]}"; // YYYY-MM-DD

            if ($_POST['dataFinal'])
            {
                $data2 = explode('/', $_POST['dataFinal']);
                $dataFinal = "{$data2[2]}-{$data2[1]}-{$data2[0]}"; // YYYY-MM-DD
            }


            $dataHJ = date('d/m/Y');
            $data3 = explode('/', $dataHJ);
            $hoje = "{$data3[2]}-{$data3[1]}-{$data3[0]}"; // YYYY-MM-DD

            // Cria a Consulta ao BD com o ID do cliente
            if ($_POST['dataFinal'] == "") {
                $sqlOrdem = "SELECT * FROM ordem WHERE data BETWEEN '{$dataInicial}' AND '{$hoje}' AND idEmpresa = '{$idEmpresa}' ORDER BY data";
            } else {
                $sqlOrdem = "SELECT * FROM ordem WHERE data BETWEEN '{$dataInicial}' AND '{$dataFinal}' AND idEmpresa = '{$idEmpresa}' ORDER BY data";
            }


           // Executa a consulta criada
           $LocalizaOrdem = $conexao->Consulta($sqlOrdem); 

            if($LocalizaOrdem){
                $retorno  = '<table cellspacing="0" cellpading="0">';
                $retorno .= '<thead>';
                $retorno .= '<th>Data</th>';
                $retorno .= '<th>OS</th>';
                $retorno .= '<th>Cliente</th>';
                $retorno .= '<th>Situação</th>'."\n";
                $retorno .= '<th>&nbsp;</th>';
                $retorno .= '</thead>';
                $retorno .= '<tbody>';
                for($i=0; $i<count($LocalizaOrdem); $i++) {
                    $retorno .= '<tr>';
                        // Acerta a Exibição da Data vinda do Banco de Dados -
                        $data = explode('-', $LocalizaOrdem[$i]['data']);
                        $data = $data[2].'/'.$data[1].'/'.$data[0];
                    $retorno .= '<td class="listagem">'. $data . '</td>';
                    $retorno .= '<td class="listagem">' .$LocalizaOrdem[$i]['os']. '</td>';
                        // Localiza o cliente
                        $sqlCliente = "SELECT nome FROM clientes WHERE id_cliente = '{$LocalizaOrdem[$i]['idCliente']}'";
                        $consultaCliente = $conexao->Consulta($sqlCliente);
                    $retorno .= '<td class="listagem">'. utf8_encode($consultaCliente[0]['nome']) . '</td>';
                    $retorno .= '<td class="listagem">';
                        // Verifica a Situação da OS
                        switch ($LocalizaOrdem[$i]['situacao'])
                        {
                            case 'A':
                                $situacao = 'Aberta';
                                break;
                            case 'M':
                                $situacao = 'Modificada';
                                break;
                            case 'F':
                                $situacao = 'Fechada';
                                break;
                        }
                    $retorno .= $situacao."</td>\n";
                    $retorno .= '<td class="listagem">&nbsp;'."\n";
                    $retorno .= '<a href="./ordem/relatOrcamento.php?ordem=' . $LocalizaOrdem[$i]['os'] . '&codEmpresa=' . $consultaCodEmpresa[0]['codEmpresa'] . '" target="_blank"><img src="../layout/btn_visualizar.png" height="18" title="Exibe Ordem de Serviço"></a>'."\n";
                    $retorno .= '<a href="../cadastros/OrdemServico.php?acao=visualizaordem&ordem='.$LocalizaOrdem[$i]['os'].'"><img src="../layout/btn_editar.png" height="18" title="Edita Ordem de Serviço"></a>'."\n";
                    $retorno .= '</td>';
                    $retorno .= '</tr>';
                }            
                $retorno .= '</tbody>';
                $retorno .= '</table>';            
            }
            else{
                $retorno  = '<div class="msnErro">'."\n";
                $retorno .= 'Erro ao consultar os dados';
                $retorno .= "<br>\n";
                $retorno .= "Não foi encontrado nenhum dado!\n";
                $retorno .= '</div>'."\n";
            }
        }    
    }
    elseif ($_POST['tipo'] == 'situacao') 
    {
        // recebe as variáveis
        $dtInicial = $_POST['dataInicial'];
        $dtFinal   = $_POST['dataFinal'];
        $idEmpresa = $_POST['idEmpresa'];
        $situacao  = $_POST['situacao'];
        
        // Convertendo o formato de Data para o MYSQL
        # Data Inicial
        $data1 = explode('/', $dtInicial);
        $dataInicial = "{$data1[2]}-{$data1[1]}-{$data1[0]}";
        # Data Final
        $data2 = explode('/', $dtFinal);
        $dataFinal = "{$data2[2]}-{$data2[1]}-{$data2[0]}";
        # Hoje
        $dataHJ = date('d/m/Y');
        $data3 = explode('/', $dataHJ);
        $hoje = "{$data3[2]}-{$data3[1]}-{$data3[0]}";
        
        // Cria a Consulta ao BD com o ID do cliente
        if ($_POST['dataFinal'] == "") {
            $sqlOrdem = "SELECT * FROM ordem WHERE data BETWEEN '{$dataInicial}' AND '{$hoje}' AND idEmpresa = '{$idEmpresa}' AND situacao = '{$situacao}' ORDER BY data";
        } else {
            $sqlOrdem = "SELECT * FROM ordem WHERE data BETWEEN '{$dataInicial}' AND '{$dataFinal}' AND idEmpresa = '{$idEmpresa}' AND situacao = '{$situacao}' ORDER BY data";
        }

       // Executa a consulta criada
       $LocalizaOrdem = $conexao->Consulta($sqlOrdem); 

        if($LocalizaOrdem){
            $retorno  = '<table cellspacing="0" cellpading="0">';
            $retorno .= '<thead>';
            $retorno .= '<th>Data</th>';
            $retorno .= '<th>OS</th>';
            $retorno .= '<th>Cliente</th>';
            $retorno .= '<th>&nbsp;</th>';
            $retorno .= '</thead>';
            $retorno .= '<tbody>';
            for($i=0; $i<count($LocalizaOrdem); $i++) {
                $retorno .= '<tr>';
                    // Acerta a Exibição da Data vinda do Banco de Dados -
                    $data = explode('-', $LocalizaOrdem[$i]['data']);
                    $data = $data[2].'/'.$data[1].'/'.$data[0];
                $retorno .= '<td class="listagem">'. $data . '</td>';
                $retorno .= '<td class="listagem">' .$LocalizaOrdem[$i]['os']. '</td>';
                    // Localiza o cliente
                    $sqlCliente = "SELECT nome FROM clientes WHERE id_cliente = '{$LocalizaOrdem[$i]['idCliente']}'";
                    $consultaCliente = $conexao->Consulta($sqlCliente);
                $retorno .= '<td class="listagem">'. utf8_encode($consultaCliente[0]['nome']) . '</td>';
                $retorno .= '<td class="listagem">&nbsp;'."\n";
                $retorno .= '<a href="./ordem/relatOrcamento.php?ordem=' . $LocalizaOrdem[$i]['os'] . '&codEmpresa=' . $consultaCodEmpresa[0]['codEmpresa'] . '" target="_blank"><img src="../layout/btn_visualizar.png" height="18" title="Exibe Ordem de Serviço"></a>'."\n";
                $retorno .= '<a href="../cadastros/OrdemServico.php?acao=visualizaordem&ordem='.$LocalizaOrdem[$i]['os'].'"><img src="../layout/btn_editar.png" height="18" title="Edita Ordem de Serviço"></a>'."\n";
                $retorno .= '</td>';
                $retorno .= '</tr>';
            }            
            $retorno .= '</tbody>';
            $retorno .= '</table>'; 
        }
    
    }

    /* IMPRIME RETORNO */
    echo $retorno;
?>