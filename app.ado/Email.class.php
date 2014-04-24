<?php
class Email
{

/*
* Classe desenvolvida por Gabriel Jacinto (2012)
*/

	//private $nome;
	//private $email;
	private $assunto;
	private $corpo;
        private $remetente;
	private $charset; /* Codificação do email (utf-8,  iso-8859-9 etc.) */
	private $cod = 'Content-type: text/html; charset="UTF-8"';
	private $html;
	
	/* Corpo do email */
	
	public function Corpo($nome, $email, $msg)
        {	
            $this->corpo = "<html><body><b>".$nome."</b> - ".$email." <hr> ".$msg."</body></html>"; 
	}
	
	/* Enviando e-mail */
	
	public function Envia($assunto_, $remetente_)
        {

            $mail = mail($remetente_, $assunto_, $this->corpo_, $this->cod);

            if($mail)
            {
                return "E-mail enviado com sucesso!";
            }
            else
            {
                return "Falha ao enviar e-mail!";
            }	
	}
        
        /*
         * método getMail()
         *  recupera o conteúdo da mensagem a ser enviada
         */
        public function getMail()
        {
            return $this->corpo;
        }
	
}
