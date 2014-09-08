<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

class Login_Model extends Model
{
    public function verificaLogin($user, $pass)
    {
        // cria critério de seleção de dados
        $criteria = new TCriteria();
        $criteria->add(new TFilter('Login', '=', $user));
        
        // cria instrução de SELECT
        $sql = new TSqlSelect;
        $sql->setEntity('usuarios');
        $sql->addColumn('*');
        $sql->setCriteria($criteria);
        
        // abre conexão com a base my_livro (mysql)
        $conn = TConnection::open('mysql');

        // executa a instrução SQL
        $result = $conn->query($sql->getInstruction());
        
        // seleciona o arquivo de LOG
        $log = new TLoggerTXT('LOG.txt');
        
        if ($result)
        {
            $row = $result->fetch(PDO::FETCH_ASSOC);       

            //vemos se o usuário e senha são válidos
            if ($row['Login'] != $user)
            {                
                return 'Usuario nao encontrado!';
            } 
            elseif ($row['Senha'] != $pass) 
            {
                //se não existir lhe mando outra vez ao portal
                return 'Senha incorreta!';
            }
            else
            {
                setcookie('usuario', $user);
                setcookie('idUsuario', $row['id']);
                setcookie('nomeUsuario', $row['Nome']);
                
                $log->write("Usuario {$user} logou!!");
                
                return 'OK';
            }
        }
    }
}