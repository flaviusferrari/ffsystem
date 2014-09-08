<?php
/*
 * classe TDate
 *  responsável por receber uma data e transformá-la em uma data 
 *  válida do Mysql *
 */
class TDate
{
    private $data;


    /*
     * método __construct()
     *  recebe a data e a converte para um formato válido
     * @param $date = Data
     */
    public function __construct($date) 
    {
        $pos = strpos($date, "/");
        
        if ($pos == false)
        {
            $p_dt = explode('-',$date);
            $this->data = $p_dt[2].'/'.$p_dt[1].'/'.$p_dt[0];           
        }
        else
        {            
            $p_dt = explode('/',$date);
            $this->data = $p_dt[2].'-'.$p_dt[1].'-'.$p_dt[0];            
        }
    }
    
    /*
     * método getDate()
     *  retorna a data
     */
    public function getDate()
    {
        return $this->data;
    }
}