set foreign_key_checks=0;


#
# Criação da Tabela : agenda
#

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codEmpresa` varchar(12) NOT NULL COMMENT 'C�digo da Empresa',
  `evento` varchar(200) NOT NULL,
  `autor` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `hora` varchar(5) NOT NULL,
  `conteudo` text NOT NULL,
  `local` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO agenda VALUES ('1', '1', 'Ivan (Maíra)', '', '2013-10-30', '10:00', 'Instalação da Rede Wireless', '')
,('2', '1', 'Teste Evento', '', '2013-10-30', '16:45', 'Testando', '')
,('3', '2', 'Teste User', '', '2013-10-30', '18:00', 'Testando o User', '')
,('4', '2', 'Descanso', '', '2013-10-27', '12:00', '', '')
,('5', '1', 'Viajes Norte', '', '2013-11-01', '17:00', 'Instalação do servidor novo', '')
;

#
# Criação da Tabela : clientes
#

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL COMMENT 'ID da Empresa contratante',
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `complemento` varchar(15) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `tipo` char(2) DEFAULT NULL,
  `telefone1` varchar(15) DEFAULT NULL,
  `telefone2` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `obs` text,
  UNIQUE KEY `id_cliente` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO clientes VALUES ('2', '1', 'Flavius Ferrari', 'Rua Bar�o de Mesquita', '796', '603', '20540-004', 'Andara�', 'Rio de janeiro', 'AC', 'PF', '(21)3238-1828', '(21)2288-2338', '(21)9717-7913', 'Grava��o de coment�rio!!!')
,('4', '1', 'M�nica Lacerda', 'Av. Nossa Senhora de Copacabana', '680', 'ap: 613', '', 'Copacabana', 'Rio de janeiro', 'RJ', 'PF', '', '', '(21)9964-8241', 'Endere�o Resid�ncial: Rua Tonelero, 185 ap: 702

Data: 22-05-2012 (Residencia)
- Combofix: Verifica��o do micro -  Remo��o de v�rus
- Atualiza��o do Avast
- Reconfigura��o da conta de e-mail
- Avast: Escaneamento r�pido do sistema
- Reconfigura��o do Roteador
- Limpeza dos tempor�rios
- Netbook: Atualiza��o do Windows
	- Verifica��o do teclado
	- Limpeza dos tempor�rios')
,('5', '1', 'Ellen Teixeira', 'Rua Botucat�', '56', '903', '', 'Graja�', 'Rio  de Janeiro', 'RJ', 'PF', '(21)2238-6225', '', '(21)9834-7300', 'Data: 30-04-2012
- Remo��o da ASK Toolbar
- Remo��o da VirtualDJ Tollbar
- Remo��o da Mensagem  de Windows Pirata
- Atualiza��o do k-Lite Mega Codec Pack 8.7
- Atuliza��o do Firefox
- Instala��o do Ashampoo
- Limpeza dos tempor�rios
- Verifica��o do Registro
- Verifica��o r�pida do Avast - OK
- Atualiza��o do Java
- Instala��o do TeamViewer
- Suporte t�cnico


Data: 10-10-2011
- Configura��o do IE para gravar senha
- Atualiza��o do Ccleaner
- LImpeza dos tempor�rios
- Atualiza��o do Firefox
- Criado um ponto de restaura��o
- Atualiza��o do K-lite Mega Codec Pack
- Verifica��o do micro com o Avast - OK
- Verifica��o do Micro com o Spybot
- verifica��o do Registro
')
,('6', '1', 'Fernando Fernandes', 'Av. Henrique Dodswort', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)9703-9838', 'Amigo da Ana Rold�o

Dados Banc�rios:
HSBC
Ag: 1607
C/c: 13591-30

Data: 18-04-2012
- Verifica��o do micro com o Combfix - Remo��o de v�rus
- Limpeza interna do micro
- Atualiza��o do Ccleaner
- Reinstala��o do Avast
- Instala��o do TeamViewer
- Atualiza��o do Java
- Imuniza��o do Spybot
- Verifica��o do micro com o Spybot - OK
- Registro do Avast
- Verifica��o do micro com o Avast - OK
- Remo��o do Babylon Tool bar
- Limpeza dos tempor�rios
- Desfragmenta��o de disco
- Atualiza��o do Windows')
,('7', '1', 'Rosa Alves', 'Av. Oswaldo Cruz', '106', '101', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2551-2282', '', '(21)9997-3811', 'Data: 02-05-2012
- Fonte estava desconectada no cabo de for�a
- Atualiza��o do Windows
- Instala��o do Ccleaner
- Atualiza��o do Flash
- Atualiza��o do Firefox
- Instala��o do TeamViewer
- Instala��o do Java
- Instala��o do Defrager
- Limpeza dos tempor�rios
- Instala��o da WebCan
')
,('8', '1', 'Fernando Cerole', 'Rua Gonzaga Bastos', '259', 'casa 7', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2572-1296', '', '(21)9214-2010', 'Data: 09-10-2012
- Atualiza��o do Flash
- Atualiza��o do Ccleaner
- Remo��o da Ask Toolbar
- Remo��o do InboxToolbar
- Remo��o do RegClean Pro
- Remo��o do SiteRank
- Remo��o dos Tempor�rios
- Instala��o do Emule
- Atualiza��o do Firefox 15
- Atualiza��o do Klite Mega Codec Pack

Data: 03-05-2012
- Teste de HD - Remo��o de Bad Block (1)
- Teste de Mem�ria - OK
- Backup dos Arquivos
- Formata��o e instala��o do Windows e programas
- Atualiza��o do Windows
- Verifica��o Completa do Avast - OK
- Desfragmenta��o de Disco
- Troca do Gravador de CD/DVD que n�o estava lendo os discos')
,('9', '1', 'Am�lia Cristina', 'Rua Ribeiro Guimar�es', '360', '501', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-9636', '', '(21)7941-3200', 'Data: 08-05-2012
- Verifica��o do Micro com o Combofix - Remo��o de v�rus
- Atualiza��o do Java
- Netbook: Troca da senha e nome do usu�rio
- Netbook: Atualiza��o e Registro do Avast
- Avast: Escaneamento r�pido do sistema - Remo��o de v�rus
- Netbook: Remo��o do Microsoft Security
- Instala��o do LibreOffice

Data: 13-03-2012
- Instala��o do Ccleaner
- Instala��o do Mingw
- Removido McAfee Security Center
- Atualiza��o do Java
- Instala��o do Avast
- Limpeza dos Tempor�rios
- Verifica��o da impressora')
,('10', '1', 'Val�ria Gullo', 'Rua Pontes Correa', '167', '503', '', 'Andara�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2208-7631', '', '(21)9613-6928', 'Data: 22-03-2013
- Atualizado o ThunderBird para a vers�o 17;
- Atualizado o Ccleaner;
- Autalizado o LibreOffice para a vers�o 4.0.1;
- Configurado no Avast as contas do Thunderbird;
- Atualiza��o do Windows;
- Ajustes na inicializa��o do Windows;
- Atualizado o Java para a vers�o 7.17;
Laptop
- Verificado o laptop com o Combofix (Remo��o de v�rus);
- Remo��o do McAfee;
- Instala��o do Avast;

Data: 16-08-2012
- Instala��o e configura��o do modem wireless velox
- Instala��o dos softwares no laptop
- Backup dos e-mails para o laptop
- Suporte t�cnico
- Atualiza��o do Windows
- Instala��o da impressora

Data: 22-05-2012
- Verifica��o do HD - Remo��o de Bad Block (30)
- Formata��o do micro
- Backup dos arquivos
- Instala��o dos programas
- Desfragmenta��o de disco

Data: 10-05-2012
- Verifica��o do micro com o Combofix - Remo��o de v�rus
- Remo��o do Aviso de Software Pirata
- Atualiza��o do Ccleaner
- Remo��o do Advanced System Care
- Remo��o do Iobit Secyrity
- Remo��o do IObit Tollbar
- Avast: Escaneamento r�pido do micro - OK
- Atualiza��o do K-Lite Mega Codec Pack
- Instala��o do TeamViewer
- Instala��o do Auslogic disk Defrag
- Limpeza dos tempor�rios
- Cria��o de um Ponto de Restaura��o
- Verifica��o do Registro')
,('11', '1', 'Renata Gondin', 'Rua Botucat�', '', '302', '', 'Graja�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-3234', '', '', 'Data: 11-05-2012
- Verifica��o do HD - Remo��o de Bad Block (7)
- Remo��o do RegClean
- Atualiza��o do Windows

Data: 27-03-2012
- Recupera��o do windows com o Scandisk
- Remo��o de Bad Block - 04
- Baixando Atualiza��es do Windows
- Verifica��o do Micro com Avast - OK
- Verifica��o do micro com Spybot - Remo��o de Spyware
- Verifica��o do Registro
- Atualiza��o do Java
- Atualiza��o do Firefox
- Atualiza��o do Windows
- Instala��o do Defrag')
,('12', '1', 'Cl�nica AFGV', 'Pra�a Olavo Bilac', '28', '910', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2507-3175', '', '', 'Micro D. F�tima
Data: 28-06-2012
- Verifica��o da mem�ria: Foi constatado que o pente de mem�ria est� com defeito
- Teste de Disco: HD OK
- Combofix: Remo��o de v�rus
- Desabilitado o RealPlayer da inicializa��o, pois estava consumindo muito processamento
- Atualiza��o do Windows
- Avast: Verifica��o do micro - OK
- Atualiza��o do Java
- Atualiza��o do Ccleaner
- Instala��o do Auslogic Disk Defrag
- Limpeza de Disco
- Desfragmenta��o de Disco
- Atualiza��o do Avast
- Criado um ponto de Restaura��o do sistema
- Verifica��o do Registro

Data: 13-06-2012
Micro Aninha:
- Foi constatado que a mem�ria do micro havia queimado, causando assim o desligamento do micro;
- Troca da mem�ria
- Limpeza interna
- Remo��o da mensagem de Windows Pirata
- Atualiza��o do Ccleaner
- Atualiza��o do Windows
- Remo��o da Ask Toolbar

Data: 14-05-2012
- Atualiza��o do Windows e dos programas
- Micro da D. F�tima apitando: Foi ligado e desligado o micro e o defeito n�o retornou, micro em observa��o
- Micro da Psic�loga: Necessita trocar o teclado, pois est� causando mal contato devido ao adaptador
- Remo��o da senha inicial do Micro da D. F�tima')
,('13', '1', 'Jorge Delou', 'Rua Pontes Correa', '101', '103', '', 'Andara�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-7534', '', '', 'Filho da Angela Delou

Data: 15-05-2012
- Foi efetuado testes no HD antigo e verificou-se que o mesmo est� com defeito
- Troca do HD antigo por um novo
- Formata��o e instala��o de todos os programas
- Backup dos arquivos do HD Antigo pro Novo
- Recupera��o de arquivos do HD Antido
- Instala��o de um Gravador de DVD')
,('14', '1', 'Ayrton Penedo', 'Rua Visconde de Santa Isabel', '321', '804', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-2827', '', '(21)8131-8562', 'Data: 12-11-2012
- Atualiza��o do Avast
- Memoriza��o da Senha do email da Yolanda
- Remo��o do VideoDownloader Converter
- Atualiza��o do Windows
- Configurada a p�gina da Globo com principal
- Atualiza��o do Flash Player
- Atualiza��o do Java
- Remo��o do Java 6
- Limpeza dos tempor�rios

Data: 12-09-2012
- Reinstala��o do Avast;
- Remo��o de v�rus com o Combofix;
- Instala��o de um pente de mem�ria (NG 0322);
- Windows - Atualiza��o do software.
- Registro do Avast

Data: 05-06-2012
- Renova��o do Registro do Avast
- Atualiza��o do Windows
- Retirado o Modo de Compatibilidade do IE no site da Globo

Data: 21-05-2012
- Atualiza��o do Ccleaner
- Combofix: Verifica��o do Micro - Remo��o de v�rus
- Remo��o da mensagem de software Pirata do Windows
- Limpeza dos tempor�rios
- Remo��o do PriceGoing
- Atualiza��o do Skype
- Avast: Verifica��o R�pida do sistema - OK
- Verifica��o do Registro
- Criado um ponto de restaura��o do sistema
- Atualiza�ao do Java
- Verifica��o do Registro
- Desfragmenta��o do Sistema

Data: 09-12-2011
- Montagem do micro
- Instala��o do eMule
- Atualiza��o do Avast
- Desinstala��o do McAffe Security Scan
- Configura��o do Emule

Data: 28-10-2011
- Instala��o da Webcan
- Atualiza��o do Ccleaner
- Atualiza��o do Java
- Instala��o do Skype
- Instala��o do Ashampoo
- Atualiza��o do Adobe Reader
- Configura��o da Webcan
')
,('15', '1', 'Ney Sarmento', 'Rua Major �vila', '200', 'Loja C', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-0775', '', '(21)8513-1615', 'Data: 30-05-2012
- Instala��o do sistema Otica no Laptop
- Instala��o do Avast
- Backup do Sistema
- Configura��o de um Backup di�rio (Cobian)
')
,('16', '1', 'Mastercoop Cooperativa', 'Rua Haddock Lobo', '11', 'sl: 701', '', 'Est�cio', 'Rio de Janeiro', 'RJ', 'PF', '(21)3796-0445', '', '(21)7871-4566', 'Data: 31-05-2012
Micro Paula
  - Recupera��o do Windows com Scandisk
  - Atualiza��o do Ccleaner
  - Remo��o do BrOffice 3.2
  - Instala��o do LibreOffice 3.5.4
  - Atualiza��o do Auslogic Disk Defrager 3.4.3.5
  - Atualiza��o do Flash
  - Limpeza dos tempor�rios
  - Desfragmenta��o dos Arquivos')
,('17', '1', 'Magaly Espinar da Costa', 'Rua Souto Carvalho', '40', '201', '', 'Engenho Novo', 'Rio de Janeiro', 'RJ', 'PF', '(21)3880-2592', '', '(21)9953-6537', 'Data: 04-06-2012
MICRO MAGALY 01
- Configurada a impressora para imprimir em rascunho (configura��o est� saindo)
- Instala��o do Skype
- Ajuste da WebCan
- Criada uma conta do Skype e configura��o do mesmo
- Suporte t�cnico')
,('18', '1', 'Irineu Moreira da Silva', 'Rua Domingos Lopes', '410', 'LJ: 101', '', 'Madureira', 'Rio de Janeiro', 'RJ', 'PF', '(21)3018-3211', '', '', 'Data: 26-10-2012
- Instala��o e configura��o do Roteador Wireless TP-Link
- Instala��o do Adaptador wireless no micro da Cristina
- Configura��o dos micros para usarem a nova rede
- Reconfigura��o do Federal
- Compartilhamento da impressora
- Atualiza��o do Avast no micro da Cristina
- Desfragmenta��o do micro da Cristina

Data: 06-06-2012
Micro Cristina:
- Efetuado testes na rede e foi reconfigurada o Servidor
- Remo��o de v�rus
- Micro n�o acessa a internet, ter� de fazer uma formata��o
Micro Irineu:
- Limpeza interna no micro
- Verifica��o do PDF Creator')
,('19', '1', 'Rosemary Duarte', 'Rua das Laranjeiras', '136', '402', '', 'Laranjeiras', 'Rio de Janeiro', 'RJ', 'PF', '(21)2233-7205', '(21)3903-6738', '(21)9969-0225', 'Data: 08-06-2012
- Atualiza��o dos plugins do Firefox
- Atualiza��o do Flash
- Registro do Avast
- Atualiza��o do Avast
- Atualiza��o do Ccleaner
- Combofix: Verifica��o do micro
- Limpeza interna no micro

Data: 09-01-2012
- Baixado atualiza��o do Windows
- Atualiza��o do Firefox
- Atualiza��o do Java
- Atualiza��o do Ccleaner
- Limpeza dos tempor�rios
- Verifica��o do Registro
- Avast: Escaneamento R�pido - OK
- Desfragmenta��o de Disco (36%)')
,('20', '1', 'Wilton Taranto', 'Rua Conde de Bonfim', '289 A', '603', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '(21)2569-7225', '', '(21)9255-8199', 'Data: 10-07-2012
- Instala��o do micro novo
- Configura��o do Roteador Wireless
- Configura��o do micro
- Instala��o da impressora HP 
- Instala��o do Office 2010 Starter
- Instala��o do TeamViewer
- Instala��o do Firefox
- Instala��o do Java
- Windows: Instala��o das atualiza��es
- Ashampoo: Instala��o do programa
- Suporte T�cnico')
,('21', '1', 'Angela Delou', '', '', '', '', '', '', 'AC', 'PF', '', '', '', 'teste')
,('22', '1', 'Ana Rold�o', 'Av Henrique Dodsworth', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)7140-7815', 'Data: 09-07-2012
- Combofix: Instala��o do programa
	    Remo��o de v�rus
- Avast: Escaneamento r�pido - Remo��o de v�rus
	 Atualiza��o para a vers�o 7.0.1456
- Ccleaner: Atualiza��o para a vers�o 3.20.1750
	    Limpeza dos tempor�rios
- Java: Atualiza��o para a vers�o 7.5
	Remo��o da vers�o 6.29
- Firefox: Atualiza��o para a vers�o 13.0.1
- Auslogic Disk Defrag: Instala��o da vers�o 3.4
- Ashanpoo: Instala��o da vers�o 2012
- Windows: Instala��o da atualiza��o

Data: 06-09-2011
- Atualiza��o do Avast
- Importa��o dos arquivos de backup do Outlook 2007
- Instala��o do Ccleaner
- Instala��o do TeamViewer
- Atualiza��o do Java
- Remo��o do Java antigo
- Instala��o do Firefox
- Atualiza��o do Adobe Reader
- Cria��o de um ponto de Restaura��o
- Verifica��o da impressora
- Desinstala��o da barra do Alot')
,('23', '1', 'Flavia Diego', 'Rua Gon�alves Freire', '296', '404', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2254-8254', '', '(21)9916-3600', 'Data: 11-07-2012
Micro Marcela
- Troca da fonte que estava queimada
- Atualiza��o do Avast
- Limpeza interna
- Desfragmenta��o de Disco')
,('24', '1', 'Exclusive Exchange Tour', 'Rua Belford Roxo', '129', 'Loja B', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3518-0611', '', '', 'Data: 06-09-2012
- Instala��o de um  HD novo no micro do Turismo
- Instala��o do Windows e de todos  os programas
- Configura��o  do micro em rede
- Instala��o da Impressora
- Verifica��o preventiva nos  micros

Data: 13-07-2012
- Formata��o do micro do Antonio, pois estava com v�rus
- Instala��o do Windows Original e de todos os programas
- Configura��o da impressora em rede
- Remo��o dos v�rus do Laptop do Tiago com o Combofix
')
,('25', '1', 'Alphonse', '', '', '', '', '', 'Rio de Janeiro', 'AC', 'PF', '', '', '(21)9329-7367', 'Data: 16-07-2012
- Teste de Disco - OK
- Limpeza interna no micro
- Combofix: Remo??oo de v?rus
- Windows: Atualiza??o do SO
- Avast: Atualiza??o
- Avast: Verifica??o completa do micro - OK
- Firefox: Atualiza??o para a vers?o 13
- Ajuste no particionamento do HD
- Atualiza??o do Ccleaner
- Atualiza??o do K-lite Mega Codec Pack
- Atualiza??o do Java
- Remo??o do Java antigo
- Limpeza dos tempor?rios
- Criado um Ponto de Restaura??o
- Verifica??o do Registro
- Teste de Desempenho (Benchmark PC Wizard 2008): 4028.51
- Foi detectado que a placa de v?deo n?o estava inicializando, o que causava o n?o aparecimento
da imagem. Placa retirada para teste.')
,('26', '1', 'Taranto', 'Rua dos Ara�jos', '11-A', 'Bl: 01 ap: 302', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '', '', '', 'Data: 26-07-2012
- Foi detectado que o Avast estava travando o micro
- Combofix: Verifica��o do micro - OK
- Avast: Reinstala��o do programa - Vers�o 7.0.1456
- Ccleaner: Atualiza��o do programa - vers�o 3.20
- Java: Atualiza��o do programa
- Spybot: Verifica��o do micro - Remo��o de Spywares
- Windows: Atualiza��o do sistema
- Avast: Verifica��o r�pida do sistema - OK
- Criado um ponto de restaura��o do sistema
- Ccleaner: Limpeza dos tempor�rios
- LibreOffice: Atualiza��o para a vers�o 3.5.5
- Auslogics Disk Defrag: Atualizado para a vers�o 3.4.3.5

Data: 16-03-2012
- Micro n�o iniciava pois estava com a mem�ria suja
- Limpeza interna no micro
- Instala��o do Ccleaner
- Remo��o da ASK Toolbar
- Remo��o do NitroPC
- Remo��o do RegistryBooster
- Verifica��o do micro com o Combofix - Remo��o de v�rus
- Remo��o do Java 6 Update 4
- Atualiza��o do Windows
- Atualiza��o do Avast
- Instala��o do Auslogick Disk Defrager
- Atualiza��o do Java
- Backup do Registro
- Atualiza��o do K-Lite Mega Codec Pack
- Instala��o do TeamViewer
- Instala��o do LibreOffice 3.5
- Limpeza dos tempor�rios
')
,('27', '1', 'Clinatran', 'Rua da Concei��o', '105', '806/807', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2203-0413', '(21)3244-2919', '', 'Data: 11-09-2012
- Instala��o de um pente de mem�ria
- Mem�ria DDR2-533 Markvision 01Gb

Data: 27-07-2012
- Limpeza interna no micro
- Java: Remo��o das vers�es antigas
- Ccleaner: Atualiza��o para a vers�o 3.20
- AVG: Remo��o do Software
- Combofix: verifica��o do Micro - Remo��o de V�rus
- Ccleaner: Limpeza dos tempor�rios
- MediaGet: Remo��o do Software
- Windows: Criado um ponto de restaura��o do sistema
- Avast: Instala��o do Softare
- Auslogic Disk Defrag: Instala��o do softare')
,('28', '1', 'Maria Aparecida de Souza Gon�alves', 'Rua Paulo Silva Ara�jo', '107-A', 'Casa 15 - 201', '', 'M�ier', 'Rio de Janeiro', 'RJ', 'PF', '(21)2269-7394', '', '(21)9644-1672', 'Data: 01-08-2012
- Windows: Atualiza��o do Sistema
- Ccleaner: Atualiza��o para a vers�o 3.20
- Nero: Remo��o do software
- Avast: Atualiza��o para a vers�o 7.0.1456
- Ashampoo: Instala��o do programa
- Avast: verifica��o r�pido do micro - ok
- Drive de CD/DVD: n�o est� gravando nem lendo CD
- Compartilhamento da Impressora
- Ccleaner: Limpeza dos tempor�rios
- Auslogic Disk Defrag: Atualiza��o do programa para a vers�o 3.4.3.5
- Auslogic: Desfragmenta��o de disco

Data: 27-01-2012
- Efetuada uma limpeza interna no micro
- Atualiza��o do Ccleaner
- Remo��o do CrossLoop
- Instala��o do TeamViewer
- Atualiza��o do Java
- Atualiza��o do K-Lite Mega Codec Pack
- Instala��o do Office Compatibilit Pack 2007
- Limpeza dos tempor�rios
- Criado um ponto de Restaura��o
- Verifica��o do Registro
- Atualiza��o do Windows')
,('29', '1', 'Viajes Norte Cambio e Turismo', 'Rua Nossa Senhora de Copacabana', '1022', 'LJ: A', '', 'Copacabana', 'Rio de janeiro', 'AC', 'PJ', '(21)2522-1898', '', '', 'Micro Francisco (virtual)
Data: 13-11-2012
- Foi instalada uma nova m�quina virtual com Wim7, pois o XP estava corrompendo muito

Micro Silvia (filial)
Data: 01-11-2012
- Micro da Silvia corrompeu o Windows
- Recupera��o do Windows com o cd

Testando a atualiza��o do cadastro!!!

Filial: 2247-9302')
,('30', '1', 'Maur�cio Beniacar', '', '', '', '', 'Catete', 'Rio de Janeiro', 'RJ', 'PF', '', '', '', 'Data: 06-08-2012
- Micro n�o iniciava pois o Cooler estava mal encaixado
- Avast: Atualiza��o do programa
- Avast: Verifica��o do Micro - Remo��o de v�rus
- Microsoft Security Essential - Remo��o do programa
- Combofix: Verifica��o do micro - Remo��o de v�rus
- Ccleaner: Instala��o do programa
- Ccleaner: Limpeza dos tempor�rios
- Windows: Criado um ponto de Restaura��o
- windows: Retirado o micro de hibernar
- Auslogic Disk Defrag: Instala��o do programa
- Auslogic Disk Defrag: Desfragmenta��o de disco')
,('31', '1', 'Helena Cristina', 'Rua Figueiredo Magalh�es', '122', '701', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2264-1378', '', '(21)9516-0182', 'Data: 20-03-2013
- Micro apresentando falha na resolu��o da tela, voltando para 1024/768;
- Limpeza interna do micro;
- Atualiza��o do Ccleaner;
- Atualiza��o do Avast 8.0;
- Remo��o da Ask Toolbar;
- Atualizado o LibreOffice para a vers�o 4.0.1;
- Atualizado o Firefox para a vers�o 19;
- Teste do micro com o Benchmark;
- Verifica��o do micro com o Combofix (remo��o de v�rus);

Data: 14-08-2012
- Micro estava travando por causa do Avast
- Avast: Atualizado para a vers�o 7.0
- Ccleaner: Atualizado para a vers�o 3.21
- Java: Desinstalada a vers�o 6.5
- Windows: Atualiza��o do sistema

Data: 13-02-2012
- Verifica��o do micro com o Combofix - Remo��o de V�rus
- Atualiza��o do Firefox
- Recupera��o do Avast
- Verifica��o do microm como Spybot - OK
- Atualiza��o do Adobe Reader
- Atualiza��o do LibreOffice
- Atualiza��o do Windows 7


Data: 25-01-2012
- Verifica��o da Mem�ria - OK
- Verifica��o do micro com o Avast
- Renova��o do Registro do Avast
- Atualiza��o do ccleaner
- Limpeza dos tempor�rios


Data: 21-09-2011
- Instala��o da Webcan Microsoft
- Atualiza��o do Firefox
- Criado ponto de restaura��o
- Atualiza��o do Windows')
,('32', '1', 'Paulo Pereira', 'Rua Dona Zulmira', '73', '104', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)3437-8997', '', '(21)9951-5581', 'Sandra Pereira: ppsan@oi.com.br 9356-8334
Data: 15-08-2012
- Instalado um HD NOvo
- Instala��o do Windows e de todos os programas')
,('33', '1', 'Leonardo Antonio dos Santos', 'Rua Barata Ribeiro', '502', '813', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2236-5248', '', '(21)9323-6637', 'Data: 25-09-2012
Micro Principal
- Limpeza Interna
- Instala��o de uma placa de rede
- Instala��o do Scribus
- Atualiza��o do Avast e do Ccleaner
Micro Antigo
- Atualiza��o do Avast
- Atualiza��o do Auslogic Disk Defrag
- Atualiza��o do Ccleaner
- Limpeza dos tempor�rios
- Desfragmenta��o de disco

Data: 17-08-2012
- Registro do Avast
- Instala��o do Inkscape
- Instala��o do Gimp
- Valida��o do InDesign
- Valida��o do Adobe Acrobat X Pro
- Combofix: verifica��o do micro - OK
- Defrag: desfragmenta��o de disco
- Ccleaner: Limpeza dos tempor�rios
- Ccleaner: Atualizado para a vers�o 3.21


Data: 30-08-2011
- Limpeza interna no micro
- Atualiza��o do Ccleaner
- Retirado a HP da inicializa��o
- Configura��o do Skype
- Verifica��o do micro com Spybot
- Verifica��o do micro com Avast
- Criado um ponto de restaura��o
- Desintala��o do CrossLoop
- Atualiza��o do K-Lite Mega Codeck Pack
- Instala��o do Defrag')
,('34', '1', 'Simone Soares Ferreira', 'Rua S�viana', '209', '', '', 'Graja�', 'Rio de Janeiro', 'RJ', 'PF', '(21)3684-5827', '', '(21)9121-2758', 'Data: 22-08-2012
- Limpeza interna no micro
- Combofix: verifica��o do micro - Remo��o de v�rus
- Java: Desinstala��o da vers�o antiga
- Linkury Smartbar - Desistala��o do software
- Ccleaner - Atualizado para a vers�o 3.21
- Firefox - Atualizado para a vers�o 14
- Windows - Atualiza��o do sistema
- firefox - Colocado no idioma Portugues
- Ccleaner - Limpeza dos tempor�rios
- Ccleaner - Verifica��o do registro
- Configurado o PortaldoEmpreendedor como favorito
')
,('35', '1', 'Shop Freezer', 'Rua Esmeraldino Bandeira', '67', '', '20961-080', 'Riachuelo', 'Rio de Janeiro', 'RJ', 'PJ', '2125012833', '2125012517', '', 'Data: 04-09-2012
- Limpeza interna do micro
- AVG: REmo��o do Software
- PSafe: Remo��o do Software
- ASK Tool Bar: Remo��o do Software
- Ccleaner: Instala��o do programa
- Ccleaner: Limpeza dos Tempor�rios
- Combofix: Verifica��o do Sistema - Remo��o de v�rus
- Windows: Remo��o da mensagem de software Pirata
- Iminent: Remo��o do Software
- Java: Atualiza��o do Software
- Otshot: Retirado o programa da inicializa��o do Windows
- Windows: Criado um ponto de restaura��o do Sistema
- Ccleaner: Verifica��o do Registro')
,('36', '1', 'Homero', 'Rua Jorge Hudge', '240', 'casa', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-8237', '', '(21)9487-2520', 'Izabel: 9496-3847

Data: 07-09-2012
- Instala��o do micro novo
- Backup dos Arquivos do micro Antigo
- Configura��o da Impressora
- Instala��o do Windows e de todos os programas')
,('38', '1', 'Helio Veloso', 'Rua Dona Zulmira', '112', '07', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)7817-2537', 'Data: 17-09-2012
- Tentativa de Recupera��o do Windows
- Formata��o do micro
- Instala��o de todos os programas
- Instala��o da impressora
- configura��o do roteador')
,('39', '1', 'Alberto Hugo', 'Rua Aristide Esp�nola', '52', '504', '', 'Leblon', 'Rio de Janeiro', 'AC', 'PF', '(21)2239-7235', '', '', 'Data: 21-09-2012
- Reconfigura??o da Rede Wireless
- Atualiza??o do Avast
- Atualiza??o do Windows e dos programas
- Remo??o da mensagem de software pirata do Windows
- Configura??o do Laptop em rede
- Manuten??o Geral')
,('40', '1', 'Jacson Bras de Andrade', 'R. Frederico Santoni, Rua D', '29', '', '20766-520', 'Engenho da Rainha', 'Rio de Janeiro', 'RJ', 'PF', '(21)4104-0608', '', '(21)7842-6974', 'Final da Frederico Santoni.

Styllo Loca��o

Data: 14-09-2012  OS: 1612
- Formata��o do Laptop
- Backup dos arquivos em DVD
- Instala��o do windows e dos programas
- Teste de HD - OK')
,('41', '1', 'Sergio Freitas', 'Rua Genaral Severiano', '76', 'Bl:2 ap: 610', '', 'Botafogo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2542-8967', '', '(21)9884-7775', 'Data: 28-09-2012
- Instala��o e configura��o do Roteador
- Instala��o do Avast Pro
- Suporte T�cnico
- Reconfigurado o Netbook para o Wireless
- Atualiza��o dos programas')
,('42', '1', 'Cibele Magalh�es', 'Rua Uruguai', '196', '702 Bl: b', '', 'Andara�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-0016', '', '(21)9662-2078', 'Data: 22-02-2013
- Atualiza��o do Windows;
- Reinstala��o do drive de DVD;
- Atualiza��o do Ccleaner;
- Atualiza��o do Java;
- Verifica��o do micro com Combofix - Remo��o de virus;
- Atualiza��o do Avast;
- Limpeza dos tempor�rios;
- Retirada a Atualiza��o autom�tica, pois a mesma estava dando problema;
- HD com problema, passando Scandisk direto quando liga;

Data: 05-10-2012
- Processo svchost do windows estava corrompido
- Atualiza��o do Windows e dos programas
- Desfragmenta��o de disco
- Instala��o de uma placa de v�deo AGP
- Manuten��o geral do micro')
,('43', '1', 'Edileusa Pereira ', 'Rua Nerval de Gouveia', '111', 'ap 101 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2594-5177', '', '(21)9618-5905', '')
,('44', '1', 'Letimar Pereira', 'Rua Nerval de Gouveia', '111', 'ap 102 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2593-8339', '', '', 'Data: 16-10-2012
- Remo��o da Ask Toolbar
- Remo��o do Psafe
- Remo��o do Babylon Object
- Combofix: Verifica��o do micro - Remo��o de v�rus
- LibreOffice: Atualiza��o para a vers�o 3.6
- Atualiza��o do Windows
- Verifica��o do Registro
- Spybot: Remo��o de spyware
- Limpeza dos tempor�rios

Data: 30-08-2011
- Foi trocado o processador pois o antigo havia queimado
- Micro apresentando tens�o do processador errarda na inicializa��o
	- Foi trocada a fonte de alimenta��o mas a mensagem persistiu
	- Verificada tens�o no BIOS do micro, e estava configurada de forma correta
- Atualiza��o do Ccleaner - V 3.10
- Atualiza��o do Firefox - V 6.0
- Limpeza dos tempor�rios
- Criado um ponto de restaura��o')
,('45', '1', 'Sueli Caldas Magalh�es', 'Rua Humait�', '135', '304', '', 'Humait�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2226-1199', '', '(21)9648-1672', 'Data: 08-05-2013
Inicio: 13:15   T�rmino: 14:57  Tempo: 01:42
- Remo��o do Psafe;
- Remo��o do McAffe Security Scan;
- Atualiza��o do Ccleaner;
- Remo��o do Browser Manager;
- Remo��o do Yontoo;
- Atualiza��o do Flash;
- Verifica��o dos cabos USB;
- Instala��o do LibreOffice;


Data: 17-10-2012
- Atualiza��o do Windows e programas
- Remo��o do v�rus DialPly
- Troca da fonte que havia queimado
- LImpeza interna no micro
- Placa Wireless est� desconectando v�rias vezes (trocar antena do Roteador)')
,('46', '1', 'Conted Assisistencia Cont�bil', 'Av. Presidente Vargas', '962', '1310', '', 'Centro', 'Rio de Janeiro', '', 'PJ', '(21)2263-2161', '(21)2518-1330', '', 'Data: 05-11-2012
- Instala��o do micro novo
- Configura��o do micro em rede
- Configura��o da impressora
- Recuperado o Windows do micro principal que havia corrompido

Data: 22-10-2012
- Remo��o e instala��o dos softwares da impressora HP Deskjet F2050;
- Remo��o do software da impressora Lexmark;
- Atualiza��o do Firefox;
- Atualiza��o do Team Viewer.')
,('47', '1', 'Elza Souza', 'Rua Carvalho Alvim', '73', '301', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-1695', '', '(21)9446-4512', 'Data: 08-11-2012
- Montagem do micro novo;
- Instala��o e configura��o dos programas;
- Atualiza��o do Sistema.')
,('48', '1', 'Danielle Pingitore', 'Rua Leopoldo', '193', '301', '', 'Andara�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2238-9043', '', '(21)9881-8539', 'Data: 09-11-2012
Micro Tio Dani
- Remo�ao de v�rus
- Atualiza�ao dos programas
- Instala��o do Gimp, Inkscape, Avast
- Verifica��o do Registro
- Limpeza dos tempor�rios')
,('50', '1', 'Reginaldo Ribeiro e Silva', 'Rua Conego Tobias', '130', 'casa 10', '', 'M�ier', 'Rio de Janeiro', 'RJ', 'PF', '(21)3472-4091', '', '(21)9851-8007', 'Data: 30-11-2012
- Troca do Gabinete do micro')
,('51', '1', 'Uriam Moraes', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9751-7983', '')
,('52', '1', 'Suzana', 'Rua Santa Am�lia', '5', '', '', '', '', 'RJ', 'PF', '(21)2273-1513', '', '', '')
,('53', '1', 'Limaloc', 'Estr. Adhemar Bebiano', '1813', '', '21050-630', 'Del Castilho', 'Rio de janeiro', 'AC', 'PJ', '(21)2583-0143', '(21)2218-8507', '', 'Atualiza')
,('54', '1', 'Jairo Debossan', 'Rua Bulhoes Carvalho', '329', '702', '', 'Copacabana', '', 'AC', 'PF', '(21)2247-4085', '', '(21)9973-2675', '')
,('55', '1', 'Maria Cec�lia', 'Rua Bar�o de Icara�', '21', '803', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2552-6988', '', '(21)9624-7562', 'Data: 19-01-2013
- Remo��o do AdThis Tool Bar
- Atualiza��o do Ccleaner
- Remo��o do ASK Toolbar
- Atualiza��o do LibreOffice 3.6
- Atualiza��o do Teamviewer para a vers�o 8
- Atualiza��o do Java 7.11
- Atualiza��o do Avast
- Atualiza��o do Firefox 18
- Verifica��o do micro com o Combofix - OK
- Limpeza dos tempor�rios
- Remo��o do PowerPoint Viewer
- Atualiza��o do Windows
- Desfragmenta��o de Disco
- Verifica��o do Registro
- Limpeza interna')
,('56', '1', 'Thiago - Exclusive', 'Rua Ana Leon�dia', '175', '102', '', 'Engenho de Dentro', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)7856-7707', 'Data: 21-01-2013 OS: 1646
- Instala��o do Ccleaner;
- Remo��o da Babylon Toolbar;
- Remo��o da Dealio Toolba;
- Remo��o do McAfee Security Scan;
- Remo��o do Norton Security Scan;
- Atualiza��o do Java 7.11;
- Renova��o do Registro do Avast;
- Atualiza��o do Avast 7;
- Instala��o do TeamViewer 8;
- Atualiza��o do Libre Office 3.6.4;
- Atualiza��o do Windows;
- Remo��o dos tempor�rios;
- Verifica��o do registro')
,('57', '1', 'Marcela Pastor Veloso', 'Rua D. Zulmira', '112', 'casa 7', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)9395-5435', 'Nextel: 7814-5910')
,('58', '1', 'Jacob Goldemberg', 'Av Nossa Senhora de Copacabana', '1003', '601', '22060-000', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2521-3345', '', '(21)9976-8988', 'Data: 23-02-2013
- Pasta de Entrada do Outlook Express corrompida;
- Efetuado backup da Cx de Entada e criada uma nova;
- Atualiza��o do Ccleaner;
- Remo��o do Java 6.35;
- Instala��o do TeamViewer;
- Atualiza��o do Firefox 19;
- Instala��o do Defrag;
- Limpeza dos tempor�rios;
- Verifica��o do Registro;
- Desfragmenta��o de disco;
')
,('59', '1', 'Eliana Moreira', 'Rua Ferreira Pontes', '430', 'BL 1/603', '20541-280', 'ANDARA�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-5754', '', '(21)8285-9688', 'Data: 25-02-2013
- Remo��o do Avast pois o mesmo estava travando;
- Verifica��o do micro com Combofix - Remo��o de v�rus;
- Atualiza��o do Ccleaner;
- Limpeza dos tempor�rios;
- Remo��o do PC Doctor;
- Desinstalado o LiveUpdate Nortom;
- Reinstala��o do Avast;
- Limpeza interna no micro;
- Atualiza��o do Auslogick Disk Defrag;
- Desfragmenta��o de disco;
- Atualiza��o do Windows')
,('60', '1', 'F�tima Lana', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9634-3990', '')
,('61', '1', 'Ana Claudia', 'RUA BARAO DE MESQUITA', '1021', '204', '', 'Graja�', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)8332-6796', 'Data: 04-03-2013
- Verifica��o de Superficie dos HDs - OK;
- Limpeza interna no micro;
- Instala��o do Ccleaner;
- Backup dos Arquivos para o Drive D;
- Remo��o da Barra de Ferramentas ALOT;
- Atualiza��o do Java 7.15;
- Instala��o do Auslogic Disk Defrag;
- Limpeza dos Tempor�rios;
- Verifica��o do micro com o Combofix: Remo��o de v�rus;
- Desfragmenta��o de Disco;
- Verifica��o do Registro;
- Efetuado teste de Desempenho: OK (benchmarck 3794.97)')
,('62', '1', 'Luiz Henrique', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9761-2004', 'Pai da Cl�udia')
,('63', '1', 'Silvia Santiago', 'Rua Senador Correia', '42', '306 bl:A', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2558-4175', '', '(21)8136-8975', 'Data: 05-04-2013
- Remo��o do PC Faster;
- Remo��o da Ask Tool Bar;
- Remo��o do Babyloon Tool Bar;
- Remo��o do Browser Protect;
- Remo��o do Hao123;
- Remo��o do Iminent;
- Verific�o do Micro com o Combofix - Remo��o de v�rus;
- Atualiza��o do Ccleaner;
- Instala��o do Auslogic Disc Defrag;
- Atualizado o LibreOffice (4.0.2);
- Remo��o do Luxor 3;
- Remo��o do Java 6 update 31;
- Limpeza dos tempor�rios;
- Verifica��o do Registro;
')
,('64', '1', 'Romi Cunha', '', '', '', '', '', 'Rio de janeiro', 'RJ', 'PF', '(21)2591-2645', '', '(21)9751-8892', 'Evangelizadora do CEBMA')
,('65', '1', 'Concei��o', '', '', '', '', '', '', 'AC', 'PF', '(21)6921-7525', '', '(21)9205-4439', 'Faxineira')
,('66', '2', 'Cliente Teste', 'Rua Uruguai', '22', '', '', '', '', 'AC', 'PF', '', '', '', '')
,('67', '2', 'Alberto Hugo', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '')
,('68', '1', 'cliente teste', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '')
,('69', '1', 'Empresa fict�cia', 'Rua Sem n�mero', '', '', '', '', '', 'AC', 'PJ', '', '', '', 'Teste de Grava��o!!!')
,('70', '1', 'Cadastro Novo', '', '', '', '', '', '', 'AC', 'PF', '', '', '', 'Gravando novo Cadastro com idEmpresa')
,('71', '2', 'Flavius Ferrari', 'Rua Bar�o de Mesquita', '796', '603', '', 'Andara�', '', 'RJ', 'PF', '', '', '', '')
,('72', '2', 'Empresa Teste', 'Teste', '', '', '', '', '', 'AC', 'PJ', '', '', '', 'Testando idEmpresa')
,('73', '1', 'Testando a grava��o', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '')
,('74', '1', '', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '')
;

#
# Criação da Tabela : clientespf
#

CREATE TABLE `clientespf` (
  `idPF` int(11) NOT NULL AUTO_INCREMENT,
  `idClientes` int(11) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nascimento` varchar(14) NOT NULL,
  UNIQUE KEY `idPF` (`idPF`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO clientespf VALUES ('2', '2', '076.198.037-77', 'm-8.326.569', 'flaviusferrari@globo.com', '24-1-1975')
,('3', '4', '', '', '', '01-1-1950')
,('4', '5', '', '', '', '01-1-1950')
,('5', '6', '', '', '', '01-1-1950')
,('6', '7', '', '', 'rrosa32med@hotmail.com', '01-1-1950')
,('7', '8', '', '', 'fcerole2009@hotmail.com', '01-1-1950')
,('8', '9', '', '', 'ameliacmoreira@yahoo.com.br', '01-1-1950')
,('9', '10', '', '', '', '01-1-1950')
,('10', '11', '', '', '', '01-1-1950')
,('11', '12', '', '', '', '01-1-1950')
,('12', '13', '', '', '', '01-1-1950')
,('13', '14', '', '', 'ayrpenedo@globo.com', '01-1-1950')
,('14', '15', '', '', 'otica.perfeicao@gmail.com', '01-1-1950')
,('15', '16', '', '', 'mbarbieri@master-coop.com.br', '01-1-1950')
,('16', '17', '', '', 'magalyecs@yahoo.com.br', '01-1-1950')
,('17', '18', '', '', 'moreira.im@uol.com.br', '01-1-1950')
,('18', '19', '', '', 'diretoria@allworldseguros.com.br', '01-1-1950')
,('19', '20', '', '', 'wilton.taranto@oi.com.br', '01-1-1950')
,('20', '21', '', '', '', '01-1-1950')
,('21', '22', '', '', 'anaroldao100@hotmail.com', '01-1-1950')
,('22', '23', '', '', 'fc.diego@uol.com.br', '01-1-1950')
,('23', '24', '', '', '', '01-1-1950')
,('24', '25', '', '', '', '1-12-1950')
,('25', '26', '', '', '', '01-0-1950')
,('26', '27', '', '', 'clinatran@yahoo.com.br', '01-1-1950')
,('27', '28', '', '', 'marycida.sg@gmail.com', '01-1-1950')
,('28', '30', '', '', '', '01-1-1950')
,('29', '31', '', '', 'helena.paula@terra.com.br', '01-1-1950')
,('30', '32', '', '', 'ppteaf@ig.com.br', '01-1-1950')
,('31', '33', '', '', 'leonlas@ig.com.br', '01-1-1950')
,('32', '34', '', '', 'simone-1313@hotmail.com', '01-1-1950')
,('33', '36', '', '', 'mitsuba@restaurantemitsuba.com.br', '01-1-1950')
,('35', '38', '', '', 'hveloso@webcorner.com.br', '01-1-1950')
,('36', '39', '', '', 'ahddn@hotmail.com', '01-2-1950')
,('37', '40', '', '', 'jacson@styllolocacao.com.br', '01-1-1950')
,('38', '41', '', '', '', '01-1-1950')
,('39', '42', '', '', 'cibelemags@yahoo.com.br', '01-1-1950')
,('40', '43', '', '', 'edileusa@profer.srv.br', '01-1-1950')
,('41', '44', '', '', '', '01-0-1950')
,('42', '45', '', '', 'suelicm@uol.com.br', '01-1-1950')
,('43', '47', '', '', 'elzasouza37@rocketmail.com', '01-1-1950')
,('44', '48', '', '', 'daniellepingitore@yahoo.com.br', '01-1-1950')
,('45', '50', '', '', 'r_ribeiro65@yahoo.com.br', '01-1-1950')
,('46', '51', '', '', 'uriam_moraes@ig.com.br', '01-1-1950')
,('47', '52', '', '', '', '01-1-1950')
,('48', '54', '', '', 'jdebossan@uol.com.br', '01-1-1950')
,('49', '55', '', '', 'mcsmartins@uol.com.br', '01-1-1950')
,('50', '56', '', '', '', '01-1-1950')
,('51', '57', '', '', 'cela_22@hotmail.com', '01-1-1950')
,('52', '58', '', '', 'jbgoldemberg@globo.com', '01-1-1950')
,('53', '59', '', '', 'claudiamslima@gmail.com', '01-1-1950')
,('54', '60', '', '', 'mfatimalana@hotmail.com', '01-1-1950')
,('55', '61', '', '', 'anaclaudiaarruda@ig.com.br', '01-1-1950')
,('56', '62', '', '', '', '01-1-1950')
,('57', '63', '', '', 'silviasantiago@terra.com.br', '01-1-1950')
,('58', '64', '', '', 'romi.cunha@hotmail.com', '01-1-1950')
,('59', '65', '', '', '', '01-1-1950')
,('60', '66', '', '', 'novo@endereco.com.br', '01-1-1950')
,('61', '67', '', '', 'ahddn@hotmail.com', '01-1-1950')
,('62', '68', '', '', '', '01-1-1950')
,('63', '70', '', '', 'novo@endereco.com.br', '01-1-1950')
,('64', '71', '', '', 'flaviusferrari@globo.com', '01-1-1950')
,('65', '73', '', '', '', '1-1-')
,('66', '74', '', '', '', '1-1-1950')
;

#
# Criação da Tabela : clientespj
#

CREATE TABLE `clientespj` (
  `idPJ` int(11) NOT NULL AUTO_INCREMENT,
  `idClientes` int(11) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `ins_est` varchar(20) DEFAULT NULL,
  `ins_mun` varchar(20) DEFAULT NULL,
  `contato` varchar(255) DEFAULT NULL,
  `email_contato` varchar(55) DEFAULT NULL,
  UNIQUE KEY `idPJ` (`idPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO clientespj VALUES ('1', '29', '', '', '', '', '')
,('2', '35', '', '', '222', '', '')
,('3', '46', '', '', '', '', '')
,('5', '53', '05.066.596/0001-46', '77.375.104', '323.001-5', '', '')
,('6', '69', '', '', '', '', '')
,('7', '72', '', '', '', '', '')
;

#
# Criação da Tabela : contatos
#

CREATE TABLE `contatos` (
  `IdContato` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` int(11) NOT NULL,
  `contato` varchar(255) NOT NULL,
  `setor` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `ramal` varchar(15) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  UNIQUE KEY `IdContato` (`IdContato`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO contatos VALUES ('1', '29', 'Elsa', 'Financeiro', '', '', '', '')
,('2', '46', 'Jos� Roberto', 'Respons�vel', '(21)6666-6969', '', 'undefined', 'conted@veloxmail.com.br')
,('3', '69', 'Emereciano', 'Recep��o', '', '123', 'undefined', 'seunome@email.com.br')
,('4', '69', 'Contato', 'Primeiro', '', '', '(21)9971-77913', 'novo@email.com.br')
,('6', '46', 'Novo contato Teste', '', '', '', '(21)9717-7913', '')
,('7', '46', 'Terceiro teste Contato', 'fafaf', '', '', '', 'alguma')
,('8', '46', 'Jorge', 'Secretaria', '(21)3238-1829', '62', '(21)99717-7913', 'jorger@veloxmail.com.br')
;

#
# Criação da Tabela : empresa
#

CREATE TABLE `empresa` (
  `idEmpresa` int(5) NOT NULL AUTO_INCREMENT,
  `nomeEmpresa` varchar(155) NOT NULL COMMENT 'Nome da Empresa',
  `codEmpresa` varchar(5) NOT NULL,
  PRIMARY KEY (`idEmpresa`),
  UNIQUE KEY `idEmpresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO empresa VALUES ('1', 'F F Cunha Telecomunica��es e Inform�tica ME', 'FFC01')
,('2', 'Empresa Teste', 'EMT02')
,('4', 'New teste 02', 'NEW02')
,('5', '', '')
;

#
# Criação da Tabela : ordem
#

CREATE TABLE `ordem` (
  `idOrdem` int(12) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(12) NOT NULL COMMENT 'Id Da empresa',
  `os` int(6) NOT NULL COMMENT 'N�mero da Ordem de Servi�o',
  `idCliente` int(5) NOT NULL COMMENT 'ID do Cliente',
  `data` date NOT NULL,
  `situacao` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'A' COMMENT 'Situa��o: A=aberta, M=modificada, F=fechada',
  `problema` text CHARACTER SET latin1 COMMENT 'Problema Relatado',
  `servico` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Servi�o Executado',
  `material` text CHARACTER SET latin1,
  `horaEntrada` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `horaSaida` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tempoTotal` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `valorInicial` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `valorExcedente` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `desconto` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `valorServico` varchar(12) NOT NULL,
  `valorMaterial` varchar(12) NOT NULL,
  `custoServico` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `obs` text CHARACTER SET latin1,
  PRIMARY KEY (`idOrdem`),
  UNIQUE KEY `idOrdem` (`idOrdem`),
  KEY `os` (`os`),
  KEY `idCliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO ordem VALUES ('1', '1', '1', '39', '2013-06-25', 'A', 'testando!!!!', 'ormem 1', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
,('2', '1', '2', '2', '2013-07-11', 'F', 'ddd', 'dfsda roupa suja se lava em casa!!!', '~~lll~0~
~~0~0~
~~jjj~0~
jj~~~0~0', '10:00', '12:00', '2:0', '65,00', '20,00', '0', '85.00', '0', '85.00', '')
,('3', '1', '3', '25', '2013-08-14', 'A', 'Ter� de ser a Ordem 3', 'sss fsfsfsfsdfsd', '1001~50~TT~5,00~250.00
1002~22~hhh~10,00~220.00
~~~0~0', '', '', '0:0', '0', '0', '0', '0.00', '320.00', '320.00', '')
,('4', '1', '4', '39', '2013-08-14', 'F', 'Segunda ordem teste', '', '222~01~jgjg~10,00~10.00', '', '', '', '0', '0', '0', '0', '0.00', '0', '')
,('6', '2', '1', '67', '2013-08-14', 'A', 'testando!!!!', 'ormem 1', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
,('7', '2', '2', '66', '2013-08-14', 'A', 'ggg', '', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
,('8', '2', '3', '66', '2013-08-14', 'A', 'Continuar� sendo a ordem 3', 'sss', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
,('9', '2', '4', '71', '2013-08-14', 'A', 'Pr�xima Ordem foi a 4', 'Ordem de n�mero 4', '~~~', '10:23', '12:51', '2:28', '0', '0', '0', '0.00', '0', '0.00', '')
,('10', '1', '5', '68', '2013-12-30', 'A', 'Inserindo material na ordem', '', '02~Pente de m�m�ria~50,00~100.00~', '', '', '0:0', '0', '0', '0', '0.00', '350.00', '350.00', '')
;

#
# Criação da Tabela : permissao
#

CREATE TABLE `permissao` (
  `idUsuario` int(5) NOT NULL,
  `idEmpresa` int(5) NOT NULL,
  `cadPF` varchar(10) NOT NULL COMMENT 'Acessa - Grava - Atualiza - Exclui',
  `cadPJ` varchar(10) NOT NULL,
  `ordem` varchar(10) NOT NULL,
  `especial` text NOT NULL,
  UNIQUE KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO permissao VALUES ('2', '1', '1-1-1-1', '1-1-1-1', '', '')
,('3', '1', '1-0-0-0', '1-0-0-0', '', '')
;

#
# Criação da Tabela : produtos
#

CREATE TABLE `produtos` (
  `idProduto` int(12) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL,
  `cod_produto` varchar(8) NOT NULL,
  `nome_produto` varchar(120) NOT NULL,
  `descri_produto` varchar(255) DEFAULT NULL,
  `valor` varchar(8) NOT NULL,
  `quantidade` int(12) NOT NULL COMMENT 'Quantidade em Estoque',
  `qtMinima` int(2) DEFAULT NULL COMMENT 'Quantidade M�nima',
  `foto_produto` varchar(80) DEFAULT NULL,
  `obs_produto` text NOT NULL,
  PRIMARY KEY (`idProduto`),
  UNIQUE KEY `idProduto` (`idProduto`),
  KEY `idProduto_2` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO produtos VALUES ('9', '1', 'f171', 'Produto teste', 'ddd', '', '0', '0', 'f171_1.jpg', '')
,('10', '1', 'F172', 'novo teste', '', '', '0', '0', 'F172_1.jpg', '')
,('11', '1', 'F173', 'XXX', '', '', '0', '0', 'F173_1.jpg', '')
,('12', '1', 'IMG01', 'Imagem 01', 'teste', '', '0', '0', 'IMG01_1.jpg', '')
,('13', '1', 'IMG02', 'Imagem 02', 'teste', '', '0', '2', 'IMG02_1.jpg', '')
,('16', '2', 'F172', 'troca', 'qqq', '', '0', '0', 'F172_2.jpg', '')
,('17', '1', 'IMG20', 'Teste de configura��o', 'config', '', '0', '0', 'IMG20_1.jpg', '')
;

#
# Criação da Tabela : usuarios
#

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL,
  `Login` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Senha` char(50) CHARACTER SET latin1 NOT NULL,
  `Nome` varchar(200) CHARACTER SET latin1 NOT NULL,
  `Email` varchar(200) CHARACTER SET latin1 NOT NULL,
  `Pergunta` varchar(200) NOT NULL,
  `Resposta` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

#
# Dados a serem incluídos na tabela
#

INSERT INTO usuarios VALUES ('1', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '', '', '')
,('2', '1', 'ffctechnologies', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Flavius Ferrari', 'flaviusferrari@globo.com', 'Qual sua m�sica favorita', 'Faroeste Caboclo')
,('3', '1', 'flavius', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Flavius Ferrari', 'flaviusferrari@globo.com', 'Qual a sua religi�o?', 'Espirita')
,('5', '2', 'user', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Usuário de Teste', '', '', '')
;
