set foreign_key_checks=0;


#
# CriaÃ§Ã£o da Tabela : agenda
#

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codEmpresa` varchar(12) NOT NULL COMMENT 'Código da Empresa',
  `evento` varchar(200) NOT NULL,
  `autor` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `hora` varchar(5) NOT NULL,
  `conteudo` text NOT NULL,
  `local` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO agenda VALUES ('1', '1', 'Ivan (MaÃ­ra)', '', '2013-10-30', '10:00', 'InstalaÃ§Ã£o da Rede Wireless', '')
,('2', '1', 'Teste Evento', '', '2013-10-30', '16:45', 'Testando', '')
,('3', '2', 'Teste User', '', '2013-10-30', '18:00', 'Testando o User', '')
,('4', '2', 'Descanso', '', '2013-10-27', '12:00', '', '')
,('5', '1', 'Viajes Norte', '', '2013-11-01', '17:00', 'InstalaÃ§Ã£o do servidor novo', '')
;

#
# CriaÃ§Ã£o da Tabela : clientes
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
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO clientes VALUES ('2', '1', 'Flavius Ferrari', 'Rua Barão de Mesquita', '796', '603', '20540-004', 'Andaraí', 'Rio de janeiro', 'AC', 'PF', '(21)3238-1828', '(21)2288-2338', '(21)9717-7913', 'Gravação de comentário!!!')
,('4', '1', 'Mônica Lacerda', 'Av. Nossa Senhora de Copacabana', '680', 'ap: 613', '', 'Copacabana', 'Rio de janeiro', 'RJ', 'PF', '', '', '(21)9964-8241', 'Endereço Residêncial: Rua Tonelero, 185 ap: 702

Data: 22-05-2012 (Residencia)
- Combofix: Verificação do micro -  Remoção de vírus
- Atualização do Avast
- Reconfiguração da conta de e-mail
- Avast: Escaneamento rápido do sistema
- Reconfiguração do Roteador
- Limpeza dos temporários
- Netbook: Atualização do Windows
	- Verificação do teclado
	- Limpeza dos temporários')
,('5', '1', 'Ellen Teixeira', 'Rua Botucatú', '56', '903', '', 'Grajaú', 'Rio  de Janeiro', 'RJ', 'PF', '(21)2238-6225', '', '(21)9834-7300', 'Data: 30-04-2012
- Remoção da ASK Toolbar
- Remoção da VirtualDJ Tollbar
- Remoção da Mensagem  de Windows Pirata
- Atualização do k-Lite Mega Codec Pack 8.7
- Atulização do Firefox
- Instalação do Ashampoo
- Limpeza dos temporários
- Verificação do Registro
- Verificação rápida do Avast - OK
- Atualização do Java
- Instalação do TeamViewer
- Suporte técnico


Data: 10-10-2011
- Configuração do IE para gravar senha
- Atualização do Ccleaner
- LImpeza dos temporários
- Atualização do Firefox
- Criado um ponto de restauração
- Atualização do K-lite Mega Codec Pack
- Verificação do micro com o Avast - OK
- Verificação do Micro com o Spybot
- verificação do Registro
')
,('6', '1', 'Fernando Fernandes', 'Av. Henrique Dodswort', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)9703-9838', 'Amigo da Ana Roldão

Dados Bancários:
HSBC
Ag: 1607
C/c: 13591-30

Data: 18-04-2012
- Verificação do micro com o Combfix - Remoção de vírus
- Limpeza interna do micro
- Atualização do Ccleaner
- Reinstalação do Avast
- Instalação do TeamViewer
- Atualização do Java
- Imunização do Spybot
- Verificação do micro com o Spybot - OK
- Registro do Avast
- Verificação do micro com o Avast - OK
- Remoção do Babylon Tool bar
- Limpeza dos temporários
- Desfragmentação de disco
- Atualização do Windows')
,('7', '1', 'Rosa Alves', 'Av. Oswaldo Cruz', '106', '101', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2551-2282', '', '(21)9997-3811', 'Data: 02-05-2012
- Fonte estava desconectada no cabo de força
- Atualização do Windows
- Instalação do Ccleaner
- Atualização do Flash
- Atualização do Firefox
- Instalação do TeamViewer
- Instalação do Java
- Instalação do Defrager
- Limpeza dos temporários
- Instalação da WebCan
')
,('8', '1', 'Fernando Cerole', 'Rua Gonzaga Bastos', '259', 'casa 7', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2572-1296', '', '(21)9214-2010', 'Data: 09-10-2012
- Atualização do Flash
- Atualização do Ccleaner
- Remoção da Ask Toolbar
- Remoção do InboxToolbar
- Remoção do RegClean Pro
- Remoção do SiteRank
- Remoção dos Temporários
- Instalação do Emule
- Atualização do Firefox 15
- Atualização do Klite Mega Codec Pack

Data: 03-05-2012
- Teste de HD - Remoção de Bad Block (1)
- Teste de Memória - OK
- Backup dos Arquivos
- Formatação e instalação do Windows e programas
- Atualização do Windows
- Verificação Completa do Avast - OK
- Desfragmentação de Disco
- Troca do Gravador de CD/DVD que não estava lendo os discos')
,('9', '1', 'Amélia Cristina', 'Rua Ribeiro Guimarães', '360', '501', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-9636', '', '(21)7941-3200', 'Data: 08-05-2012
- Verificação do Micro com o Combofix - Remoção de vírus
- Atualização do Java
- Netbook: Troca da senha e nome do usuário
- Netbook: Atualização e Registro do Avast
- Avast: Escaneamento rápido do sistema - Remoção de vírus
- Netbook: Remoção do Microsoft Security
- Instalação do LibreOffice

Data: 13-03-2012
- Instalação do Ccleaner
- Instalação do Mingw
- Removido McAfee Security Center
- Atualização do Java
- Instalação do Avast
- Limpeza dos Temporários
- Verificação da impressora')
,('10', '1', 'Valéria Gullo', 'Rua Pontes Correa', '167', '503', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2208-7631', '', '(21)9613-6928', 'Data: 22-03-2013
- Atualizado o ThunderBird para a versão 17;
- Atualizado o Ccleaner;
- Autalizado o LibreOffice para a versão 4.0.1;
- Configurado no Avast as contas do Thunderbird;
- Atualização do Windows;
- Ajustes na inicialização do Windows;
- Atualizado o Java para a versão 7.17;
Laptop
- Verificado o laptop com o Combofix (Remoção de vírus);
- Remoção do McAfee;
- Instalação do Avast;

Data: 16-08-2012
- Instalação e configuração do modem wireless velox
- Instalação dos softwares no laptop
- Backup dos e-mails para o laptop
- Suporte técnico
- Atualização do Windows
- Instalação da impressora

Data: 22-05-2012
- Verificação do HD - Remoção de Bad Block (30)
- Formatação do micro
- Backup dos arquivos
- Instalação dos programas
- Desfragmentação de disco

Data: 10-05-2012
- Verificação do micro com o Combofix - Remoção de vírus
- Remoção do Aviso de Software Pirata
- Atualização do Ccleaner
- Remoção do Advanced System Care
- Remoção do Iobit Secyrity
- Remoção do IObit Tollbar
- Avast: Escaneamento rápido do micro - OK
- Atualização do K-Lite Mega Codec Pack
- Instalação do TeamViewer
- Instalação do Auslogic disk Defrag
- Limpeza dos temporários
- Criação de um Ponto de Restauração
- Verificação do Registro')
,('11', '1', 'Renata Gondin', 'Rua Botucatú', '', '302', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-3234', '', '', 'Data: 11-05-2012
- Verificação do HD - Remoção de Bad Block (7)
- Remoção do RegClean
- Atualização do Windows

Data: 27-03-2012
- Recuperação do windows com o Scandisk
- Remoção de Bad Block - 04
- Baixando Atualizações do Windows
- Verificação do Micro com Avast - OK
- Verificação do micro com Spybot - Remoção de Spyware
- Verificação do Registro
- Atualização do Java
- Atualização do Firefox
- Atualização do Windows
- Instalação do Defrag')
,('12', '1', 'Clínica AFGV', 'Praça Olavo Bilac', '28', '910', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2507-3175', '', '', 'Micro D. Fátima
Data: 28-06-2012
- Verificação da memória: Foi constatado que o pente de memória está com defeito
- Teste de Disco: HD OK
- Combofix: Remoção de vírus
- Desabilitado o RealPlayer da inicialização, pois estava consumindo muito processamento
- Atualização do Windows
- Avast: Verificação do micro - OK
- Atualização do Java
- Atualização do Ccleaner
- Instalação do Auslogic Disk Defrag
- Limpeza de Disco
- Desfragmentação de Disco
- Atualização do Avast
- Criado um ponto de Restauração do sistema
- Verificação do Registro

Data: 13-06-2012
Micro Aninha:
- Foi constatado que a memória do micro havia queimado, causando assim o desligamento do micro;
- Troca da memória
- Limpeza interna
- Remoção da mensagem de Windows Pirata
- Atualização do Ccleaner
- Atualização do Windows
- Remoção da Ask Toolbar

Data: 14-05-2012
- Atualização do Windows e dos programas
- Micro da D. Fátima apitando: Foi ligado e desligado o micro e o defeito não retornou, micro em observação
- Micro da Psicóloga: Necessita trocar o teclado, pois está causando mal contato devido ao adaptador
- Remoção da senha inicial do Micro da D. Fátima')
,('13', '1', 'Jorge Delou', 'Rua Pontes Correa', '101', '103', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-7534', '', '', 'Filho da Angela Delou

Data: 15-05-2012
- Foi efetuado testes no HD antigo e verificou-se que o mesmo está com defeito
- Troca do HD antigo por um novo
- Formatação e instalação de todos os programas
- Backup dos arquivos do HD Antigo pro Novo
- Recuperação de arquivos do HD Antido
- Instalação de um Gravador de DVD')
,('14', '1', 'Ayrton Penedo', 'Rua Visconde de Santa Isabel', '321', '804', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-2827', '', '(21)8131-8562', 'Data: 12-11-2012
- Atualização do Avast
- Memorização da Senha do email da Yolanda
- Remoção do VideoDownloader Converter
- Atualização do Windows
- Configurada a página da Globo com principal
- Atualização do Flash Player
- Atualização do Java
- Remoção do Java 6
- Limpeza dos temporários

Data: 12-09-2012
- Reinstalação do Avast;
- Remoção de vírus com o Combofix;
- Instalação de um pente de memória (NG 0322);
- Windows - Atualização do software.
- Registro do Avast

Data: 05-06-2012
- Renovação do Registro do Avast
- Atualização do Windows
- Retirado o Modo de Compatibilidade do IE no site da Globo

Data: 21-05-2012
- Atualização do Ccleaner
- Combofix: Verificação do Micro - Remoção de vírus
- Remoção da mensagem de software Pirata do Windows
- Limpeza dos temporários
- Remoção do PriceGoing
- Atualização do Skype
- Avast: Verificação Rápida do sistema - OK
- Verificação do Registro
- Criado um ponto de restauração do sistema
- Atualizaçao do Java
- Verificação do Registro
- Desfragmentação do Sistema

Data: 09-12-2011
- Montagem do micro
- Instalação do eMule
- Atualização do Avast
- Desinstalação do McAffe Security Scan
- Configuração do Emule

Data: 28-10-2011
- Instalação da Webcan
- Atualização do Ccleaner
- Atualização do Java
- Instalação do Skype
- Instalação do Ashampoo
- Atualização do Adobe Reader
- Configuração da Webcan
')
,('15', '1', 'Ney Sarmento', 'Rua Major Ávila', '200', 'Loja C', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-0775', '', '(21)8513-1615', 'Data: 30-05-2012
- Instalação do sistema Otica no Laptop
- Instalação do Avast
- Backup do Sistema
- Configuração de um Backup diário (Cobian)
')
,('16', '1', 'Mastercoop Cooperativa', 'Rua Haddock Lobo', '11', 'sl: 701', '', 'Estácio', 'Rio de Janeiro', 'RJ', 'PF', '(21)3796-0445', '', '(21)7871-4566', 'Data: 31-05-2012
Micro Paula
  - Recuperação do Windows com Scandisk
  - Atualização do Ccleaner
  - Remoção do BrOffice 3.2
  - Instalação do LibreOffice 3.5.4
  - Atualização do Auslogic Disk Defrager 3.4.3.5
  - Atualização do Flash
  - Limpeza dos temporários
  - Desfragmentação dos Arquivos')
,('17', '1', 'Magaly Espinar da Costa', 'Rua Souto Carvalho', '40', '201', '', 'Engenho Novo', 'Rio de Janeiro', 'RJ', 'PF', '(21)3880-2592', '', '(21)9953-6537', 'Data: 04-06-2012
MICRO MAGALY 01
- Configurada a impressora para imprimir em rascunho (configuração está saindo)
- Instalação do Skype
- Ajuste da WebCan
- Criada uma conta do Skype e configuração do mesmo
- Suporte técnico')
,('18', '1', 'Irineu Moreira da Silva', 'Rua Domingos Lopes', '410', 'LJ: 101', '', 'Madureira', 'Rio de Janeiro', 'RJ', 'PF', '(21)3018-3211', '', '', 'Data: 26-10-2012
- Instalação e configuração do Roteador Wireless TP-Link
- Instalação do Adaptador wireless no micro da Cristina
- Configuração dos micros para usarem a nova rede
- Reconfiguração do Federal
- Compartilhamento da impressora
- Atualização do Avast no micro da Cristina
- Desfragmentação do micro da Cristina

Data: 06-06-2012
Micro Cristina:
- Efetuado testes na rede e foi reconfigurada o Servidor
- Remoção de vírus
- Micro não acessa a internet, terá de fazer uma formatação
Micro Irineu:
- Limpeza interna no micro
- Verificação do PDF Creator')
,('19', '1', 'Rosemary Duarte', 'Rua das Laranjeiras', '136', '402', '', 'Laranjeiras', 'Rio de Janeiro', 'RJ', 'PF', '(21)2233-7205', '(21)3903-6738', '(21)9969-0225', 'Data: 08-06-2012
- Atualização dos plugins do Firefox
- Atualização do Flash
- Registro do Avast
- Atualização do Avast
- Atualização do Ccleaner
- Combofix: Verificação do micro
- Limpeza interna no micro

Data: 09-01-2012
- Baixado atualização do Windows
- Atualização do Firefox
- Atualização do Java
- Atualização do Ccleaner
- Limpeza dos temporários
- Verificação do Registro
- Avast: Escaneamento Rápido - OK
- Desfragmentação de Disco (36%)')
,('20', '1', 'Wilton Taranto', 'Rua Conde de Bonfim', '289 A', '603', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '(21)2569-7225', '', '(21)9255-8199', 'Data: 10-07-2012
- Instalação do micro novo
- Configuração do Roteador Wireless
- Configuração do micro
- Instalação da impressora HP 
- Instalação do Office 2010 Starter
- Instalação do TeamViewer
- Instalação do Firefox
- Instalação do Java
- Windows: Instalação das atualizações
- Ashampoo: Instalação do programa
- Suporte Técnico')
,('21', '1', 'Angela Delou', '', '', '', '', '', '', 'AC', 'PF', '', '', '', 'teste')
,('22', '1', 'Ana Roldão', 'Av Henrique Dodsworth', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)7140-7815', 'Data: 09-07-2012
- Combofix: Instalação do programa
	    Remoção de vírus
- Avast: Escaneamento rápido - Remoção de vírus
	 Atualização para a versão 7.0.1456
- Ccleaner: Atualização para a versão 3.20.1750
	    Limpeza dos temporários
- Java: Atualização para a versão 7.5
	Remoção da versão 6.29
- Firefox: Atualização para a versão 13.0.1
- Auslogic Disk Defrag: Instalação da versão 3.4
- Ashanpoo: Instalação da versão 2012
- Windows: Instalação da atualização

Data: 06-09-2011
- Atualização do Avast
- Importação dos arquivos de backup do Outlook 2007
- Instalação do Ccleaner
- Instalação do TeamViewer
- Atualização do Java
- Remoção do Java antigo
- Instalação do Firefox
- Atualização do Adobe Reader
- Criação de um ponto de Restauração
- Verificação da impressora
- Desinstalação da barra do Alot')
,('23', '1', 'Flavia Diego', 'Rua Gonçalves Freire', '296', '404', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2254-8254', '', '(21)9916-3600', 'Data: 11-07-2012
Micro Marcela
- Troca da fonte que estava queimada
- Atualização do Avast
- Limpeza interna
- Desfragmentação de Disco')
,('24', '1', 'Exclusive Exchange Tour', 'Rua Belford Roxo', '129', 'Loja B', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3518-0611', '', '', 'Data: 06-09-2012
- Instalação de um  HD novo no micro do Turismo
- Instalação do Windows e de todos  os programas
- Configuração  do micro em rede
- Instalação da Impressora
- Verificação preventiva nos  micros

Data: 13-07-2012
- Formatação do micro do Antonio, pois estava com vírus
- Instalação do Windows Original e de todos os programas
- Configuração da impressora em rede
- Remoção dos vírus do Laptop do Tiago com o Combofix
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
,('26', '1', 'Taranto', 'Rua dos Araújos', '11-A', 'Bl: 01 ap: 302', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '', '', '', 'Data: 26-07-2012
- Foi detectado que o Avast estava travando o micro
- Combofix: Verificação do micro - OK
- Avast: Reinstalação do programa - Versão 7.0.1456
- Ccleaner: Atualização do programa - versão 3.20
- Java: Atualização do programa
- Spybot: Verificação do micro - Remoção de Spywares
- Windows: Atualização do sistema
- Avast: Verificação rápida do sistema - OK
- Criado um ponto de restauração do sistema
- Ccleaner: Limpeza dos temporários
- LibreOffice: Atualização para a versão 3.5.5
- Auslogics Disk Defrag: Atualizado para a versão 3.4.3.5

Data: 16-03-2012
- Micro não iniciava pois estava com a memória suja
- Limpeza interna no micro
- Instalação do Ccleaner
- Remoção da ASK Toolbar
- Remoção do NitroPC
- Remoção do RegistryBooster
- Verificação do micro com o Combofix - Remoção de vírus
- Remoção do Java 6 Update 4
- Atualização do Windows
- Atualização do Avast
- Instalação do Auslogick Disk Defrager
- Atualização do Java
- Backup do Registro
- Atualização do K-Lite Mega Codec Pack
- Instalação do TeamViewer
- Instalação do LibreOffice 3.5
- Limpeza dos temporários
')
,('27', '1', 'Clinatran', 'Rua da Conceição', '105', '806/807', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2203-0413', '(21)3244-2919', '', 'Data: 11-09-2012
- Instalação de um pente de memória
- Memória DDR2-533 Markvision 01Gb

Data: 27-07-2012
- Limpeza interna no micro
- Java: Remoção das versões antigas
- Ccleaner: Atualização para a versão 3.20
- AVG: Remoção do Software
- Combofix: verificação do Micro - Remoção de Vírus
- Ccleaner: Limpeza dos temporários
- MediaGet: Remoção do Software
- Windows: Criado um ponto de restauração do sistema
- Avast: Instalação do Softare
- Auslogic Disk Defrag: Instalação do softare')
,('28', '1', 'Maria Aparecida de Souza Gonçalves', 'Rua Paulo Silva Araújo', '107-A', 'Casa 15 - 201', '', 'Méier', 'Rio de Janeiro', 'RJ', 'PF', '(21)2269-7394', '', '(21)9644-1672', 'Data: 01-08-2012
- Windows: Atualização do Sistema
- Ccleaner: Atualização para a versão 3.20
- Nero: Remoção do software
- Avast: Atualização para a versão 7.0.1456
- Ashampoo: Instalação do programa
- Avast: verificação rápido do micro - ok
- Drive de CD/DVD: não está gravando nem lendo CD
- Compartilhamento da Impressora
- Ccleaner: Limpeza dos temporários
- Auslogic Disk Defrag: Atualização do programa para a versão 3.4.3.5
- Auslogic: Desfragmentação de disco

Data: 27-01-2012
- Efetuada uma limpeza interna no micro
- Atualização do Ccleaner
- Remoção do CrossLoop
- Instalação do TeamViewer
- Atualização do Java
- Atualização do K-Lite Mega Codec Pack
- Instalação do Office Compatibilit Pack 2007
- Limpeza dos temporários
- Criado um ponto de Restauração
- Verificação do Registro
- Atualização do Windows')
,('29', '1', 'Viajes Norte Cambio e Turismo', 'Rua Nossa Senhora de Copacabana', '1022', 'LJ: A', '', 'Copacabana', 'Rio de janeiro', 'AC', 'PJ', '(21)2522-1898', '', '', 'Micro Francisco (virtual)
Data: 13-11-2012
- Foi instalada uma nova máquina virtual com Wim7, pois o XP estava corrompendo muito

Micro Silvia (filial)
Data: 01-11-2012
- Micro da Silvia corrompeu o Windows
- Recuperação do Windows com o cd

Testando a atualização do cadastro!!!

Filial: 2247-9302')
,('30', '1', 'Maurício Beniacar', '', '', '', '', 'Catete', 'Rio de Janeiro', 'RJ', 'PF', '', '', '', 'Data: 06-08-2012
- Micro não iniciava pois o Cooler estava mal encaixado
- Avast: Atualização do programa
- Avast: Verificação do Micro - Remoção de vírus
- Microsoft Security Essential - Remoção do programa
- Combofix: Verificação do micro - Remoção de vírus
- Ccleaner: Instalação do programa
- Ccleaner: Limpeza dos temporários
- Windows: Criado um ponto de Restauração
- windows: Retirado o micro de hibernar
- Auslogic Disk Defrag: Instalação do programa
- Auslogic Disk Defrag: Desfragmentação de disco')
,('31', '1', 'Helena Cristina', 'Rua Figueiredo Magalhães', '122', '701', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2264-1378', '', '(21)9516-0182', 'Data: 20-03-2013
- Micro apresentando falha na resolução da tela, voltando para 1024/768;
- Limpeza interna do micro;
- Atualização do Ccleaner;
- Atualização do Avast 8.0;
- Remoção da Ask Toolbar;
- Atualizado o LibreOffice para a versão 4.0.1;
- Atualizado o Firefox para a versão 19;
- Teste do micro com o Benchmark;
- Verificação do micro com o Combofix (remoção de vírus);

Data: 14-08-2012
- Micro estava travando por causa do Avast
- Avast: Atualizado para a versão 7.0
- Ccleaner: Atualizado para a versão 3.21
- Java: Desinstalada a versão 6.5
- Windows: Atualização do sistema

Data: 13-02-2012
- Verificação do micro com o Combofix - Remoção de Vírus
- Atualização do Firefox
- Recuperação do Avast
- Verificação do microm como Spybot - OK
- Atualização do Adobe Reader
- Atualização do LibreOffice
- Atualização do Windows 7


Data: 25-01-2012
- Verificação da Memória - OK
- Verificação do micro com o Avast
- Renovação do Registro do Avast
- Atualização do ccleaner
- Limpeza dos temporários


Data: 21-09-2011
- Instalação da Webcan Microsoft
- Atualização do Firefox
- Criado ponto de restauração
- Atualização do Windows')
,('32', '1', 'Paulo Pereira', 'Rua Dona Zulmira', '73', '104', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)3437-8997', '', '(21)9951-5581', 'Sandra Pereira: ppsan@oi.com.br 9356-8334
Data: 15-08-2012
- Instalado um HD NOvo
- Instalação do Windows e de todos os programas')
,('33', '1', 'Leonardo Antonio dos Santos', 'Rua Barata Ribeiro', '502', '813', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2236-5248', '', '(21)9323-6637', 'Data: 25-09-2012
Micro Principal
- Limpeza Interna
- Instalação de uma placa de rede
- Instalação do Scribus
- Atualização do Avast e do Ccleaner
Micro Antigo
- Atualização do Avast
- Atualização do Auslogic Disk Defrag
- Atualização do Ccleaner
- Limpeza dos temporários
- Desfragmentação de disco

Data: 17-08-2012
- Registro do Avast
- Instalação do Inkscape
- Instalação do Gimp
- Validação do InDesign
- Validação do Adobe Acrobat X Pro
- Combofix: verificação do micro - OK
- Defrag: desfragmentação de disco
- Ccleaner: Limpeza dos temporários
- Ccleaner: Atualizado para a versão 3.21


Data: 30-08-2011
- Limpeza interna no micro
- Atualização do Ccleaner
- Retirado a HP da inicialização
- Configuração do Skype
- Verificação do micro com Spybot
- Verificação do micro com Avast
- Criado um ponto de restauração
- Desintalação do CrossLoop
- Atualização do K-Lite Mega Codeck Pack
- Instalação do Defrag')
,('34', '1', 'Simone Soares Ferreira', 'Rua Sáviana', '209', '', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '(21)3684-5827', '', '(21)9121-2758', 'Data: 22-08-2012
- Limpeza interna no micro
- Combofix: verificação do micro - Remoção de vírus
- Java: Desinstalação da versão antiga
- Linkury Smartbar - Desistalação do software
- Ccleaner - Atualizado para a versão 3.21
- Firefox - Atualizado para a versão 14
- Windows - Atualização do sistema
- firefox - Colocado no idioma Portugues
- Ccleaner - Limpeza dos temporários
- Ccleaner - Verificação do registro
- Configurado o PortaldoEmpreendedor como favorito
')
,('35', '1', 'Shop Freezer', 'Rua Esmeraldino Bandeira', '67', '', '20961-080', 'Riachuelo', 'Rio de Janeiro', 'RJ', 'PJ', '2125012833', '2125012517', '', 'Data: 04-09-2012
- Limpeza interna do micro
- AVG: REmoção do Software
- PSafe: Remoção do Software
- ASK Tool Bar: Remoção do Software
- Ccleaner: Instalação do programa
- Ccleaner: Limpeza dos Temporários
- Combofix: Verificação do Sistema - Remoção de vírus
- Windows: Remoção da mensagem de software Pirata
- Iminent: Remoção do Software
- Java: Atualização do Software
- Otshot: Retirado o programa da inicialização do Windows
- Windows: Criado um ponto de restauração do Sistema
- Ccleaner: Verificação do Registro')
,('36', '1', 'Homero', 'Rua Jorge Hudge', '240', 'casa', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-8237', '', '(21)9487-2520', 'Izabel: 9496-3847

Data: 07-09-2012
- Instalação do micro novo
- Backup dos Arquivos do micro Antigo
- Configuração da Impressora
- Instalação do Windows e de todos os programas')
,('38', '1', 'Helio Veloso', 'Rua Dona Zulmira', '112', '07', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)7817-2537', 'Data: 17-09-2012
- Tentativa de Recuperação do Windows
- Formatação do micro
- Instalação de todos os programas
- Instalação da impressora
- configuração do roteador')
,('39', '1', 'Alberto Hugo', 'Rua Aristide Espínola', '52', '504', '', 'Leblon', 'Rio de Janeiro', 'AC', 'PF', '(21)2239-7235', '', '', 'Data: 21-09-2012
- Reconfigura??o da Rede Wireless
- Atualiza??o do Avast
- Atualiza??o do Windows e dos programas
- Remo??o da mensagem de software pirata do Windows
- Configura??o do Laptop em rede
- Manuten??o Geral')
,('40', '1', 'Jacson Bras de Andrade', 'R. Frederico Santoni, Rua D', '29', '', '20766-520', 'Engenho da Rainha', 'Rio de Janeiro', 'RJ', 'PF', '(21)4104-0608', '', '(21)7842-6974', 'Final da Frederico Santoni.

Styllo Locação

Data: 14-09-2012  OS: 1612
- Formatação do Laptop
- Backup dos arquivos em DVD
- Instalação do windows e dos programas
- Teste de HD - OK')
,('41', '1', 'Sergio Freitas', 'Rua Genaral Severiano', '76', 'Bl:2 ap: 610', '', 'Botafogo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2542-8967', '', '(21)9884-7775', 'Data: 28-09-2012
- Instalação e configuração do Roteador
- Instalação do Avast Pro
- Suporte Técnico
- Reconfigurado o Netbook para o Wireless
- Atualização dos programas')
,('42', '1', 'Cibele Magalhães', 'Rua Uruguai', '196', '702 Bl: b', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-0016', '', '(21)9662-2078', 'Data: 22-02-2013
- Atualização do Windows;
- Reinstalação do drive de DVD;
- Atualização do Ccleaner;
- Atualização do Java;
- Verificação do micro com Combofix - Remoção de virus;
- Atualização do Avast;
- Limpeza dos temporários;
- Retirada a Atualização automática, pois a mesma estava dando problema;
- HD com problema, passando Scandisk direto quando liga;

Data: 05-10-2012
- Processo svchost do windows estava corrompido
- Atualização do Windows e dos programas
- Desfragmentação de disco
- Instalação de uma placa de vídeo AGP
- Manutenção geral do micro')
,('43', '1', 'Edileusa Pereira ', 'Rua Nerval de Gouveia', '111', 'ap 101 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2594-5177', '', '(21)9618-5905', '')
,('44', '1', 'Letimar Pereira', 'Rua Nerval de Gouveia', '111', 'ap 102 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2593-8339', '', '', 'Data: 16-10-2012
- Remoção da Ask Toolbar
- Remoção do Psafe
- Remoção do Babylon Object
- Combofix: Verificação do micro - Remoção de vírus
- LibreOffice: Atualização para a versão 3.6
- Atualização do Windows
- Verificação do Registro
- Spybot: Remoção de spyware
- Limpeza dos temporários

Data: 30-08-2011
- Foi trocado o processador pois o antigo havia queimado
- Micro apresentando tensão do processador errarda na inicialização
	- Foi trocada a fonte de alimentação mas a mensagem persistiu
	- Verificada tensão no BIOS do micro, e estava configurada de forma correta
- Atualização do Ccleaner - V 3.10
- Atualização do Firefox - V 6.0
- Limpeza dos temporários
- Criado um ponto de restauração')
,('45', '1', 'Sueli Caldas Magalhães', 'Rua Humaitá', '135', '304', '', 'Humaitá', 'Rio de Janeiro', 'RJ', 'PF', '(21)2226-1199', '', '(21)9648-1672', 'Data: 08-05-2013
Inicio: 13:15   Término: 14:57  Tempo: 01:42
- Remoção do Psafe;
- Remoção do McAffe Security Scan;
- Atualização do Ccleaner;
- Remoção do Browser Manager;
- Remoção do Yontoo;
- Atualização do Flash;
- Verificação dos cabos USB;
- Instalação do LibreOffice;


Data: 17-10-2012
- Atualização do Windows e programas
- Remoção do vírus DialPly
- Troca da fonte que havia queimado
- LImpeza interna no micro
- Placa Wireless está desconectando várias vezes (trocar antena do Roteador)')
,('46', '1', 'Conted Assisistencia Contábil', 'Av. Presidente Vargas', '962', '1310', '', 'Centro', 'Rio de Janeiro', '', 'PJ', '(21)2263-2161', '(21)2518-1330', '', 'Data: 05-11-2012
- Instalação do micro novo
- Configuração do micro em rede
- Configuração da impressora
- Recuperado o Windows do micro principal que havia corrompido

Data: 22-10-2012
- Remoção e instalação dos softwares da impressora HP Deskjet F2050;
- Remoção do software da impressora Lexmark;
- Atualização do Firefox;
- Atualização do Team Viewer.')
,('47', '1', 'Elza Souza', 'Rua Carvalho Alvim', '73', '301', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-1695', '', '(21)9446-4512', 'Data: 08-11-2012
- Montagem do micro novo;
- Instalação e configuração dos programas;
- Atualização do Sistema.')
,('48', '1', 'Danielle Pingitore', 'Rua Leopoldo', '193', '301', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2238-9043', '', '(21)9881-8539', 'Data: 09-11-2012
Micro Tio Dani
- Remoçao de vírus
- Atualizaçao dos programas
- Instalação do Gimp, Inkscape, Avast
- Verificação do Registro
- Limpeza dos temporários')
,('50', '1', 'Reginaldo Ribeiro e Silva', 'Rua Conego Tobias', '130', 'casa 10', '', 'Méier', 'Rio de Janeiro', 'RJ', 'PF', '(21)3472-4091', '', '(21)9851-8007', 'Data: 30-11-2012
- Troca do Gabinete do micro')
,('51', '1', 'Uriam Moraes', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9751-7983', '')
,('52', '1', 'Suzana', 'Rua Santa Amélia', '5', '', '', '', '', 'RJ', 'PF', '(21)2273-1513', '', '', '')
,('53', '1', 'Limaloc', 'Estr. Adhemar Bebiano', '1813', '', '21050-630', 'Del Castilho', 'Rio de janeiro', 'AC', 'PJ', '(21)2583-0143', '(21)2218-8507', '', 'Atualiza')
,('54', '1', 'Jairo Debossan', 'Rua Bulhoes Carvalho', '329', '702', '', 'Copacabana', '', 'AC', 'PF', '(21)2247-4085', '', '(21)9973-2675', '')
,('55', '1', 'Maria Cecília', 'Rua Barão de Icaraí', '21', '803', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2552-6988', '', '(21)9624-7562', 'Data: 19-01-2013
- Remoção do AdThis Tool Bar
- Atualização do Ccleaner
- Remoção do ASK Toolbar
- Atualização do LibreOffice 3.6
- Atualização do Teamviewer para a versão 8
- Atualização do Java 7.11
- Atualização do Avast
- Atualização do Firefox 18
- Verificação do micro com o Combofix - OK
- Limpeza dos temporários
- Remoção do PowerPoint Viewer
- Atualização do Windows
- Desfragmentação de Disco
- Verificação do Registro
- Limpeza interna')
,('56', '1', 'Thiago - Exclusive', 'Rua Ana Leonídia', '175', '102', '', 'Engenho de Dentro', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)7856-7707', 'Data: 21-01-2013 OS: 1646
- Instalação do Ccleaner;
- Remoção da Babylon Toolbar;
- Remoção da Dealio Toolba;
- Remoção do McAfee Security Scan;
- Remoção do Norton Security Scan;
- Atualização do Java 7.11;
- Renovação do Registro do Avast;
- Atualização do Avast 7;
- Instalação do TeamViewer 8;
- Atualização do Libre Office 3.6.4;
- Atualização do Windows;
- Remoção dos temporários;
- Verificação do registro')
,('57', '1', 'Marcela Pastor Veloso', 'Rua D. Zulmira', '112', 'casa 7', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)9395-5435', 'Nextel: 7814-5910')
,('58', '1', 'Jacob Goldemberg', 'Av Nossa Senhora de Copacabana', '1003', '601', '22060-000', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2521-3345', '', '(21)9976-8988', 'Data: 23-02-2013
- Pasta de Entrada do Outlook Express corrompida;
- Efetuado backup da Cx de Entada e criada uma nova;
- Atualização do Ccleaner;
- Remoção do Java 6.35;
- Instalação do TeamViewer;
- Atualização do Firefox 19;
- Instalação do Defrag;
- Limpeza dos temporários;
- Verificação do Registro;
- Desfragmentação de disco;
')
,('59', '1', 'Eliana Moreira', 'Rua Ferreira Pontes', '430', 'BL 1/603', '20541-280', 'ANDARAÍ', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-5754', '', '(21)8285-9688', 'Data: 25-02-2013
- Remoção do Avast pois o mesmo estava travando;
- Verificação do micro com Combofix - Remoção de vírus;
- Atualização do Ccleaner;
- Limpeza dos temporários;
- Remoção do PC Doctor;
- Desinstalado o LiveUpdate Nortom;
- Reinstalação do Avast;
- Limpeza interna no micro;
- Atualização do Auslogick Disk Defrag;
- Desfragmentação de disco;
- Atualização do Windows')
,('60', '1', 'Fátima Lana', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9634-3990', '')
,('61', '1', 'Ana Claudia', 'RUA BARAO DE MESQUITA', '1021', '204', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)8332-6796', 'Data: 04-03-2013
- Verificação de Superficie dos HDs - OK;
- Limpeza interna no micro;
- Instalação do Ccleaner;
- Backup dos Arquivos para o Drive D;
- Remoção da Barra de Ferramentas ALOT;
- Atualização do Java 7.15;
- Instalação do Auslogic Disk Defrag;
- Limpeza dos Temporários;
- Verificação do micro com o Combofix: Remoção de vírus;
- Desfragmentação de Disco;
- Verificação do Registro;
- Efetuado teste de Desempenho: OK (benchmarck 3794.97)')
,('62', '1', 'Luiz Henrique', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9761-2004', 'Pai da Cláudia')
,('63', '1', 'Silvia Santiago', 'Rua Senador Correia', '42', '306 bl:A', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2558-4175', '', '(21)8136-8975', 'Data: 05-04-2013
- Remoção do PC Faster;
- Remoção da Ask Tool Bar;
- Remoção do Babyloon Tool Bar;
- Remoção do Browser Protect;
- Remoção do Hao123;
- Remoção do Iminent;
- Verificão do Micro com o Combofix - Remoção de vírus;
- Atualização do Ccleaner;
- Instalação do Auslogic Disc Defrag;
- Atualizado o LibreOffice (4.0.2);
- Remoção do Luxor 3;
- Remoção do Java 6 update 31;
- Limpeza dos temporários;
- Verificação do Registro;
')
,('64', '1', 'Romi Cunha', '', '', '', '', '', 'Rio de janeiro', 'RJ', 'PF', '(21)2591-2645', '', '(21)9751-8892', 'Evangelizadora do CEBMA')
,('65', '1', 'Conceição', '', '', '', '', '', '', 'AC', 'PF', '(21)6921-7525', '', '(21)9205-4439', 'Faxineira')
,('66', '2', 'Cliente Teste', 'Rua Uruguai', '22', '', '', '', '', 'AC', 'PF', '', '', '', '')
,('67', '2', 'Alberto Hugo', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '')
,('68', '1', 'cliente teste', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '')
,('69', '1', 'Empresa fictícia', 'Rua Sem número', '', '', '', '', '', 'AC', 'PJ', '', '', '', 'Teste de Gravação!!!')
,('70', '1', 'Cadastro Novo', '', '', '', '', '', '', 'AC', 'PF', '', '', '', 'Gravando novo Cadastro com idEmpresa')
,('71', '2', 'Flavius Ferrari', 'Rua Barão de Mesquita', '796', '603', '', 'Andaraí', '', 'RJ', 'PF', '', '', '', '')
,('72', '2', 'Empresa Teste', 'Teste', '', '', '', '', '', 'AC', 'PJ', '', '', '', 'Testando idEmpresa')
,('73', '1', 'Testando a gravação', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '')
,('74', '1', '', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '')
;

#
# CriaÃ§Ã£o da Tabela : clientespf
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
# Dados a serem incluÃ­dos na tabela
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
# CriaÃ§Ã£o da Tabela : clientespj
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
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO clientespj VALUES ('1', '29', '', '', '', '', '')
,('2', '35', '', '', '222', '', '')
,('3', '46', '', '', '', '', '')
,('5', '53', '05.066.596/0001-46', '77.375.104', '323.001-5', '', '')
,('6', '69', '', '', '', '', '')
,('7', '72', '', '', '', '', '')
;

#
# CriaÃ§Ã£o da Tabela : contatos
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
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO contatos VALUES ('1', '29', 'Elsa', 'Financeiro', '', '', '', '')
,('2', '46', 'José Roberto', 'Responsável', '(21)6666-6969', '', 'undefined', 'conted@veloxmail.com.br')
,('3', '69', 'Emereciano', 'Recepção', '', '123', 'undefined', 'seunome@email.com.br')
,('4', '69', 'Contato', 'Primeiro', '', '', '(21)9971-77913', 'novo@email.com.br')
,('6', '46', 'Novo contato Teste', '', '', '', '(21)9717-7913', '')
,('7', '46', 'Terceiro teste Contato', 'fafaf', '', '', '', 'alguma')
,('8', '46', 'Jorge', 'Secretaria', '(21)3238-1829', '62', '(21)99717-7913', 'jorger@veloxmail.com.br')
;

#
# CriaÃ§Ã£o da Tabela : empresa
#

CREATE TABLE `empresa` (
  `idEmpresa` int(5) NOT NULL AUTO_INCREMENT,
  `nomeEmpresa` varchar(155) NOT NULL COMMENT 'Nome da Empresa',
  `codEmpresa` varchar(5) NOT NULL,
  PRIMARY KEY (`idEmpresa`),
  UNIQUE KEY `idEmpresa` (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO empresa VALUES ('1', 'F F Cunha Telecomunicações e Informática ME', 'FFC01')
,('2', 'Empresa Teste', 'EMT02')
,('4', 'New teste 02', 'NEW02')
,('5', '', '')
;

#
# CriaÃ§Ã£o da Tabela : ordem
#

CREATE TABLE `ordem` (
  `idOrdem` int(12) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(12) NOT NULL COMMENT 'Id Da empresa',
  `os` int(6) NOT NULL COMMENT 'Número da Ordem de Serviço',
  `idCliente` int(5) NOT NULL COMMENT 'ID do Cliente',
  `data` date NOT NULL,
  `situacao` char(1) CHARACTER SET latin1 NOT NULL DEFAULT 'A' COMMENT 'Situação: A=aberta, M=modificada, F=fechada',
  `problema` text CHARACTER SET latin1 COMMENT 'Problema Relatado',
  `servico` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Serviço Executado',
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
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO ordem VALUES ('1', '1', '1', '39', '2013-06-25', 'A', 'testando!!!!', 'ormem 1', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
,('2', '1', '2', '2', '2013-07-11', 'F', 'ddd', 'dfsda roupa suja se lava em casa!!!', '~~lll~0~
~~0~0~
~~jjj~0~
jj~~~0~0', '10:00', '12:00', '2:0', '65,00', '20,00', '0', '85.00', '0', '85.00', '')
,('3', '1', '3', '25', '2013-08-14', 'A', 'Terá de ser a Ordem 3', 'sss fsfsfsfsdfsd', '1001~50~TT~5,00~250.00
1002~22~hhh~10,00~220.00
~~~0~0', '', '', '0:0', '0', '0', '0', '0.00', '320.00', '320.00', '')
,('4', '1', '4', '39', '2013-08-14', 'F', 'Segunda ordem teste', '', '222~01~jgjg~10,00~10.00', '', '', '', '0', '0', '0', '0', '0.00', '0', '')
,('6', '2', '1', '67', '2013-08-14', 'A', 'testando!!!!', 'ormem 1', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
,('7', '2', '2', '66', '2013-08-14', 'A', 'ggg', '', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
,('8', '2', '3', '66', '2013-08-14', 'A', 'Continuará sendo a ordem 3', 'sss', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
,('9', '2', '4', '71', '2013-08-14', 'A', 'Próxima Ordem foi a 4', 'Ordem de número 4', '~~~', '10:23', '12:51', '2:28', '0', '0', '0', '0.00', '0', '0.00', '')
,('10', '1', '5', '68', '2013-12-30', 'A', 'Inserindo material na ordem', '', '02~Pente de mï¿½mï¿½ria~50,00~100.00~', '', '', '0:0', '0', '0', '0', '0.00', '350.00', '350.00', '')
;

#
# CriaÃ§Ã£o da Tabela : permissao
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
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO permissao VALUES ('2', '1', '1-1-1-1', '1-1-1-1', '', '')
,('3', '1', '1-0-0-0', '1-0-0-0', '', '')
;

#
# CriaÃ§Ã£o da Tabela : produtos
#

CREATE TABLE `produtos` (
  `idProduto` int(12) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL,
  `cod_produto` varchar(8) NOT NULL,
  `nome_produto` varchar(120) NOT NULL,
  `descri_produto` varchar(255) DEFAULT NULL,
  `valor` varchar(8) NOT NULL,
  `quantidade` int(12) NOT NULL COMMENT 'Quantidade em Estoque',
  `qtMinima` int(2) DEFAULT NULL COMMENT 'Quantidade Mínima',
  `foto_produto` varchar(80) DEFAULT NULL,
  `obs_produto` text NOT NULL,
  PRIMARY KEY (`idProduto`),
  UNIQUE KEY `idProduto` (`idProduto`),
  KEY `idProduto_2` (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ;

#
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO produtos VALUES ('9', '1', 'f171', 'Produto teste', 'ddd', '', '0', '0', 'f171_1.jpg', '')
,('10', '1', 'F172', 'novo teste', '', '', '0', '0', 'F172_1.jpg', '')
,('11', '1', 'F173', 'XXX', '', '', '0', '0', 'F173_1.jpg', '')
,('12', '1', 'IMG01', 'Imagem 01', 'teste', '', '0', '0', 'IMG01_1.jpg', '')
,('13', '1', 'IMG02', 'Imagem 02', 'teste', '', '0', '2', 'IMG02_1.jpg', '')
,('16', '2', 'F172', 'troca', 'qqq', '', '0', '0', 'F172_2.jpg', '')
,('17', '1', 'IMG20', 'Teste de configuração', 'config', '', '0', '0', 'IMG20_1.jpg', '')
;

#
# CriaÃ§Ã£o da Tabela : usuarios
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
# Dados a serem incluÃ­dos na tabela
#

INSERT INTO usuarios VALUES ('1', '1', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '', '', '')
,('2', '1', 'ffctechnologies', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Flavius Ferrari', 'flaviusferrari@globo.com', 'Qual sua música favorita', 'Faroeste Caboclo')
,('3', '1', 'flavius', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Flavius Ferrari', 'flaviusferrari@globo.com', 'Qual a sua religião?', 'Espirita')
,('5', '2', 'user', 'c62d929e7b7e7b6165923a5dfc60cb56', 'UsuÃ¡rio de Teste', '', '', '')
;
