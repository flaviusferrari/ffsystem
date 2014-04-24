-- Criando tabela: agenda
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO agenda VALUES ('1', '1', 'Teste', '', '2013-11-04', '12:45', 'Testando gravação', '')
INSERT INTO agenda VALUES ('2', '1', 'Reunião Styllo', '', '2013-11-12', '10:00', 'Norte Shooping - Centro empresarial 
Sala: 811', '')
INSERT INTO agenda VALUES ('3', '1', 'Helena Cristina', '', '2013-11-06', '10:00', 'Micro com problema no vídeo.', '')
INSERT INTO agenda VALUES ('4', '1', 'Helio Velloso', '', '2013-11-07', '10:00', 'Geral nos micros
Instalação do micro novo', '')
INSERT INTO agenda VALUES ('5', '1', 'Overcell', '', '2013-11-11', '10:00', 'Micro não está ligando;
Máquinas continuam lentas', '')
INSERT INTO agenda VALUES ('6', '1', 'Helen - Rogério', '', '2013-11-19', '14:30', 'Micro Muito lento', '')
INSERT INTO agenda VALUES ('7', '1', 'Jacob Goldenberg', '', '2013-11-27', '10:00', 'Micro não inicia', '')
INSERT INTO agenda VALUES ('8', '1', 'Viajes Norte - Filial', '', '2014-01-13', '10:00', 'Reunião sobre o sistema', '')
INSERT INTO agenda VALUES ('9', '1', 'Reunião Isabel', '', '2014-01-10', '15:00', 'Reunião sobre o sistema.
Confirmar antes.', '')
INSERT INTO agenda VALUES ('10', '1', 'Elza', '', '2014-01-20', '10:00', 'Micro com vírus', '')
INSERT INTO agenda VALUES ('11', '1', 'Sergio Freitas', '', '2014-03-21', '15:00', 'Verificação do Netbook', 'Consultório')
INSERT INTO agenda VALUES ('12', '1', 'Luiz Fernando', '', '2014-03-25', '10:00', 'Micro com vírus', '')
INSERT INTO agenda VALUES ('13', '1', 'Reunião sobre Sistema', '', '2014-03-24', '11:00', 'Exclusive Tour', '')
INSERT INTO agenda VALUES ('14', '1', 'Ayrton', '', '2014-03-28', '10:00', 'Instalação de programas no Laptop', '')


-- Criando tabela: clientes
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO clientes VALUES ('2', '1', 'Flavius Ferrari', 'Rua Bar�o de Mesquita', '796', '', '20540-004', '', 'Rio de janeiro', 'AC', 'PF', '', '', '', 'Teste de Atualiza��o!!!

Agora com dom�nio HTTP!!!')
INSERT INTO clientes VALUES ('3', '1', 'Flavius Ferrari', 'Rua Bar�o de Mesquita', '796', '', '', '', '', 'AC', 'PF', '', '', '', 'Segundo teste de Grava��o!!!')
INSERT INTO clientes VALUES ('4', '1', 'M�nica Lacerda', 'Av. Nossa Senhora de Copacabana', '680', 'ap: 613', '22050-900', 'Copacabana', 'Rio de janeiro', 'AC', 'PF', '(21)2549-4243', '', '(21)9964-8241', 'Senha Hostnet: 4r3e2w1q

Endere�o Resid?ncial: Rua Tonelero, 185 ap: 702

Data: 22-05-2012 (Residencia)
- Combofix: Verifica??o do micro -  Remo??o de v?rus
- Atualiza??o do Avast
- Reconfigura??o da conta de e-mail
- Avast: Escaneamento r?pido do sistema
- Reconfigura??o do Roteador
- Limpeza dos tempor?rios
- Netbook: Atualiza??o do Windows
	- Verifica??o do teclado
	- Limpeza dos tempor?rios')
INSERT INTO clientes VALUES ('5', '1', 'Ellen Teixeira', 'Rua Botucat�', '56', '903', '', 'Graja�', 'Rio  de Janeiro', 'RJ', 'PF', '(21)2238-6225', '', '(21)9834-7300', 'Data: 30-04-2012
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
INSERT INTO clientes VALUES ('6', '1', 'Fernando Fernandes', 'Av. Henrique Dodswort', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)9703-9838', 'Amigo da Ana Rold�o

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
INSERT INTO clientes VALUES ('7', '1', 'Rosa Alves', 'Av. Oswaldo Cruz', '106', '101', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2551-2282', '', '(21)9997-3811', 'Data: 02-05-2012
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
INSERT INTO clientes VALUES ('8', '1', 'Fernando Cerole', 'Rua Gonzaga Bastos', '259', 'casa 7', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2572-1296', '', '(21)9214-2010', 'Data: 09-10-2012
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
INSERT INTO clientes VALUES ('9', '1', 'Am�lia Cristina', 'Rua Ribeiro Guimar�es', '360', '501', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-9636', '', '(21)7941-3200', 'Data: 08-05-2012
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
INSERT INTO clientes VALUES ('10', '1', 'Val�ria Gullo', 'Rua Pontes Correa', '167', '503', '', 'Andara�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2208-7631', '', '(21)9613-6928', 'Data: 22-03-2013
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
INSERT INTO clientes VALUES ('11', '1', 'Renata Gondin', 'Rua Botucat�', '', '302', '', 'Graja�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-3234', '', '', 'Data: 11-05-2012
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
INSERT INTO clientes VALUES ('12', '1', 'Cl�nica AFGV', 'Pra�a Olavo Bilac', '28', '910', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2507-3175', '', '', 'Micro D. F�tima
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
INSERT INTO clientes VALUES ('13', '1', 'Jorge Delou', 'Rua Pontes Correa', '101', '103', '', 'Andara�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-7534', '', '', 'Filho da Angela Delou

Data: 15-05-2012
- Foi efetuado testes no HD antigo e verificou-se que o mesmo est� com defeito
- Troca do HD antigo por um novo
- Formata��o e instala��o de todos os programas
- Backup dos arquivos do HD Antigo pro Novo
- Recupera��o de arquivos do HD Antido
- Instala��o de um Gravador de DVD')
INSERT INTO clientes VALUES ('14', '1', 'Ayrton Penedo', 'Rua Visconde de Santa Isabel', '321', '804', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-2827', '', '(21)8131-8562', 'Data: 12-11-2012
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
INSERT INTO clientes VALUES ('15', '1', 'Ney Sarmento', 'Rua Major �vila', '200', 'Loja C', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-0775', '', '(21)8513-1615', 'Data: 30-05-2012
- Instala��o do sistema Otica no Laptop
- Instala��o do Avast
- Backup do Sistema
- Configura��o de um Backup di�rio (Cobian)
')
INSERT INTO clientes VALUES ('16', '1', 'Mastercoop Cooperativa', 'Rua Haddock Lobo', '11', 'sl: 701', '', 'Est�cio', 'Rio de Janeiro', 'RJ', 'PF', '(21)3796-0445', '', '(21)7871-4566', 'Data: 31-05-2012
Micro Paula
  - Recupera��o do Windows com Scandisk
  - Atualiza��o do Ccleaner
  - Remo��o do BrOffice 3.2
  - Instala��o do LibreOffice 3.5.4
  - Atualiza��o do Auslogic Disk Defrager 3.4.3.5
  - Atualiza��o do Flash
  - Limpeza dos tempor�rios
  - Desfragmenta��o dos Arquivos')
INSERT INTO clientes VALUES ('17', '1', 'Magaly Espinar da Costa', 'Rua Souto Carvalho', '40', '201', '', 'Engenho Novo', 'Rio de Janeiro', 'RJ', 'PF', '(21)3880-2592', '', '(21)9953-6537', 'Data: 04-06-2012
MICRO MAGALY 01
- Configurada a impressora para imprimir em rascunho (configura��o est� saindo)
- Instala��o do Skype
- Ajuste da WebCan
- Criada uma conta do Skype e configura��o do mesmo
- Suporte t�cnico')
INSERT INTO clientes VALUES ('18', '1', 'Irineu Moreira da Silva', 'Rua Domingos Lopes', '410', 'LJ: 101', '', 'Madureira', 'Rio de Janeiro', 'RJ', 'PF', '(21)3018-3211', '', '', 'Data: 26-10-2012
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
INSERT INTO clientes VALUES ('19', '1', 'Rosemary Duarte', 'Rua das Laranjeiras', '136', '402', '', 'Laranjeiras', 'Rio de Janeiro', 'RJ', 'PF', '(21)2233-7205', '(21)3903-6738', '(21)9969-0225', 'Data: 08-06-2012
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
INSERT INTO clientes VALUES ('20', '1', 'Wilton Taranto', 'Rua Conde de Bonfim', '289 A', '603', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '(21)2569-7225', '', '(21)9255-8199', 'Data: 10-07-2012
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
INSERT INTO clientes VALUES ('21', '1', 'Angela Delou', 'Rua', '', '', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)9612-8968', 'Data: 06-07-2012
- instala��o e configura��o do roteador novo (TP-Link)
- Atualiza��o do Ccleaner
- Atualiza��o do Avast
- Limpeza dos tempor�rios
- Desfragmenta��o de disco

Data: 18-01-2012
- Atualiza��o do Avast
- Atualiza��o do Ccleaner
- Remo��o da Mensagem se Windows pirata
- Atualiza��o do Java
- Compatibilidade dos arquivos do Office 2003 com os do Office 2007
- Atualiza��o do K-lite Mega Codec Pack
- limpeza dos tempor�rios
- Desfragmenta��o de Disco
- Backup dos arquivos')
INSERT INTO clientes VALUES ('22', '1', 'Ana Rold�o', 'Av Henrique Dodsworth', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)7140-7815', 'Data: 09-07-2012
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
INSERT INTO clientes VALUES ('23', '1', 'Flavia Diego', 'Rua Gon�alves Freire', '296', '404', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2254-8254', '', '(21)9916-3600', 'Data: 11-07-2012
Micro Marcela
- Troca da fonte que estava queimada
- Atualiza��o do Avast
- Limpeza interna
- Desfragmenta��o de Disco')
INSERT INTO clientes VALUES ('24', '1', 'Exclusive Exchange Tour', 'Rua Belford Roxo', '129', 'Loja B', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3518-0611', '', '', 'Data: 06-09-2012
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
INSERT INTO clientes VALUES ('25', '1', 'Alphonse', 'rua', '', '', '', '', 'Rio de Janeiro', 'AC', 'PF', '', '', '(21)9329-7367', 'Data: 16-07-2012
- Teste de Disco - OK
- Limpeza interna no micro
- Combofix: Remo��o de v�rus
- Windows: Atualiza��o do SO
- Avast: Atualiza��o
- Avast: Verifica��o completa do micro - OK
- Firefox: Atualiza��o para a vers�o 13
- Ajuste no particionamento do HD
- Atualiza��o do Ccleaner
- Atualiza��o do K-lite Mega Codec Pack
- Atualiza��o do Java
- Remo��o do Java antigo
- Limpeza dos tempor�rios
- Criado um Ponto de Restaura��o
- Verifica��o do Registro
- Teste de Desempenho (Benchmark PC Wizard 2008): 4028.51
- Foi detectado que a placa de v�deo n�o estava inicializando, o que causava o n�o aparecimento
da imagem. Placa retirada para teste.')
INSERT INTO clientes VALUES ('26', '1', 'Taranto', 'Rua dos Ara�jos', '11-A', 'Bl: 01 ap: 302', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '', '', '', 'Data: 26-07-2012
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
INSERT INTO clientes VALUES ('27', '1', 'Clinatran', 'Rua da Concei��o', '105', '806/807', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2203-0413', '(21)3244-2919', '', 'Data: 11-09-2012
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
INSERT INTO clientes VALUES ('28', '1', 'Maria Aparecida de Souza Gon�alves', 'Rua Paulo Silva Ara�jo', '107-A', 'Casa 15 - 201', '', 'M�ier', 'Rio de Janeiro', 'RJ', 'PF', '(21)2269-7394', '', '(21)9644-1672', 'Data: 01-08-2012
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
INSERT INTO clientes VALUES ('29', '1', 'Viajes Norte Cambio e Turismo', 'Rua Nossa Senhora de Copacabana', '1022', 'LJ: A', '', 'Copacabana', 'Rio de janeiro', 'RJ', 'PJ', '(21)2522-1898', '', '', 'Micro Francisco (virtual)
Data: 13-11-2012
- Foi instalada uma nova m�quina virtual com Wim7, pois o XP estava corrompendo muito

Micro Silvia (filial)
Data: 01-11-2012
- Micro da Silvia corrompeu o Windows
- Recupera��o do Windows com o cd

Testando a atualiza��o do cadastro!!!

Filial: 2247-9302')
INSERT INTO clientes VALUES ('30', '1', 'Maur�cio Beniacar', 'Rua Marqu�s de Abrantes', '100', '502', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)8892-2985', 'Data: 06-08-2012
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
INSERT INTO clientes VALUES ('31', '1', 'Helena Cristina', 'Rua Figueiredo Magalh�es', '122', '701', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2264-1378', '', '(21)9516-0182', 'Data: 20-03-2013
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
INSERT INTO clientes VALUES ('32', '1', 'Paulo Pereira', 'Rua Dona Zulmira', '73', '104', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)3437-8997', '', '(21)9951-5581', 'Sandra Pereira: ppsan@oi.com.br 9356-8334
Data: 15-08-2012
- Instalado um HD NOvo
- Instala��o do Windows e de todos os programas')
INSERT INTO clientes VALUES ('33', '1', 'Leonardo Antonio dos Santos', 'Rua Barata Ribeiro', '502', '813', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2236-5248', '', '(21)9323-6637', 'Data: 25-09-2012
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
INSERT INTO clientes VALUES ('34', '1', 'Simone Soares Ferreira', 'Rua S�viana', '209', '', '', 'Graja�', 'Rio de Janeiro', 'RJ', 'PF', '(21)3684-5827', '', '(21)9121-2758', 'Data: 22-08-2012
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
INSERT INTO clientes VALUES ('35', '1', 'Shop Freezer', 'Rua Esmeraldino Bandeira', '67', '', '20961-080', 'Riachuelo', 'Rio de Janeiro', 'RJ', 'PJ', '2125012833', '2125012517', '', 'Data: 04-09-2012
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
INSERT INTO clientes VALUES ('36', '1', 'Homero', 'Rua Jorge Hudge', '240', 'casa', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-8237', '', '(21)9487-2520', 'Izabel: 9496-3847

Data: 07-09-2012
- Instala��o do micro novo
- Backup dos Arquivos do micro Antigo
- Configura��o da Impressora
- Instala��o do Windows e de todos os programas')
INSERT INTO clientes VALUES ('38', '1', 'Helio Veloso', 'Rua Dona Zulmira', '112', '07', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)7817-2537', 'Data: 17-09-2012
- Tentativa de Recupera��o do Windows
- Formata��o do micro
- Instala��o de todos os programas
- Instala��o da impressora
- configura��o do roteador')
INSERT INTO clientes VALUES ('39', '1', 'Alberto Hugo', 'Rua Aristide Esp�nola', '52', '504', '', 'Leblon', 'Rio de Janeiro', 'RJ', 'PF', '(21)2239-7235', '', '', 'Data: 21-09-2012
- Reconfigura��o da Rede Wireless
- Atualiza��o do Avast
- Atualiza��o do Windows e dos programas
- Remo��o da mensagem de software pirata do Windows
- Configura��o do Laptop em rede
- Manuten��o Geral')
INSERT INTO clientes VALUES ('40', '1', 'Jacson Bras de Andrade', 'R. Frederico Santoni, Rua D', '29', '', '20766-520', 'Engenho da Rainha', 'Rio de Janeiro', 'RJ', 'PF', '(21)4104-0608', '', '(21)7842-6974', 'Final da Frederico Santoni.

Styllo Loca��o

Data: 14-09-2012  OS: 1612
- Formata��o do Laptop
- Backup dos arquivos em DVD
- Instala��o do windows e dos programas
- Teste de HD - OK')
INSERT INTO clientes VALUES ('41', '1', 'Sergio Freitas', 'Rua Genaral Severiano', '76', 'Bl:2 ap: 610', '', 'Botafogo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2542-8967', '', '(21)9884-7775', 'Data: 28-09-2012
- Instala��o e configura��o do Roteador
- Instala��o do Avast Pro
- Suporte T�cnico
- Reconfigurado o Netbook para o Wireless
- Atualiza��o dos programas')
INSERT INTO clientes VALUES ('42', '1', 'Cibele Magalh�es', 'Rua Uruguai', '196', '702 Bl: b', '', 'Andara�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-0016', '', '(21)9662-2078', 'Data: 22-02-2013
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
INSERT INTO clientes VALUES ('43', '1', 'Edileusa Pereira ', 'Rua Nerval de Gouveia', '111', 'ap 101 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2594-5177', '', '(21)9618-5905', '')
INSERT INTO clientes VALUES ('44', '1', 'Letimar Pereira', 'Rua Nerval de Gouveia', '111', 'ap 102 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2593-8339', '', '', 'Data: 16-10-2012
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
INSERT INTO clientes VALUES ('45', '1', 'Sueli Caldas Magalh�es', 'Rua Humait�', '135', '304', '', 'Humait�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2226-1199', '', '(21)9648-1672', 'Data: 08-05-2013
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
INSERT INTO clientes VALUES ('46', '1', 'Conted Assisistencia Cont�bil', 'Av. Presidente Vargas', '962', '1310', '', 'Centro', 'Rio de Janeiro', '', 'PJ', '(21)2263-2161', '(21)2518-1330', '', 'Data: 05-11-2012
- Instala��o do micro novo
- Configura��o do micro em rede
- Configura��o da impressora
- Recuperado o Windows do micro principal que havia corrompido

Data: 22-10-2012
- Remo��o e instala��o dos softwares da impressora HP Deskjet F2050;
- Remo��o do software da impressora Lexmark;
- Atualiza��o do Firefox;
- Atualiza��o do Team Viewer.')
INSERT INTO clientes VALUES ('47', '1', 'Elza Souza', 'Rua Jos� Higino', '58', '301', '', 'Tijuca', 'Rio de Janeiro', 'AC', 'PF', '(21)2571-1695', '', '(21)99446-4512', 'Data: 08-11-2012
- Montagem do micro novo;
- Instala��o e configura��o dos programas;
- Atualiza��o do Sistema.')
INSERT INTO clientes VALUES ('48', '1', 'Danielle Pingitore', 'Rua Leopoldo', '193', '301', '', 'Andara�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2238-9043', '', '(21)9881-8539', 'Data: 09-11-2012
Micro Tio Dani
- Remo�ao de v�rus
- Atualiza�ao dos programas
- Instala��o do Gimp, Inkscape, Avast
- Verifica��o do Registro
- Limpeza dos tempor�rios')
INSERT INTO clientes VALUES ('50', '1', 'Reginaldo Ribeiro e Silva', 'Rua Conego Tobias', '130', 'casa 10', '', 'M�ier', 'Rio de Janeiro', 'RJ', 'PF', '(21)3472-4091', '', '(21)9851-8007', 'Data: 30-11-2012
- Troca do Gabinete do micro')
INSERT INTO clientes VALUES ('51', '1', 'Uriam Moraes', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9751-7983', '')
INSERT INTO clientes VALUES ('52', '1', 'Suzana', 'Rua Santa Am�lia', '5', '', '', '', '', 'RJ', 'PF', '(21)2273-1513', '', '', '')
INSERT INTO clientes VALUES ('53', '1', 'Limaloc Distribuidora e Locadora de Equipamentos Ltda', 'Estr. Adhemar Bebiano', '1813', '', '21050-630', 'Del Castilho', 'Rio de janeiro', 'RJ', 'PJ', '(21)2583-0143', '(21)2218-8507', '', '')
INSERT INTO clientes VALUES ('54', '1', 'Jairo Debossan', 'Rua Bulhoes Carvalho', '329', '702', '', 'Copacabana', '', 'AC', 'PF', '(21)2247-4085', '', '(21)9973-2675', '')
INSERT INTO clientes VALUES ('55', '1', 'Maria Cec�lia', 'Rua Bar�o de Icara�', '21', '803', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2552-6988', '', '(21)9624-7562', 'Data: 19-01-2013
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
INSERT INTO clientes VALUES ('56', '1', 'Thiago - Exclusive', 'Rua Ana Leon�dia', '175', '102', '', 'Engenho de Dentro', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)7856-7707', 'Data: 21-01-2013 OS: 1646
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
INSERT INTO clientes VALUES ('57', '1', 'Marcela Pastor Veloso', 'Rua D. Zulmira', '112', 'casa 7', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)9395-5435', 'Nextel: 7814-5910')
INSERT INTO clientes VALUES ('58', '1', 'Jacob Goldemberg', 'Rua Macedo Sobrinho', '74', '504', '', 'Copacabana', 'Rio de Janeiro', 'AC', 'PF', '(21)2521-3345', '', '(21)9976-8988', 'Data: 23-02-2013
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
INSERT INTO clientes VALUES ('59', '1', 'Eliana Moreira', 'Rua Ferreira Pontes', '430', 'BL 1/603', '20541-280', 'ANDARA�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-5754', '', '(21)8285-9688', 'Data: 25-02-2013
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
INSERT INTO clientes VALUES ('60', '1', 'F�tima Lana', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9634-3990', '')
INSERT INTO clientes VALUES ('61', '1', 'Ana Claudia', 'RUA BARAO DE MESQUITA', '1021', '204', '', 'Graja�', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)8332-6796', 'Data: 04-03-2013
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
INSERT INTO clientes VALUES ('62', '1', 'Luiz Henrique', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9761-2004', 'Pai da Cl�udia')
INSERT INTO clientes VALUES ('63', '1', 'Silvia Santiago', 'Rua Senador Correia', '42', '306 bl:A', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2558-4175', '', '(21)8136-8975', 'Data: 05-04-2013
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
INSERT INTO clientes VALUES ('64', '1', 'Romi Cunha', '', '', '', '', '', 'Rio de janeiro', 'RJ', 'PF', '(21)2591-2645', '', '(21)9751-8892', 'Evangelizadora do CEBMA')
INSERT INTO clientes VALUES ('65', '1', 'Concei��o', '', '', '', '', '', '', 'AC', 'PF', '(21)6921-7525', '', '(21)9205-4439', 'Faxineira')
INSERT INTO clientes VALUES ('66', '1', 'Vigapetro', 'Rua Marqu�s de Abrantes', '100', '502', '', 'Flamengo', 'Rio de janeiro', 'RJ', 'PJ', '', '', '', '')
INSERT INTO clientes VALUES ('67', '1', 'Ana L�cia P. Oliveira', 'Travessa Jos� Bonif�cio', '46', '', '', 'Todos os Santos', 'Rio de janeiro', 'RJ', 'PF', '(21)2597-2470', '', '(21)8111-1989', '')
INSERT INTO clientes VALUES ('68', '1', 'Mitsuba', 'Rua S�o Francisco Xavier', '70', '', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PJ', '(21)2264-7284', '', '', '')
INSERT INTO clientes VALUES ('69', '1', 'Celso ', '', '', '', '', '', 'Rio de janeiro', 'RJ', 'PF', '', '', '(21)8173-4233', 'Genro do Cleonir')
INSERT INTO clientes VALUES ('70', '1', 'Luiz Fernando', 'Rua Mario Calderaro', '212', '', '', 'Engenho de Dentro', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)9739-2715', 'Carmem: 98480259')
INSERT INTO clientes VALUES ('71', '1', 'Styllo Loca��o', 'Rua Frederico Santoni, rua D', '29', '', '', 'Inha�ma', 'Rio de janeiro', 'AC', 'PJ', '(21)4104-0608', '', '', 'Rafael (suporte site): 3553-1395 / 2135-5326')
INSERT INTO clientes VALUES ('72', '1', 'Ligia Lurasky', 'Rua Carvalho Alvim', '73', '302', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '', '', '(21)9377-7719', '')
INSERT INTO clientes VALUES ('73', '1', 'Denise Advogada', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)7861-7418', '')
INSERT INTO clientes VALUES ('74', '1', 'Jos� Luiz Ferreira Reis', 'Rua Botucat�', '551', '902', '', 'Graja�', 'Rio de Janeiro', 'AC', 'PF', '(21)2570-4940', '(21)2238-2743', '(21)9955-3381', '')
INSERT INTO clientes VALUES ('75', '2', 'Teste PF', 'Rua Inventada', '171', '', '', '', '', 'AC', 'PF', '', '', '', 'Teste de acentua��o!!!')
INSERT INTO clientes VALUES ('76', '2', 'Empresa Teste', '', '', '', '', '', '', 'BA', 'PJ', '', '', '', '')
INSERT INTO clientes VALUES ('77', '1', 'Cl�vis Ant�nio Oliveira de Ara�jo', 'Av Maracan�', '1401', '202', '', 'Maracan�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-9860', '', '', '')
INSERT INTO clientes VALUES ('78', '3', 'Selco Veda��es Din�micas Ltda', 'Rua Bertoldo Klinger', '360', '', '09688-000', 'Vila Paulic�ia', 'S�o Bernardo do Campo', 'SP', 'PJ', '(11)4176-4056', '', '(11)4178-4492', 'Aparecido Pires - Coord. Vendas cel. 11992474950
apires@selcoved.com.br
Alexandre Batistela - Ger. Vendas - cel 11002479856
abatistela@selcoved.com.br
Vivian Sousa - tel. 11 4176-4006
vsouza@selcoved.com.br
Luiz Tachikawa - Engenharia - tel.11 4176-4027
cel. 11992479108
tachikawa@selcoved.com.br')
INSERT INTO clientes VALUES ('79', '1', 'Ma�ra Lauro', 'Rua Bar�o de Mesquita', '510', '405', '20540-156', 'Tijuca', 'Rio de janeiro', 'AC', 'PF', '(21)2288-4592', '', '', 'Beth (m�e) - 8411-5880
Ivan (irm�o) - 98935-4842')
INSERT INTO clientes VALUES ('80', '1', 'Overcell', 'Rua do Ros�rio', '170', '3 andar', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PJ', '', '', '', '')
INSERT INTO clientes VALUES ('81', '2', 'teste', '', '', '', '', '', '', 'AC', 'PF', '', '', '', 'fffffffggg')
INSERT INTO clientes VALUES ('82', '1', 'Jonil Feydit', 'Rua Itabaiana', '220', '203', '', 'Graja�', 'Rio de Janeiro', 'RJ', 'PF', '(21)2577-4387', '', '', '')
INSERT INTO clientes VALUES ('84', '1', 'Hidrario Equi. Hidraulicos e Pneum�ticos', 'Rua Darke de Matos', '233', 'Loja B', '21051-470', 'Higien�polis', 'Rio de Janeiro', 'RJ', 'PJ', '(21)2270-1449', '(21)2290-5636', '', '')
INSERT INTO clientes VALUES ('85', '1', 'Jo�o Seek', '', '', '', '', '', '', 'AC', 'PF', '(21)2620-8816', '', '(21)99462-7328', '')
INSERT INTO clientes VALUES ('86', '1', 'Z�lia', 'Rua Santa Clara', '220', '702', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2256-2816', '', '', '')
INSERT INTO clientes VALUES ('87', '1', 'F�tima Crispim', 'Rua Santa Am�lia ', '88', '206', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2273-9762', '', '(21)99636-1337', '')
INSERT INTO clientes VALUES ('88', '1', 'Paulo (Viajes Norte)', 'Rua Afonso Pena', '28', '301F', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '', '', '', '')
INSERT INTO clientes VALUES ('89', '1', 'Andreia Dentista', '', '', '', '', '', '', 'AC', 'PF', '(21)2578-7861', '', '', 'Dentista')


-- Criando tabela: clientespf
CREATE TABLE `clientespf` (
  `idPF` int(11) NOT NULL AUTO_INCREMENT,
  `idClientes` int(11) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nascimento` varchar(14) NOT NULL,
  UNIQUE KEY `idPF` (`idPF`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO clientespf VALUES ('2', '2', '076.198.037-77', '', 'flaviusferrari@globo.com', '24-1-1975')
INSERT INTO clientespf VALUES ('3', '4', '738.424.357-20', '', 'monicalacerda@rocketmail.com', '1-1-1950')
INSERT INTO clientespf VALUES ('4', '5', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('5', '6', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('6', '7', '', '', 'rrosa32med@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('7', '8', '', '', 'fcerole2009@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('8', '9', '', '', 'ameliacmoreira@yahoo.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('9', '10', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('10', '11', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('11', '12', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('12', '13', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('13', '14', '', '', 'ayrpenedo@globo.com', '01-1-1950')
INSERT INTO clientespf VALUES ('14', '15', '', '', 'otica.perfeicao@gmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('15', '16', '', '', 'mbarbieri@master-coop.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('16', '17', '', '', 'magalyecs@yahoo.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('17', '18', '', '', 'moreira.im@uol.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('18', '19', '', '', 'diretoria@allworldseguros.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('19', '20', '', '', 'wilton.taranto@oi.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('20', '21', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('21', '22', '', '', 'anaroldao100@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('22', '23', '', '', 'fc.diego@uol.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('23', '24', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('24', '25', '', '', '', '1-1-1950')
INSERT INTO clientespf VALUES ('25', '26', '', '', '', '01-0-1950')
INSERT INTO clientespf VALUES ('26', '27', '', '', 'clinatran@yahoo.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('27', '28', '', '', 'marycida.sg@gmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('28', '30', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('29', '31', '', '', 'helena.paula@terra.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('30', '32', '', '', 'ppteaf@ig.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('31', '33', '', '', 'leonlas@ig.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('32', '34', '', '', 'simone-1313@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('33', '36', '', '', 'mitsuba@restaurantemitsuba.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('35', '38', '', '', 'hveloso@webcorner.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('36', '39', '', '', 'ahddn@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('37', '40', '', '', 'jacson@styllolocacao.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('38', '41', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('39', '42', '', '', 'cibelemags@yahoo.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('40', '43', '', '', 'edileusa@profer.srv.br', '01-1-1950')
INSERT INTO clientespf VALUES ('41', '44', '', '', '', '01-0-1950')
INSERT INTO clientespf VALUES ('42', '45', '', '', 'suelicm@uol.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('43', '47', '', '', 'elzasouza37@rocketmail.com', '1-1-1950')
INSERT INTO clientespf VALUES ('44', '48', '', '', 'daniellepingitore@yahoo.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('45', '50', '', '', 'r_ribeiro65@yahoo.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('46', '51', '', '', 'uriam_moraes@ig.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('47', '52', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('48', '54', '', '', 'jdebossan@uol.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('49', '55', '', '', 'mcsmartins@uol.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('50', '56', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('51', '57', '', '', 'cela_22@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('52', '58', '', '', 'jbgoldemberg@globo.com', '1-1-1950')
INSERT INTO clientespf VALUES ('53', '59', '', '', 'claudiamslima@gmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('54', '60', '', '', 'mfatimalana@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('55', '61', '', '', 'anaclaudiaarruda@ig.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('56', '62', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('57', '63', '', '', 'silviasantiago@terra.com.br', '01-1-1950')
INSERT INTO clientespf VALUES ('58', '64', '', '', 'romi.cunha@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('59', '65', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('60', '67', '', '', 'ana.locs@gmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('61', '69', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('62', '70', '', '', '', '1-1-1950')
INSERT INTO clientespf VALUES ('63', '72', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('64', '73', '', '', '', '01-1-1950')
INSERT INTO clientespf VALUES ('65', '74', '', '', 'jlreis@globo.com', '01-1-1950')
INSERT INTO clientespf VALUES ('66', '75', '', '', 'teste@teste.com.br', '10-10-1990')
INSERT INTO clientespf VALUES ('67', '77', '', '', 'clovisaa@hotmail.com', '01-1-1950')
INSERT INTO clientespf VALUES ('68', '79', '', '', '', '1-1-1950')
INSERT INTO clientespf VALUES ('69', '81', '', '', '', '1-1-')
INSERT INTO clientespf VALUES ('70', '82', '', '', '', '1-1-')
INSERT INTO clientespf VALUES ('72', '85', '', '', '', '1-1-1950')
INSERT INTO clientespf VALUES ('73', '86', '', '', '', '1-1-1950')
INSERT INTO clientespf VALUES ('74', '87', '', '', 'fatima.crispim@yahoo.com.br', '1-1-1950')
INSERT INTO clientespf VALUES ('75', '88', '', '', '', '1-1-1950')
INSERT INTO clientespf VALUES ('76', '89', '', '', '', '1-1-1950')


-- Criando tabela: clientespj
CREATE TABLE `clientespj` (
  `idPJ` int(11) NOT NULL AUTO_INCREMENT,
  `idClientes` int(11) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `ins_est` varchar(20) DEFAULT NULL,
  `ins_mun` varchar(20) DEFAULT NULL,
  `contato` varchar(255) DEFAULT NULL,
  `email_contato` varchar(55) DEFAULT NULL,
  UNIQUE KEY `idPJ` (`idPJ`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO clientespj VALUES ('1', '29', '', '', '', '', '')
INSERT INTO clientespj VALUES ('2', '35', '', '', '222', '', '')
INSERT INTO clientespj VALUES ('3', '46', '', '', '', '', '')
INSERT INTO clientespj VALUES ('5', '53', '05.066.596/0001-46', '77.375.104', '323.001-5', '', '')
INSERT INTO clientespj VALUES ('6', '66', '', '', '', '', '')
INSERT INTO clientespj VALUES ('7', '68', '', '', '', '', '')
INSERT INTO clientespj VALUES ('8', '71', '', '', '', '', '')
INSERT INTO clientespj VALUES ('9', '76', '', '', '', '', '')
INSERT INTO clientespj VALUES ('10', '78', '53.902.607/0001-23', '', '', '', '')
INSERT INTO clientespj VALUES ('11', '80', '', '', '', '', '')
INSERT INTO clientespj VALUES ('12', '84', '', '', '', '', '')


-- Criando tabela: contatos
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO contatos VALUES ('1', '29', 'Elsa', 'Financeiro', '', '', '', 'viajesnortefin@terra.com.br')
INSERT INTO contatos VALUES ('2', '46', 'Jos� Roberto', 'Respons�vel', '', '', 'undefined', 'conted@veloxmail.com.br')
INSERT INTO contatos VALUES ('3', '80', 'Sandra', 'Gerente', '', '', 'undefined', '')
INSERT INTO contatos VALUES ('4', '84', 'Sheila', 'Recep��o', '', '', '', '')
INSERT INTO contatos VALUES ('5', '71', 'Comercial 1', '', '(21)2593-7662', '', '', '')
INSERT INTO contatos VALUES ('6', '71', 'Comercial 2', '', '(21)2289-4930', '', '', '')


-- Criando tabela: empresa
CREATE TABLE `empresa` (
  `idEmpresa` int(5) NOT NULL AUTO_INCREMENT,
  `nomeEmpresa` varchar(155) NOT NULL COMMENT 'Nome da Empresa',
  `codEmpresa` varchar(5) NOT NULL,
  PRIMARY KEY (`idEmpresa`),
  UNIQUE KEY `idEmpresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO empresa VALUES ('1', 'F F Cunha Telecomunica��es e Inform�tica ME', 'FFC01')
INSERT INTO empresa VALUES ('2', 'Empresa Teste', 'EMT02')
INSERT INTO empresa VALUES ('3', 'Profer', 'PRO03')


-- Criando tabela: ordem
CREATE TABLE `ordem` (
  `idOrdem` int(12) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL,
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
  KEY `idCliente` (`idCliente`),
  KEY `idOrdem` (`idOrdem`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO ordem VALUES ('25', '2', '1', '75', '2013-08-22', 'A', 'Abrindo para testar', '', '2~Teste~50,00~100.00
1~~20,00~20.00', '', '', '0:0', '10,00', '0', '0', '10.00', '120.00', '130.00', '')
INSERT INTO ordem VALUES ('1', '1', '1700', '2', '2013-05-23', 'F', 'Micro travando;', 'Segundo teste de Grava��o;', '~~~', '10:25', '11:59', '1:34', '120,00', '0', '0', '', '', '120.00', 'testando o cliente')
INSERT INTO ordem VALUES ('2', '1', '1701', '27', '2013-05-24', 'F', 'Instala��o do micro novo;', 'Formata��o e instala��o dos softwares no micro novo;
Instala��o da Habilita��o Digital;
Instala��o da Impressora;', '~~~', '', '', '', '100,00', '50,00', '0', '', '', '150.00', 'Foi instalado o micro antigo de backup enquanto o novo era configurado.')
INSERT INTO ordem VALUES ('3', '1', '1702', '29', '2013-05-27', 'F', '', 'Instala��o da fonte no micro do Francisco;
Verifica��o do HD externo;
Atualiza��o do Ubuntu;
Manuten��o Geral nos micros;
suporte T�cnico;', '01~Fonte ATX 450W C3Tech~100,00~100,00', '', '', '', '120,00', '0', '0', '', '', '220.00', '')
INSERT INTO ordem VALUES ('4', '1', '1703', '43', '2013-05-31', 'F', 'Montagem do micro;', 'Montagem do micro;
Configura��o da Impressora;
Instala��o da impressora em rede;
Atualiza��o dos programas;
Configura��o do e-mail;', '~~~', '10:24', '13:32', '3:8', '100,00', '40,00', '20,00', '', '', '120.00', '')
INSERT INTO ordem VALUES ('5', '1', '1704', '38', '2013-05-31', 'F', 'Micro n�o conecta na Internet;', 'foi verificado que a placa de rede Wireless estava com mal contato no slot;
atualiza��o do windows;
Atualiza��o do libreoffice;
Manten��o preventiva;
Atualiza��o dos programas;
Desfragmenta��o de disco;', '~~~', '16:12', '17:18', '1:6', '80,00', '0', '0', '', '', '80.00', '')
INSERT INTO ordem VALUES ('6', '1', '1705', '29', '2013-06-04', 'F', '', 'Suporte T�cnico Extra;', '~~~', '', '', '', '300,00', '0', '0', '', '', '300.00', 'Manutenção do Servidor.')
INSERT INTO ordem VALUES ('7', '1', '1706', '29', '2013-06-05', 'F', '', 'Instala��o do Windows e todos os programas no HD Externo do Edson;
Instala��o do HD externo;
Suporte T�cnico;', '~~~', '12:00', '14:00', '2:0', '120,00', '0', '0', '', '', '120.00', '')
INSERT INTO ordem VALUES ('8', '1', '1715', '30', '2013-06-06', 'F', 'Micro n�o est� ligando;', 'Remo��o de v�rus;
Limpeza interna no micro;
Atualiza��o do Windows e dos programas;
Desfragmenta��o de disco;
Verifica��o do Registro;', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '20,00', '', '', '60.00', '')
INSERT INTO ordem VALUES ('9', '1', '1716', '66', '2013-06-06', 'F', 'Desenvolvimento do sistema', '', '~~~', '10:00', '12:00', '2:0', '50,00', '0', '0', '', '', '50.00', '')
INSERT INTO ordem VALUES ('10', '1', '1717', '24', '2013-06-06', 'A', 'Micro em Ingl�s;', 'Formata��o do micro; 
Instala��o de todos os programas;
Atualiza��o do Windows;
Particionamento do HD;', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '0', '', '', '80.00', '')
INSERT INTO ordem VALUES ('11', '1', '1718', '67', '2013-06-07', 'F', 'Micro com problema ao ligar;
Micro muito lento;', 'Limpeza interna do micro;
Verifica��o do HD e mem�ria;
Troca da mem�ria;
Atualiza��o do Windows e dos programas;
Reinstala��o do chrome;
Desfragmenta��o de disco;
Verifica��o do Registro;
Remo��o de V�rus;', '01~Mem�ria DDR2 800 Markvision~85,00~85,00
~~0~0', '10:00', '12:00', '2:0', '80,00', '0', '5,00', '75.00', '85.00', '160.00', '')
INSERT INTO ordem VALUES ('12', '1', '1719', '59', '2013-06-11', 'F', 'Laptop da Claudia n�o inicia o Windows;', 'Foram efetuados testes e verificou-se que o Laptop estava com o Windows corrompido, sendo necess�rio formatar o mesmo;
Particionamento do HD;
Backup dos Arquivos;
Instala��o do Windows e dos programas;
Atualiza��o do Windows;', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '0', '', '', '80.00', '')
INSERT INTO ordem VALUES ('13', '1', '1720', '68', '2013-06-15', 'F', 'Micro ao lado do caixa n�o est� reconhecendo o HD;', 'Foi constatado que o cabo flat estava comproblema, sendo o mesmo trocado;
Limpeza interna do micro;
Verifica��o do HD;
Atualiza��o dos programas;
Remo��o de v�rus;
Desfragmenta��o de Disco;
Verifica��o do Registro;', '~~~', '10:00', '12:00', '2:0', '100,00', '0', '0', '', '', '100.00', 'Foi pego um taxi para trazer o micro.')
INSERT INTO ordem VALUES ('14', '1', '1721', '26', '2013-06-27', 'F', 'Micro antigo n�o inicia;', 'Foi constatado que a mem�ria estava suja, impedindo que o micro inicia-se;
Limpeza interna do micro;
Atualiza��o dos programas do micro novo;
Instala��o do Nero;
Suporte T�cnico;', '~~~', '11:23', '12:23', '1:0', '80,00', '0', '0', '', '', '80.00', '')
INSERT INTO ordem VALUES ('15', '1', '1722', '29', '2013-06-30', 'A', '', 'Suporte T�cnico mensal', '~~~', '', '', '', '300,00', '0', '0', '', '', '300.00', '')
INSERT INTO ordem VALUES ('16', '1', '1723', '71', '2013-07-10', 'F', 'Cria��o de E-mail;
Configura��o dos e-mails no micro;', 'Foram criados os e-mails financeiro@styllolocacao.com.br e expedicao@styllolocacao.com.br;
Configurados os e-mails no micro;
Atendimento remoto;', '~~~', '10:00', '11:30', '1:30', '35,00', '0', '0', '', '', '35.00', 'Serviços executados de forma remota.')
INSERT INTO ordem VALUES ('17', '1', '1724', '45', '2013-07-26', 'A', 'Instala��o e configura��o do micro novo;', 'Montagem do micro;
Instala��o de todos os programas;
Backup dos arquivos do micro antigo;
Instala��o da impressora em rede;
Configura��es Gerais;', '~~~', '11:35', '14:10', '2:35', '120,00', '40,00', '0', '160.00', '0', '160.00', '')
INSERT INTO ordem VALUES ('18', '1', '1725', '42', '2013-07-27', 'A', 'Instala��o e configura��o do micro novo;', 'Instala��o do Win XP e todos os programas;
Backup dos arquivos do HD antigo;
Configura��o da impressora; ', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '0', '80.00', '', '80,00', '')
INSERT INTO ordem VALUES ('19', '1', '1726', '53', '2013-07-30', 'A', 'Micro da Lidiane travando;', 'Foi efetuada uma manuten��o geral no micro;
Atualiza��o dos programas;
Verifica��o dos micros da empresa;', '~~~', '11:35', '13:39', '2:4', '120,00', '40,00', '0', '160.00', '0', '160.00', '')
INSERT INTO ordem VALUES ('20', '1', '1727', '4', '2013-08-06', 'F', 'Micro muito lento;', 'Instala��o de um pente de mem�ria;
Limpeza interna;
Desfragmenta��o de disco;
Atualiza��o dos programas;
Verifica��o do Registro;', '01~Mem�ria DDR2-667 Markvision 01Gb~25,00~25.00', '11:00', '13:00', '2:0', '120,00', '0', '20,00', '100.00', '25,00', '125.00', '')
INSERT INTO ordem VALUES ('21', '1', '1728', '74', '2013-08-15', 'A', 'Micro faltando algumas configura��es;', 'Configura��o do micro;
Reinstala��o da impressora;
Instala��o do Teamviewer;
Remo��o de v�rus com o Combofix;
Suporte T�cnico;', '~~~', '14:57', '16:46', '1:49', '80,00', '0', '0', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('22', '1', '1729', '10', '2013-08-16', 'F', 'Micro n�o recebe e-mail;', 'Reconfigura��o do e-mail Domain;
Atualiza��o dos programas;
Verifica��o da impressora;', '~~~', '10:22', '10:59', '0:37', '80,00', '0', '30,00', '50.00', '0', '50.00', '')
INSERT INTO ordem VALUES ('23', '1', '1730', '12', '2013-08-19', 'F', 'Micro da D. F�tima n�o liga, fica apitando;', 'Efetuada uma limpeza na mem�ria e na placa de v�deo;
Atualiza��o do Windows e dos programas;
Manuten��o preventiva nos micros;
Desfragmenta��o do micro;
Verifica��o do registro;', '~~~', '10:41', '12:20', '1:39', '80,00', '0', '0', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('24', '1', '1731', '0', '2013-05-23', 'A', 'Micro sem defeito;', 'Manuten��o preventiva;
Avast;
Desfragmenta��o de Arquivos;
Atualiza��o do Windows;
Backup dos arquivos;', '~~~', '10:26', '12:38', '2:12', '120,00', '20,00', '5,00', '', '', '135.00', '')
INSERT INTO ordem VALUES ('26', '2', '2', '76', '2013-08-22', 'A', 'tttt', '', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
INSERT INTO ordem VALUES ('27', '1', '1732', '29', '2013-08-27', 'F', 'Impressora em rede da filial est� travando;
configurar scanner no Ubuntu da matriz;', 'Configurada a impressora no micro da frente;
Configurado o compartilhamento das impressoras;
Reconfigurada a rede e o scanner no Ubuntu;
Atualiza��o do LibreOffice nos micros;
Manuten��o geral das m�quinas;
Remo��o de v�rus;', '~~~', '11:26', '16:33', '5:7', '120,00', '120,00', '40,00', '200.00', '0', '200.00', '')
INSERT INTO ordem VALUES ('28', '1', '1733', '77', '2013-08-28', 'A', 'Laptop da esposa n�o acessa a internet, cai toda hora;', 'Foi detectado que os roteadores estavam em conflito;
Atualiza��o dos programas nos micros;
Reconfigura��o do roteador D-link;
Remo��o de v�rus no laptop;
Manuten��o preventiva nos micros;
Suporte t�cnico; ', '~~~', '14:12', '16:29', '2:17', '80,00', '20,00', '20,00', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('29', '1', '1734', '29', '2013-09-02', 'A', 'Micro do Turismo resetando;', 'Foi verificado que o micro estava com v�rus;
Verifica��o do micro do Felipe;
Atualiza��o dos programas;', '~~~', '11:08', '13:19', '2:11', '120,00', '20,00', '0', '140.00', '0', '140.00', '')
INSERT INTO ordem VALUES ('30', '1', '1735', '53', '2013-09-03', 'A', 'Internet n�o funciona;', 'Foram efetuados diversos testes e verificou-se que o problema era no provedor da Telemar, foi modificado junto da mesma o provedor e reconfigurado o modem velox;', '~~~', '13:40', '15:07', '1:27', '120,00', '0', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('31', '1', '1736', '34', '2013-09-06', 'F', 'Micro n�o liga;', 'Foram efetuados testes e verficou-se que a mem�ria estava com mal contato;
Atualiza��o dos programas;
Remo��o de v�rus;
Manuten��o Geral(registro, tempor�rios, desfragmenta��o);
Suporte T�cnico', '~~~', '10:42', '12:03', '1:21', '100,00', '0', '20,00', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('32', '1', '1737', '14', '2013-09-09', 'A', 'Micro n�o liga;', 'Foi constatado que o bot�o do monitor estava desligado;
Efetuada uma limpeza interna;
Atualiza��o dos programas;
Instala��o da Impressora;
Suporte t�cnico;', '~~~', '14:53', '15:16', '0:23', '80,00', '0', '50,00', '30.00', '0', '30.00', '')
INSERT INTO ordem VALUES ('33', '1', '1738', '32', '2013-09-10', 'F', 'Micro muito lento;
Micro apresentando mensagem de software pirata;', 'Foi removida a mensagem de software pirata;
Atualiza��o dos programas;
Manuten��o Geral (desfragmenta��o, limpeza dos tempor�rios, registro);
Remo��o de programas (ASK Toolbar, Norton Security);', '~~~', '14:16', '16:33', '2:17', '100,00', '20,00', '20,00', '100.00', '0', '100.00', '')
INSERT INTO ordem VALUES ('34', '1', '1739', '54', '2013-09-11', 'F', 'Manuten��o geral;
', 'Verfica��o do micro com o combofix;
Remo��o de v�rus;
Atualiza��o do LibreOffice;
Atualiza��o dos programas;
Desfragmenta��o, limpeza dos tempor�rios, registro;
Suporte T�cnico;', '~~~', '11:27', '13:35', '2:8', '120,00', '20,00', '20,00', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('35', '1', '1740', '43', '2013-09-19', 'F', 'Instala��o do Office;
Manuten��o geral;', 'Instala��o do Office 2010 nos micros;
Atualiza��o dos programas;
Suporte T�cnico', '~~~', '10:45', '13:09', '2:24', '100,00', '20,00', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('36', '1', '1741', '31', '2013-09-20', 'F', 'Micro n�o liga;', 'Foi constatado que a placa-m�e havia queimado devido a a��o da Maresia;
Troca da placa-m�e;
Manuten��o geral;', '~~~', '10:00', '12:00', '2:0', '120,00', '0', '0', '120.00', '0', '120.00', 'Foi detectado o mesmo defeito que vinha ocorrendo antes da placa queimar (tela ficava quadriculada e travava o micro). Foi trocado o monitor e ser� trocado o estabilizador por um no-Breack. 06-11-2013')
INSERT INTO ordem VALUES ('37', '1', '1742', '39', '2013-09-27', 'F', 'Internet n�o funciona;
Reinstala��o do Office;', 'Foi constatado que o roteador estava ligado de forma errada;
Foram efetuados testes e verificou-se que a placa de v�deo est� com problema;
Instala��o dos programas;
Instala��o do Office 365;
Remo��o de v�rus do laptop;', '~~~', '10:48', '13:35', '2:47', '140,00', '40,00', '20,00', '160.00', '0', '160.00', '')
INSERT INTO ordem VALUES ('38', '1', '1743', '29', '2013-09-27', 'F', 'HD Externo do Francisco n�o abre;', 'Foi constatado que o HD externo havia dado problema;
Instalado e configurado um novo HD Externo;
Verifica��o do micro do Paulo;', '~~~', '15:15', '17:56', '2:41', '120,00', '40,00', '20,00', '140.00', '0', '140.00', '')
INSERT INTO ordem VALUES ('39', '1', '1744', '80', '2013-10-03', 'F', 'Micro do Back Office n�o abre;', 'Foi restaurado o micro para um ponto anterior;
Manuten��o geral dos micros (desfragmenta��o, registro);
Remo��o de v�rus dos micros;
Atualiza��o dos programas;
Remo��o de barras dos navegadores;', '~~~', '11:41', '16:19', '4:38', '100,00', '120,00', '30,00', '190.00', '0', '190.00', 'Foi efetuada uma nova verifica��o dos micros pois alguns estavam travando e n�o iniciando.')
INSERT INTO ordem VALUES ('40', '1', '1745', '41', '2013-10-10', 'F', 'Ubuntu n�o acessa o Banco do Brasil;', 'Instalado e configurado o plugin Java no Firefox para acesso ao BB;
Renovada a assinatura do Avast;
Remo��o de programas e v�rus do Netbook;
Atualiza��o do Ubuntu;
Atualiza��o do Avast;', '~~~', '11:03', '14:05', '3:2', '120,00', '40,00', '20,00', '140.00', '0', '140.00', '')
INSERT INTO ordem VALUES ('41', '1', '1746', '82', '2013-10-16', 'F', 'Instala��o de um micro novo;', 'Instalado o micro;
Configura��o do micro;
Backup dos arquivos do micro antigo;
Atualiza��o dos programas;
Foi verificado que a impressora estava com defeito;', '~~~', '10:48', '13:21', '2:33', '100,00', '20,00', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('42', '1', '1747', '46', '2013-10-21', 'F', 'Instala��o do micro novo;', 'Montagem e instala��o do micro novo;
Configura��o da impressora e da rede do micro novo;
Instala��o dos programas b�sicos;
Instala��o do Sefip e da Conectividade Social;
Limpeza dos tempor�rios e desfragmenta��o do Micro Principal;
Transfer�ncia da Base de Dados do Sefip;', '~~~', '10:05', '13:40', '3:35', '100,00', '60,00', '0', '160.00', '0', '160.00', '')
INSERT INTO ordem VALUES ('43', '1', '1748', '29', '2013-10-22', 'F', 'Amadeus do Paulo n�o entra;', 'Foi constatado que o Atalho para a inicializa��o do Amadeus havia sido removido pelo Avast, foi reconfigurado a inicializa��o do Amadeus;
Renovada a senha do Amadeus da Greice;
Atualiza��o do Windows e programas no micro do Paulo;
Reconfigurado a inicializa��o do Amadeus na filial;', '~~~', '11:00', '12:57', '1:57', '120,00', '0', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('44', '1', '1749', '47', '2013-11-01', 'F', 'Micro muito lento;', 'Foram exclu�dos diversos programas que tornavam o micro lento;
Limpeza dos tempor�rios;
Atualiza��o dos programas;
Remo��o dos v�rus com o Combofix;
Instala��o do Avast;', '~~~', '10:54', '13:00', '2:6', '100,00', '0', '0', '100.00', '0', '100.00', '')
INSERT INTO ordem VALUES ('45', '1', '1750', '84', '2013-11-07', 'F', 'Configura��o do micro novo;', 'Configura��o e instala��o dos programas do micro novo;
Configura��o do micro novo na rede;
Verifica��o geral das m�quinas (registro, tempor�rios);
Remo��o de v�rus;
Atualiza��o dos programas;
Suporte T�cnico;', '~~~', '11:02', '13:38', '2:36', '120,00', '40,00', '20,00', '140.00', '0', '140.00', '')
INSERT INTO ordem VALUES ('46', '1', '1751', '71', '2013-11-12', 'F', 'Geral nos micros;', 'Instala��o e configura��o do Thunderbird nos micros;
Reinstala��o do Avast no micro do Carlinhos;
Configura��o das assinaturas nos e-mails;
Suporte t�cnico;', '~~~', '10:47', '12:25', '1:38', '120,00', '0', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('47', '1', '1752', '59', '2013-11-12', 'F', 'Laptop da Claudia com v�rus;', 'Remo��o dos v�rus;
Atualiza��o dos programas;
', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '0', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('48', '1', '1753', '5', '2013-11-19', 'F', 'Micro muito lento;', '- Remo��o da Ask Toolbar;
- Remo��o do Songr;
- Atualiza��o do Firefox;
- Verifica��o do micro com o Combofix (Remo��o de v�rus);
- Removido o Msn;
- Remo��o do video Download Converter;
- Atualiza��o do Cclener;
- Verifica��o do registro;
- LImpeza dos Tempor�rios;
Suporte t�cnico', '~~~', '13:58', '15:29', '1:31', '100,00', '0', '20,00', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('49', '1', '1754', '29', '2013-11-26', 'F', 'Instala��o de novos HDs nos micros do Francisco e do J�lio', 'Instala��o e configura��o de todos os programas nos hds.', '~~~', '10:09', '15:14', '5:5', '120,00', '140,00', '20,00', '240.00', '0', '240.00', '')
INSERT INTO ordem VALUES ('50', '1', '1755', '12', '2013-12-27', 'F', 'Micro muito lento;', 'Foi constatado que as atualiza��es do Windows estavam travando, foi removida a atualiza��o autom�tica; Atualiza��o dos programas; Verifica��o do micro (combofix e Avast); Remo��o de v�rus; Desfragmenta��o de disco; Verifica��o do Registro;', '~~~', '10:00', '12:00', '2:0', '80,00', '40,00', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('51', '1', '1756', '10', '2014-01-16', 'F', 'Backup dos arquivos', 'C�pia dos arquivos do micro antigo para o novo;
Atualiza��o dos programas do laptop;
Suporte T�cnico;', '~~~', '09:53', '11:21', '1:28', '100,00', '0', '20,00', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('52', '1', '1757', '87', '2014-01-17', 'F', 'Micro n�o inicia;', 'Foi constatado que o micro estava com o cooler e as mem�rias desencaixados; 
Efetuada uma limpeza interna no micro; 
Atualiza��o dos programas;
Instala��o da placa de rede Wireless;
Instala��o do TeamViewer;', '~~~', '10:00', '12:00', '2:0', '120,00', '0', '20,00', '100.00', '0', '100.00', '')
INSERT INTO ordem VALUES ('53', '1', '1758', '53', '2014-01-22', 'A', 'Ajuste no Cat�logo de Loca��o;', 'Foram efetuados ajustes no cat�logo de Loca��o, sendo trocado o pre�o dos produtos e retirado alguns do cat�logo;', '~~~', '09:00', '12:30', '3:30', '87,00', '0', '0', '87.00', '0', '87.00', 'Foram efetuadas 03:30 de trabalho a R$ 25,00 o valor da hora')
INSERT INTO ordem VALUES ('54', '1', '1759', '88', '2014-02-03', 'F', 'Micro n�o liga;', 'Foi constatado que o bot�o de ligar havia oxidado, foi ent�o colocado o bot�o de reset para ligar o micro;
Atualiza��o do Windows e dos programas;
Instala��o do TeamViewer; 
Manuten��o geral (registro, tempor�rios);', '~~~', '10:16', '11:21', '1:5', '120,00', '0', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('55', '1', '1760', '36', '2014-03-18', 'F', 'Micros muito lentos;', 'Efetuada uma verifica��o geral nos micros (combofix, avast, registro, desfragmeta��o); 
remo��o de programas indesejados;
Atualiza��o dos programas;
Remo��o de v�rus e Spywares;', '~~~', '11:36', '14:34', '2:58', '120,00', '40,00', '40,00', '120.00', '0', '120.00', '')


-- Criando tabela: permissao
CREATE TABLE `permissao` (
  `idUsuario` int(5) NOT NULL,
  `idEmpresa` int(5) NOT NULL,
  `cadPF` varchar(10) NOT NULL COMMENT 'Acessa - Grava - Atualiza - Exclui',
  `cadPJ` varchar(10) NOT NULL,
  `ordem` varchar(10) NOT NULL,
  `especial` text NOT NULL,
  UNIQUE KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO permissao VALUES ('2', '1', '1-1-1-1', '1-1-1-1', '', '')
INSERT INTO permissao VALUES ('3', '1', '1-0-0-0', '1-0-0-0', '', '')
INSERT INTO permissao VALUES ('4', '0', '1-1-0-0', '1-1-1-0', '', '')


-- Criando tabela: produtos
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
  `thumb_produto` varchar(80) DEFAULT NULL,
  `obs_produto` text NOT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO produtos VALUES ('1', '1', '', 'Calend�rio Maia', 'Calend�rio ', '36,00', '10', '2', '/ffsystem/produtos/fotos/.jpg', '/ffsystem/produtos/fotos/thumb_.jpg', '')
INSERT INTO produtos VALUES ('2', '1', 'FIL01', 'Amor em Jogo', 'Filme baseado em uma hist�ria Rom�ntica....', '7,50', '2', '0', '/ffsystem/produtos/fotos/FIL01.jpg', '/ffsystem/produtos/fotos/thumb_FIL01.jpg', 'Filme em cat�logo!!!

Bd no servidor')
INSERT INTO produtos VALUES ('3', '1', 'MAI01', 'Calend�rio Maia', 'Calend�rio ', '36,00', '10', '2', '/ffsystem/produtos/fotos/MAI01.jpg', '/ffsystem/produtos/fotos/thumb_MAI01.jpg', '')
INSERT INTO produtos VALUES ('4', '2', 'AL01', 'Allan Kardec', 'teste', '', '0', '0', '/ffsystem/produtos/fotos/AL01_EMT02.jpg', '/ffsystem/produtos/fotos/thumb_AL01_EMT02.jpg', '')
INSERT INTO produtos VALUES ('5', '1', 'T005', 'Luffy', '', '', '0', '0', 'T005_1.jpg', '', '')
INSERT INTO produtos VALUES ('6', '1', 'IMG21', 'Espaco', '', '', '0', '0', 'IMG21_1.jpg', '', '')


-- Criando tabela: usuarios
CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Senha` varchar(50) NOT NULL,
  `Nome` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Pergunta` varchar(200) NOT NULL,
  `Resposta` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO usuarios VALUES ('1', '1', 'admin', 'b950732f0f692cbb9c17a04e21f08002', 'Admin', '', '', '')
INSERT INTO usuarios VALUES ('2', '1', 'ffctechnologies', 'b950732f0f692cbb9c17a04e21f08002', 'Flavius Ferrari', 'flaviusferrari@globo.com', 'Qual sua m�sica favorita', 'Faroeste Cabloco')
INSERT INTO usuarios VALUES ('3', '1', 'flavius', '34e299984ef9a6a236767d1c4a0bdeff', 'Flavius', 'flavius.cunha@ig.com.br', 'Qual a sua religião', 'Espirita')
INSERT INTO usuarios VALUES ('4', '2', 'usuario', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Usuário Teste', 'usuario@teste.com.br', 'Usu�rio do Vida de Programador', 'Alonso')
INSERT INTO usuarios VALUES ('5', '3', 'profer', 'bd26a25ca076161a6001e5c66f065189', 'Profer', 'profer@profer.srv.br', '', '')


