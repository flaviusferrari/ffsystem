<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of conexao
 *
 * @author flavius
 */
class Conexao {
    protected $user = "root"; // Usuário do banco de dados
    protected $senha = "q1w2e3r4"; // Senha do banco de dados
    protected $bd = "ffsystem"; // Nome do Banco de dados MySQL
    protected $server = "localhost"; //host – servidor
    protected $con;

//Construtor
public function __construct() {
    $this->con = mysql_connect($this->server, $this->user, $this->senha) or die('Falha ao conectar com o banco de dados');
    mysql_select_db($this->bd, $this->con);
}

//Encerra a conexão
public function desconectar() {
mysql_close($this->con);
}

//Executa query sql
public function consulta($sql) {
$res = mysql_query($sql,$this->con);
    if(!$res){
    return false;
    }else{
    //    if(substr($sql,0,6) == "INSERT" && mysql_insert_id($this->con)){
    //        return mysql_insert_id($this->con);
    //    }else{
            return $res;
    //    }
    }
}

//Número de resultados que atendem a uma dada consulta
public function conta($res) {
    if($res){
        return mysql_num_rows($res);
    }
}

//Array resultado do select
public function busca($res) {
    if($res){
        return mysql_fetch_array($res);
    }
}
}

?>
