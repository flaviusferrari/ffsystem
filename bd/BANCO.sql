-- Criando tabela: agenda
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO agenda VALUES ('1', '1', 'Teste', '', '2013-11-04', '12:45', 'Testando gravaÃ§Ã£o', '')
INSERT INTO agenda VALUES ('2', '1', 'ReuniÃ£o Styllo', '', '2013-11-12', '10:00', 'Norte Shooping - Centro empresarial 
Sala: 811', '')
INSERT INTO agenda VALUES ('3', '1', 'Helena Cristina', '', '2013-11-06', '10:00', 'Micro com problema no vÃ­deo.', '')
INSERT INTO agenda VALUES ('4', '1', 'Helio Velloso', '', '2013-11-07', '10:00', 'Geral nos micros
InstalaÃ§Ã£o do micro novo', '')
INSERT INTO agenda VALUES ('5', '1', 'Overcell', '', '2013-11-11', '10:00', 'Micro nÃ£o estÃ¡ ligando;
MÃ¡quinas continuam lentas', '')
INSERT INTO agenda VALUES ('6', '1', 'Helen - RogÃ©rio', '', '2013-11-19', '14:30', 'Micro Muito lento', '')
INSERT INTO agenda VALUES ('7', '1', 'Jacob Goldenberg', '', '2013-11-27', '10:00', 'Micro nÃ£o inicia', '')
INSERT INTO agenda VALUES ('8', '1', 'Viajes Norte - Filial', '', '2014-01-13', '10:00', 'ReuniÃ£o sobre o sistema', '')
INSERT INTO agenda VALUES ('9', '1', 'ReuniÃ£o Isabel', '', '2014-01-10', '15:00', 'ReuniÃ£o sobre o sistema.
Confirmar antes.', '')
INSERT INTO agenda VALUES ('10', '1', 'Elza', '', '2014-01-20', '10:00', 'Micro com vÃ­rus', '')
INSERT INTO agenda VALUES ('11', '1', 'Sergio Freitas', '', '2014-03-21', '15:00', 'VerificaÃ§Ã£o do Netbook', 'ConsultÃ³rio')
INSERT INTO agenda VALUES ('12', '1', 'Luiz Fernando', '', '2014-03-25', '10:00', 'Micro com vÃ­rus', '')
INSERT INTO agenda VALUES ('13', '1', 'ReuniÃ£o sobre Sistema', '', '2014-03-24', '11:00', 'Exclusive Tour', '')
INSERT INTO agenda VALUES ('14', '1', 'Ayrton', '', '2014-03-28', '10:00', 'InstalaÃ§Ã£o de programas no Laptop', '')


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
INSERT INTO clientes VALUES ('2', '1', 'Flavius Ferrari', 'Rua Barão de Mesquita', '796', '', '20540-004', '', 'Rio de janeiro', 'AC', 'PF', '', '', '', 'Teste de Atualização!!!

Agora com domínio HTTP!!!')
INSERT INTO clientes VALUES ('3', '1', 'Flavius Ferrari', 'Rua Barão de Mesquita', '796', '', '', '', '', 'AC', 'PF', '', '', '', 'Segundo teste de Gravação!!!')
INSERT INTO clientes VALUES ('4', '1', 'Mônica Lacerda', 'Av. Nossa Senhora de Copacabana', '680', 'ap: 613', '22050-900', 'Copacabana', 'Rio de janeiro', 'AC', 'PF', '(21)2549-4243', '', '(21)9964-8241', 'Senha Hostnet: 4r3e2w1q

Endereço Resid?ncial: Rua Tonelero, 185 ap: 702

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
INSERT INTO clientes VALUES ('5', '1', 'Ellen Teixeira', 'Rua Botucatú', '56', '903', '', 'Grajaú', 'Rio  de Janeiro', 'RJ', 'PF', '(21)2238-6225', '', '(21)9834-7300', 'Data: 30-04-2012
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
INSERT INTO clientes VALUES ('6', '1', 'Fernando Fernandes', 'Av. Henrique Dodswort', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)9703-9838', 'Amigo da Ana Roldão

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
INSERT INTO clientes VALUES ('7', '1', 'Rosa Alves', 'Av. Oswaldo Cruz', '106', '101', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2551-2282', '', '(21)9997-3811', 'Data: 02-05-2012
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
INSERT INTO clientes VALUES ('8', '1', 'Fernando Cerole', 'Rua Gonzaga Bastos', '259', 'casa 7', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2572-1296', '', '(21)9214-2010', 'Data: 09-10-2012
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
INSERT INTO clientes VALUES ('9', '1', 'Amélia Cristina', 'Rua Ribeiro Guimarães', '360', '501', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-9636', '', '(21)7941-3200', 'Data: 08-05-2012
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
INSERT INTO clientes VALUES ('10', '1', 'Valéria Gullo', 'Rua Pontes Correa', '167', '503', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2208-7631', '', '(21)9613-6928', 'Data: 22-03-2013
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
INSERT INTO clientes VALUES ('11', '1', 'Renata Gondin', 'Rua Botucatú', '', '302', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-3234', '', '', 'Data: 11-05-2012
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
INSERT INTO clientes VALUES ('12', '1', 'Clínica AFGV', 'Praça Olavo Bilac', '28', '910', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2507-3175', '', '', 'Micro D. Fátima
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
INSERT INTO clientes VALUES ('13', '1', 'Jorge Delou', 'Rua Pontes Correa', '101', '103', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-7534', '', '', 'Filho da Angela Delou

Data: 15-05-2012
- Foi efetuado testes no HD antigo e verificou-se que o mesmo está com defeito
- Troca do HD antigo por um novo
- Formatação e instalação de todos os programas
- Backup dos arquivos do HD Antigo pro Novo
- Recuperação de arquivos do HD Antido
- Instalação de um Gravador de DVD')
INSERT INTO clientes VALUES ('14', '1', 'Ayrton Penedo', 'Rua Visconde de Santa Isabel', '321', '804', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-2827', '', '(21)8131-8562', 'Data: 12-11-2012
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
INSERT INTO clientes VALUES ('15', '1', 'Ney Sarmento', 'Rua Major Ávila', '200', 'Loja C', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-0775', '', '(21)8513-1615', 'Data: 30-05-2012
- Instalação do sistema Otica no Laptop
- Instalação do Avast
- Backup do Sistema
- Configuração de um Backup diário (Cobian)
')
INSERT INTO clientes VALUES ('16', '1', 'Mastercoop Cooperativa', 'Rua Haddock Lobo', '11', 'sl: 701', '', 'Estácio', 'Rio de Janeiro', 'RJ', 'PF', '(21)3796-0445', '', '(21)7871-4566', 'Data: 31-05-2012
Micro Paula
  - Recuperação do Windows com Scandisk
  - Atualização do Ccleaner
  - Remoção do BrOffice 3.2
  - Instalação do LibreOffice 3.5.4
  - Atualização do Auslogic Disk Defrager 3.4.3.5
  - Atualização do Flash
  - Limpeza dos temporários
  - Desfragmentação dos Arquivos')
INSERT INTO clientes VALUES ('17', '1', 'Magaly Espinar da Costa', 'Rua Souto Carvalho', '40', '201', '', 'Engenho Novo', 'Rio de Janeiro', 'RJ', 'PF', '(21)3880-2592', '', '(21)9953-6537', 'Data: 04-06-2012
MICRO MAGALY 01
- Configurada a impressora para imprimir em rascunho (configuração está saindo)
- Instalação do Skype
- Ajuste da WebCan
- Criada uma conta do Skype e configuração do mesmo
- Suporte técnico')
INSERT INTO clientes VALUES ('18', '1', 'Irineu Moreira da Silva', 'Rua Domingos Lopes', '410', 'LJ: 101', '', 'Madureira', 'Rio de Janeiro', 'RJ', 'PF', '(21)3018-3211', '', '', 'Data: 26-10-2012
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
INSERT INTO clientes VALUES ('19', '1', 'Rosemary Duarte', 'Rua das Laranjeiras', '136', '402', '', 'Laranjeiras', 'Rio de Janeiro', 'RJ', 'PF', '(21)2233-7205', '(21)3903-6738', '(21)9969-0225', 'Data: 08-06-2012
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
INSERT INTO clientes VALUES ('20', '1', 'Wilton Taranto', 'Rua Conde de Bonfim', '289 A', '603', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '(21)2569-7225', '', '(21)9255-8199', 'Data: 10-07-2012
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
INSERT INTO clientes VALUES ('21', '1', 'Angela Delou', 'Rua', '', '', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)9612-8968', 'Data: 06-07-2012
- instalação e configuração do roteador novo (TP-Link)
- Atualização do Ccleaner
- Atualização do Avast
- Limpeza dos temporários
- Desfragmentação de disco

Data: 18-01-2012
- Atualização do Avast
- Atualização do Ccleaner
- Remoção da Mensagem se Windows pirata
- Atualização do Java
- Compatibilidade dos arquivos do Office 2003 com os do Office 2007
- Atualização do K-lite Mega Codec Pack
- limpeza dos temporários
- Desfragmentação de Disco
- Backup dos arquivos')
INSERT INTO clientes VALUES ('22', '1', 'Ana Roldão', 'Av Henrique Dodsworth', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)7140-7815', 'Data: 09-07-2012
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
INSERT INTO clientes VALUES ('23', '1', 'Flavia Diego', 'Rua Gonçalves Freire', '296', '404', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2254-8254', '', '(21)9916-3600', 'Data: 11-07-2012
Micro Marcela
- Troca da fonte que estava queimada
- Atualização do Avast
- Limpeza interna
- Desfragmentação de Disco')
INSERT INTO clientes VALUES ('24', '1', 'Exclusive Exchange Tour', 'Rua Belford Roxo', '129', 'Loja B', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3518-0611', '', '', 'Data: 06-09-2012
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
INSERT INTO clientes VALUES ('25', '1', 'Alphonse', 'rua', '', '', '', '', 'Rio de Janeiro', 'AC', 'PF', '', '', '(21)9329-7367', 'Data: 16-07-2012
- Teste de Disco - OK
- Limpeza interna no micro
- Combofix: Remoção de vírus
- Windows: Atualização do SO
- Avast: Atualização
- Avast: Verificação completa do micro - OK
- Firefox: Atualização para a versão 13
- Ajuste no particionamento do HD
- Atualização do Ccleaner
- Atualização do K-lite Mega Codec Pack
- Atualização do Java
- Remoção do Java antigo
- Limpeza dos temporários
- Criado um Ponto de Restauração
- Verificação do Registro
- Teste de Desempenho (Benchmark PC Wizard 2008): 4028.51
- Foi detectado que a placa de vídeo não estava inicializando, o que causava o não aparecimento
da imagem. Placa retirada para teste.')
INSERT INTO clientes VALUES ('26', '1', 'Taranto', 'Rua dos Araújos', '11-A', 'Bl: 01 ap: 302', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '', '', '', 'Data: 26-07-2012
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
INSERT INTO clientes VALUES ('27', '1', 'Clinatran', 'Rua da Conceição', '105', '806/807', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2203-0413', '(21)3244-2919', '', 'Data: 11-09-2012
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
INSERT INTO clientes VALUES ('28', '1', 'Maria Aparecida de Souza Gonçalves', 'Rua Paulo Silva Araújo', '107-A', 'Casa 15 - 201', '', 'Méier', 'Rio de Janeiro', 'RJ', 'PF', '(21)2269-7394', '', '(21)9644-1672', 'Data: 01-08-2012
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
INSERT INTO clientes VALUES ('29', '1', 'Viajes Norte Cambio e Turismo', 'Rua Nossa Senhora de Copacabana', '1022', 'LJ: A', '', 'Copacabana', 'Rio de janeiro', 'RJ', 'PJ', '(21)2522-1898', '', '', 'Micro Francisco (virtual)
Data: 13-11-2012
- Foi instalada uma nova máquina virtual com Wim7, pois o XP estava corrompendo muito

Micro Silvia (filial)
Data: 01-11-2012
- Micro da Silvia corrompeu o Windows
- Recuperação do Windows com o cd

Testando a atualização do cadastro!!!

Filial: 2247-9302')
INSERT INTO clientes VALUES ('30', '1', 'Maurício Beniacar', 'Rua Marquês de Abrantes', '100', '502', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)8892-2985', 'Data: 06-08-2012
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
INSERT INTO clientes VALUES ('31', '1', 'Helena Cristina', 'Rua Figueiredo Magalhães', '122', '701', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2264-1378', '', '(21)9516-0182', 'Data: 20-03-2013
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
INSERT INTO clientes VALUES ('32', '1', 'Paulo Pereira', 'Rua Dona Zulmira', '73', '104', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)3437-8997', '', '(21)9951-5581', 'Sandra Pereira: ppsan@oi.com.br 9356-8334
Data: 15-08-2012
- Instalado um HD NOvo
- Instalação do Windows e de todos os programas')
INSERT INTO clientes VALUES ('33', '1', 'Leonardo Antonio dos Santos', 'Rua Barata Ribeiro', '502', '813', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2236-5248', '', '(21)9323-6637', 'Data: 25-09-2012
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
INSERT INTO clientes VALUES ('34', '1', 'Simone Soares Ferreira', 'Rua Sáviana', '209', '', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '(21)3684-5827', '', '(21)9121-2758', 'Data: 22-08-2012
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
INSERT INTO clientes VALUES ('35', '1', 'Shop Freezer', 'Rua Esmeraldino Bandeira', '67', '', '20961-080', 'Riachuelo', 'Rio de Janeiro', 'RJ', 'PJ', '2125012833', '2125012517', '', 'Data: 04-09-2012
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
INSERT INTO clientes VALUES ('36', '1', 'Homero', 'Rua Jorge Hudge', '240', 'casa', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-8237', '', '(21)9487-2520', 'Izabel: 9496-3847

Data: 07-09-2012
- Instalação do micro novo
- Backup dos Arquivos do micro Antigo
- Configuração da Impressora
- Instalação do Windows e de todos os programas')
INSERT INTO clientes VALUES ('38', '1', 'Helio Veloso', 'Rua Dona Zulmira', '112', '07', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)7817-2537', 'Data: 17-09-2012
- Tentativa de Recuperação do Windows
- Formatação do micro
- Instalação de todos os programas
- Instalação da impressora
- configuração do roteador')
INSERT INTO clientes VALUES ('39', '1', 'Alberto Hugo', 'Rua Aristide Espínola', '52', '504', '', 'Leblon', 'Rio de Janeiro', 'RJ', 'PF', '(21)2239-7235', '', '', 'Data: 21-09-2012
- Reconfiguração da Rede Wireless
- Atualização do Avast
- Atualização do Windows e dos programas
- Remoção da mensagem de software pirata do Windows
- Configuração do Laptop em rede
- Manutenção Geral')
INSERT INTO clientes VALUES ('40', '1', 'Jacson Bras de Andrade', 'R. Frederico Santoni, Rua D', '29', '', '20766-520', 'Engenho da Rainha', 'Rio de Janeiro', 'RJ', 'PF', '(21)4104-0608', '', '(21)7842-6974', 'Final da Frederico Santoni.

Styllo Locação

Data: 14-09-2012  OS: 1612
- Formatação do Laptop
- Backup dos arquivos em DVD
- Instalação do windows e dos programas
- Teste de HD - OK')
INSERT INTO clientes VALUES ('41', '1', 'Sergio Freitas', 'Rua Genaral Severiano', '76', 'Bl:2 ap: 610', '', 'Botafogo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2542-8967', '', '(21)9884-7775', 'Data: 28-09-2012
- Instalação e configuração do Roteador
- Instalação do Avast Pro
- Suporte Técnico
- Reconfigurado o Netbook para o Wireless
- Atualização dos programas')
INSERT INTO clientes VALUES ('42', '1', 'Cibele Magalhães', 'Rua Uruguai', '196', '702 Bl: b', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-0016', '', '(21)9662-2078', 'Data: 22-02-2013
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
INSERT INTO clientes VALUES ('43', '1', 'Edileusa Pereira ', 'Rua Nerval de Gouveia', '111', 'ap 101 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2594-5177', '', '(21)9618-5905', '')
INSERT INTO clientes VALUES ('44', '1', 'Letimar Pereira', 'Rua Nerval de Gouveia', '111', 'ap 102 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2593-8339', '', '', 'Data: 16-10-2012
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
INSERT INTO clientes VALUES ('45', '1', 'Sueli Caldas Magalhães', 'Rua Humaitá', '135', '304', '', 'Humaitá', 'Rio de Janeiro', 'RJ', 'PF', '(21)2226-1199', '', '(21)9648-1672', 'Data: 08-05-2013
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
INSERT INTO clientes VALUES ('46', '1', 'Conted Assisistencia Contábil', 'Av. Presidente Vargas', '962', '1310', '', 'Centro', 'Rio de Janeiro', '', 'PJ', '(21)2263-2161', '(21)2518-1330', '', 'Data: 05-11-2012
- Instalação do micro novo
- Configuração do micro em rede
- Configuração da impressora
- Recuperado o Windows do micro principal que havia corrompido

Data: 22-10-2012
- Remoção e instalação dos softwares da impressora HP Deskjet F2050;
- Remoção do software da impressora Lexmark;
- Atualização do Firefox;
- Atualização do Team Viewer.')
INSERT INTO clientes VALUES ('47', '1', 'Elza Souza', 'Rua José Higino', '58', '301', '', 'Tijuca', 'Rio de Janeiro', 'AC', 'PF', '(21)2571-1695', '', '(21)99446-4512', 'Data: 08-11-2012
- Montagem do micro novo;
- Instalação e configuração dos programas;
- Atualização do Sistema.')
INSERT INTO clientes VALUES ('48', '1', 'Danielle Pingitore', 'Rua Leopoldo', '193', '301', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2238-9043', '', '(21)9881-8539', 'Data: 09-11-2012
Micro Tio Dani
- Remoçao de vírus
- Atualizaçao dos programas
- Instalação do Gimp, Inkscape, Avast
- Verificação do Registro
- Limpeza dos temporários')
INSERT INTO clientes VALUES ('50', '1', 'Reginaldo Ribeiro e Silva', 'Rua Conego Tobias', '130', 'casa 10', '', 'Méier', 'Rio de Janeiro', 'RJ', 'PF', '(21)3472-4091', '', '(21)9851-8007', 'Data: 30-11-2012
- Troca do Gabinete do micro')
INSERT INTO clientes VALUES ('51', '1', 'Uriam Moraes', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9751-7983', '')
INSERT INTO clientes VALUES ('52', '1', 'Suzana', 'Rua Santa Amélia', '5', '', '', '', '', 'RJ', 'PF', '(21)2273-1513', '', '', '')
INSERT INTO clientes VALUES ('53', '1', 'Limaloc Distribuidora e Locadora de Equipamentos Ltda', 'Estr. Adhemar Bebiano', '1813', '', '21050-630', 'Del Castilho', 'Rio de janeiro', 'RJ', 'PJ', '(21)2583-0143', '(21)2218-8507', '', '')
INSERT INTO clientes VALUES ('54', '1', 'Jairo Debossan', 'Rua Bulhoes Carvalho', '329', '702', '', 'Copacabana', '', 'AC', 'PF', '(21)2247-4085', '', '(21)9973-2675', '')
INSERT INTO clientes VALUES ('55', '1', 'Maria Cecília', 'Rua Barão de Icaraí', '21', '803', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2552-6988', '', '(21)9624-7562', 'Data: 19-01-2013
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
INSERT INTO clientes VALUES ('56', '1', 'Thiago - Exclusive', 'Rua Ana Leonídia', '175', '102', '', 'Engenho de Dentro', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)7856-7707', 'Data: 21-01-2013 OS: 1646
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
INSERT INTO clientes VALUES ('57', '1', 'Marcela Pastor Veloso', 'Rua D. Zulmira', '112', 'casa 7', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)9395-5435', 'Nextel: 7814-5910')
INSERT INTO clientes VALUES ('58', '1', 'Jacob Goldemberg', 'Rua Macedo Sobrinho', '74', '504', '', 'Copacabana', 'Rio de Janeiro', 'AC', 'PF', '(21)2521-3345', '', '(21)9976-8988', 'Data: 23-02-2013
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
INSERT INTO clientes VALUES ('59', '1', 'Eliana Moreira', 'Rua Ferreira Pontes', '430', 'BL 1/603', '20541-280', 'ANDARAÍ', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-5754', '', '(21)8285-9688', 'Data: 25-02-2013
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
INSERT INTO clientes VALUES ('60', '1', 'Fátima Lana', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9634-3990', '')
INSERT INTO clientes VALUES ('61', '1', 'Ana Claudia', 'RUA BARAO DE MESQUITA', '1021', '204', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)8332-6796', 'Data: 04-03-2013
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
INSERT INTO clientes VALUES ('62', '1', 'Luiz Henrique', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9761-2004', 'Pai da Cláudia')
INSERT INTO clientes VALUES ('63', '1', 'Silvia Santiago', 'Rua Senador Correia', '42', '306 bl:A', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2558-4175', '', '(21)8136-8975', 'Data: 05-04-2013
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
INSERT INTO clientes VALUES ('64', '1', 'Romi Cunha', '', '', '', '', '', 'Rio de janeiro', 'RJ', 'PF', '(21)2591-2645', '', '(21)9751-8892', 'Evangelizadora do CEBMA')
INSERT INTO clientes VALUES ('65', '1', 'Conceição', '', '', '', '', '', '', 'AC', 'PF', '(21)6921-7525', '', '(21)9205-4439', 'Faxineira')
INSERT INTO clientes VALUES ('66', '1', 'Vigapetro', 'Rua Marquês de Abrantes', '100', '502', '', 'Flamengo', 'Rio de janeiro', 'RJ', 'PJ', '', '', '', '')
INSERT INTO clientes VALUES ('67', '1', 'Ana Lúcia P. Oliveira', 'Travessa José Bonifácio', '46', '', '', 'Todos os Santos', 'Rio de janeiro', 'RJ', 'PF', '(21)2597-2470', '', '(21)8111-1989', '')
INSERT INTO clientes VALUES ('68', '1', 'Mitsuba', 'Rua São Francisco Xavier', '70', '', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PJ', '(21)2264-7284', '', '', '')
INSERT INTO clientes VALUES ('69', '1', 'Celso ', '', '', '', '', '', 'Rio de janeiro', 'RJ', 'PF', '', '', '(21)8173-4233', 'Genro do Cleonir')
INSERT INTO clientes VALUES ('70', '1', 'Luiz Fernando', 'Rua Mario Calderaro', '212', '', '', 'Engenho de Dentro', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)9739-2715', 'Carmem: 98480259')
INSERT INTO clientes VALUES ('71', '1', 'Styllo Locação', 'Rua Frederico Santoni, rua D', '29', '', '', 'Inhaúma', 'Rio de janeiro', 'AC', 'PJ', '(21)4104-0608', '', '', 'Rafael (suporte site): 3553-1395 / 2135-5326')
INSERT INTO clientes VALUES ('72', '1', 'Ligia Lurasky', 'Rua Carvalho Alvim', '73', '302', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '', '', '(21)9377-7719', '')
INSERT INTO clientes VALUES ('73', '1', 'Denise Advogada', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)7861-7418', '')
INSERT INTO clientes VALUES ('74', '1', 'José Luiz Ferreira Reis', 'Rua Botucatú', '551', '902', '', 'Grajaú', 'Rio de Janeiro', 'AC', 'PF', '(21)2570-4940', '(21)2238-2743', '(21)9955-3381', '')
INSERT INTO clientes VALUES ('75', '2', 'Teste PF', 'Rua Inventada', '171', '', '', '', '', 'AC', 'PF', '', '', '', 'Teste de acentuação!!!')
INSERT INTO clientes VALUES ('76', '2', 'Empresa Teste', '', '', '', '', '', '', 'BA', 'PJ', '', '', '', '')
INSERT INTO clientes VALUES ('77', '1', 'Clóvis Antônio Oliveira de Araújo', 'Av Maracanã', '1401', '202', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-9860', '', '', '')
INSERT INTO clientes VALUES ('78', '3', 'Selco Vedações Dinãmicas Ltda', 'Rua Bertoldo Klinger', '360', '', '09688-000', 'Vila Paulicéia', 'São Bernardo do Campo', 'SP', 'PJ', '(11)4176-4056', '', '(11)4178-4492', 'Aparecido Pires - Coord. Vendas cel. 11992474950
apires@selcoved.com.br
Alexandre Batistela - Ger. Vendas - cel 11002479856
abatistela@selcoved.com.br
Vivian Sousa - tel. 11 4176-4006
vsouza@selcoved.com.br
Luiz Tachikawa - Engenharia - tel.11 4176-4027
cel. 11992479108
tachikawa@selcoved.com.br')
INSERT INTO clientes VALUES ('79', '1', 'Maíra Lauro', 'Rua Barão de Mesquita', '510', '405', '20540-156', 'Tijuca', 'Rio de janeiro', 'AC', 'PF', '(21)2288-4592', '', '', 'Beth (mãe) - 8411-5880
Ivan (irmão) - 98935-4842')
INSERT INTO clientes VALUES ('80', '1', 'Overcell', 'Rua do Rosário', '170', '3 andar', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PJ', '', '', '', '')
INSERT INTO clientes VALUES ('81', '2', 'teste', '', '', '', '', '', '', 'AC', 'PF', '', '', '', 'fffffffggg')
INSERT INTO clientes VALUES ('82', '1', 'Jonil Feydit', 'Rua Itabaiana', '220', '203', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '(21)2577-4387', '', '', '')
INSERT INTO clientes VALUES ('84', '1', 'Hidrario Equi. Hidraulicos e Pneumáticos', 'Rua Darke de Matos', '233', 'Loja B', '21051-470', 'Higienópolis', 'Rio de Janeiro', 'RJ', 'PJ', '(21)2270-1449', '(21)2290-5636', '', '')
INSERT INTO clientes VALUES ('85', '1', 'João Seek', '', '', '', '', '', '', 'AC', 'PF', '(21)2620-8816', '', '(21)99462-7328', '')
INSERT INTO clientes VALUES ('86', '1', 'Zélia', 'Rua Santa Clara', '220', '702', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2256-2816', '', '', '')
INSERT INTO clientes VALUES ('87', '1', 'Fátima Crispim', 'Rua Santa Amélia ', '88', '206', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2273-9762', '', '(21)99636-1337', '')
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
INSERT INTO contatos VALUES ('2', '46', 'José Roberto', 'Responsável', '', '', 'undefined', 'conted@veloxmail.com.br')
INSERT INTO contatos VALUES ('3', '80', 'Sandra', 'Gerente', '', '', 'undefined', '')
INSERT INTO contatos VALUES ('4', '84', 'Sheila', 'Recepção', '', '', '', '')
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
INSERT INTO empresa VALUES ('1', 'F F Cunha Telecomunicações e Informática ME', 'FFC01')
INSERT INTO empresa VALUES ('2', 'Empresa Teste', 'EMT02')
INSERT INTO empresa VALUES ('3', 'Profer', 'PRO03')


-- Criando tabela: ordem
CREATE TABLE `ordem` (
  `idOrdem` int(12) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL,
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
  KEY `idCliente` (`idCliente`),
  KEY `idOrdem` (`idOrdem`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8

-- Salva os dados
INSERT INTO ordem VALUES ('25', '2', '1', '75', '2013-08-22', 'A', 'Abrindo para testar', '', '2~Teste~50,00~100.00
1~~20,00~20.00', '', '', '0:0', '10,00', '0', '0', '10.00', '120.00', '130.00', '')
INSERT INTO ordem VALUES ('1', '1', '1700', '2', '2013-05-23', 'F', 'Micro travando;', 'Segundo teste de Gravação;', '~~~', '10:25', '11:59', '1:34', '120,00', '0', '0', '', '', '120.00', 'testando o cliente')
INSERT INTO ordem VALUES ('2', '1', '1701', '27', '2013-05-24', 'F', 'Instalação do micro novo;', 'Formatação e instalação dos softwares no micro novo;
Instalação da Habilitação Digital;
Instalação da Impressora;', '~~~', '', '', '', '100,00', '50,00', '0', '', '', '150.00', 'Foi instalado o micro antigo de backup enquanto o novo era configurado.')
INSERT INTO ordem VALUES ('3', '1', '1702', '29', '2013-05-27', 'F', '', 'Instalação da fonte no micro do Francisco;
Verificação do HD externo;
Atualização do Ubuntu;
Manutenção Geral nos micros;
suporte Técnico;', '01~Fonte ATX 450W C3Tech~100,00~100,00', '', '', '', '120,00', '0', '0', '', '', '220.00', '')
INSERT INTO ordem VALUES ('4', '1', '1703', '43', '2013-05-31', 'F', 'Montagem do micro;', 'Montagem do micro;
Configuração da Impressora;
Instalação da impressora em rede;
Atualização dos programas;
Configuração do e-mail;', '~~~', '10:24', '13:32', '3:8', '100,00', '40,00', '20,00', '', '', '120.00', '')
INSERT INTO ordem VALUES ('5', '1', '1704', '38', '2013-05-31', 'F', 'Micro não conecta na Internet;', 'foi verificado que a placa de rede Wireless estava com mal contato no slot;
atualização do windows;
Atualização do libreoffice;
Mantenção preventiva;
Atualização dos programas;
Desfragmentação de disco;', '~~~', '16:12', '17:18', '1:6', '80,00', '0', '0', '', '', '80.00', '')
INSERT INTO ordem VALUES ('6', '1', '1705', '29', '2013-06-04', 'F', '', 'Suporte Técnico Extra;', '~~~', '', '', '', '300,00', '0', '0', '', '', '300.00', 'ManutenÃ§Ã£o do Servidor.')
INSERT INTO ordem VALUES ('7', '1', '1706', '29', '2013-06-05', 'F', '', 'Instalação do Windows e todos os programas no HD Externo do Edson;
Instalação do HD externo;
Suporte Técnico;', '~~~', '12:00', '14:00', '2:0', '120,00', '0', '0', '', '', '120.00', '')
INSERT INTO ordem VALUES ('8', '1', '1715', '30', '2013-06-06', 'F', 'Micro não está ligando;', 'Remoção de vírus;
Limpeza interna no micro;
Atualização do Windows e dos programas;
Desfragmentação de disco;
Verificação do Registro;', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '20,00', '', '', '60.00', '')
INSERT INTO ordem VALUES ('9', '1', '1716', '66', '2013-06-06', 'F', 'Desenvolvimento do sistema', '', '~~~', '10:00', '12:00', '2:0', '50,00', '0', '0', '', '', '50.00', '')
INSERT INTO ordem VALUES ('10', '1', '1717', '24', '2013-06-06', 'A', 'Micro em Inglês;', 'Formatação do micro; 
Instalação de todos os programas;
Atualização do Windows;
Particionamento do HD;', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '0', '', '', '80.00', '')
INSERT INTO ordem VALUES ('11', '1', '1718', '67', '2013-06-07', 'F', 'Micro com problema ao ligar;
Micro muito lento;', 'Limpeza interna do micro;
Verificação do HD e memória;
Troca da memória;
Atualização do Windows e dos programas;
Reinstalação do chrome;
Desfragmentação de disco;
Verificação do Registro;
Remoção de Vírus;', '01~Memória DDR2 800 Markvision~85,00~85,00
~~0~0', '10:00', '12:00', '2:0', '80,00', '0', '5,00', '75.00', '85.00', '160.00', '')
INSERT INTO ordem VALUES ('12', '1', '1719', '59', '2013-06-11', 'F', 'Laptop da Claudia não inicia o Windows;', 'Foram efetuados testes e verificou-se que o Laptop estava com o Windows corrompido, sendo necessário formatar o mesmo;
Particionamento do HD;
Backup dos Arquivos;
Instalação do Windows e dos programas;
Atualização do Windows;', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '0', '', '', '80.00', '')
INSERT INTO ordem VALUES ('13', '1', '1720', '68', '2013-06-15', 'F', 'Micro ao lado do caixa não está reconhecendo o HD;', 'Foi constatado que o cabo flat estava comproblema, sendo o mesmo trocado;
Limpeza interna do micro;
Verificação do HD;
Atualização dos programas;
Remoção de vírus;
Desfragmentação de Disco;
Verificação do Registro;', '~~~', '10:00', '12:00', '2:0', '100,00', '0', '0', '', '', '100.00', 'Foi pego um taxi para trazer o micro.')
INSERT INTO ordem VALUES ('14', '1', '1721', '26', '2013-06-27', 'F', 'Micro antigo não inicia;', 'Foi constatado que a memória estava suja, impedindo que o micro inicia-se;
Limpeza interna do micro;
Atualização dos programas do micro novo;
Instalação do Nero;
Suporte Técnico;', '~~~', '11:23', '12:23', '1:0', '80,00', '0', '0', '', '', '80.00', '')
INSERT INTO ordem VALUES ('15', '1', '1722', '29', '2013-06-30', 'A', '', 'Suporte Técnico mensal', '~~~', '', '', '', '300,00', '0', '0', '', '', '300.00', '')
INSERT INTO ordem VALUES ('16', '1', '1723', '71', '2013-07-10', 'F', 'Criação de E-mail;
Configuração dos e-mails no micro;', 'Foram criados os e-mails financeiro@styllolocacao.com.br e expedicao@styllolocacao.com.br;
Configurados os e-mails no micro;
Atendimento remoto;', '~~~', '10:00', '11:30', '1:30', '35,00', '0', '0', '', '', '35.00', 'ServiÃ§os executados de forma remota.')
INSERT INTO ordem VALUES ('17', '1', '1724', '45', '2013-07-26', 'A', 'Instalação e configuração do micro novo;', 'Montagem do micro;
Instalação de todos os programas;
Backup dos arquivos do micro antigo;
Instalação da impressora em rede;
Configurações Gerais;', '~~~', '11:35', '14:10', '2:35', '120,00', '40,00', '0', '160.00', '0', '160.00', '')
INSERT INTO ordem VALUES ('18', '1', '1725', '42', '2013-07-27', 'A', 'Instalação e configuração do micro novo;', 'Instalação do Win XP e todos os programas;
Backup dos arquivos do HD antigo;
Configuração da impressora; ', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '0', '80.00', '', '80,00', '')
INSERT INTO ordem VALUES ('19', '1', '1726', '53', '2013-07-30', 'A', 'Micro da Lidiane travando;', 'Foi efetuada uma manutenção geral no micro;
Atualização dos programas;
Verificação dos micros da empresa;', '~~~', '11:35', '13:39', '2:4', '120,00', '40,00', '0', '160.00', '0', '160.00', '')
INSERT INTO ordem VALUES ('20', '1', '1727', '4', '2013-08-06', 'F', 'Micro muito lento;', 'Instalação de um pente de memória;
Limpeza interna;
Desfragmentação de disco;
Atualização dos programas;
Verificação do Registro;', '01~Memória DDR2-667 Markvision 01Gb~25,00~25.00', '11:00', '13:00', '2:0', '120,00', '0', '20,00', '100.00', '25,00', '125.00', '')
INSERT INTO ordem VALUES ('21', '1', '1728', '74', '2013-08-15', 'A', 'Micro faltando algumas configurações;', 'Configuração do micro;
Reinstalação da impressora;
Instalação do Teamviewer;
Remoção de vírus com o Combofix;
Suporte Técnico;', '~~~', '14:57', '16:46', '1:49', '80,00', '0', '0', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('22', '1', '1729', '10', '2013-08-16', 'F', 'Micro não recebe e-mail;', 'Reconfiguração do e-mail Domain;
Atualização dos programas;
Verificação da impressora;', '~~~', '10:22', '10:59', '0:37', '80,00', '0', '30,00', '50.00', '0', '50.00', '')
INSERT INTO ordem VALUES ('23', '1', '1730', '12', '2013-08-19', 'F', 'Micro da D. Fátima não liga, fica apitando;', 'Efetuada uma limpeza na memória e na placa de vídeo;
Atualização do Windows e dos programas;
Manutenção preventiva nos micros;
Desfragmentação do micro;
Verificação do registro;', '~~~', '10:41', '12:20', '1:39', '80,00', '0', '0', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('24', '1', '1731', '0', '2013-05-23', 'A', 'Micro sem defeito;', 'Manutenção preventiva;
Avast;
Desfragmentação de Arquivos;
Atualização do Windows;
Backup dos arquivos;', '~~~', '10:26', '12:38', '2:12', '120,00', '20,00', '5,00', '', '', '135.00', '')
INSERT INTO ordem VALUES ('26', '2', '2', '76', '2013-08-22', 'A', 'tttt', '', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', '')
INSERT INTO ordem VALUES ('27', '1', '1732', '29', '2013-08-27', 'F', 'Impressora em rede da filial está travando;
configurar scanner no Ubuntu da matriz;', 'Configurada a impressora no micro da frente;
Configurado o compartilhamento das impressoras;
Reconfigurada a rede e o scanner no Ubuntu;
Atualização do LibreOffice nos micros;
Manutenção geral das máquinas;
Remoção de vírus;', '~~~', '11:26', '16:33', '5:7', '120,00', '120,00', '40,00', '200.00', '0', '200.00', '')
INSERT INTO ordem VALUES ('28', '1', '1733', '77', '2013-08-28', 'A', 'Laptop da esposa não acessa a internet, cai toda hora;', 'Foi detectado que os roteadores estavam em conflito;
Atualização dos programas nos micros;
Reconfiguração do roteador D-link;
Remoção de vírus no laptop;
Manutenção preventiva nos micros;
Suporte técnico; ', '~~~', '14:12', '16:29', '2:17', '80,00', '20,00', '20,00', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('29', '1', '1734', '29', '2013-09-02', 'A', 'Micro do Turismo resetando;', 'Foi verificado que o micro estava com vírus;
Verificação do micro do Felipe;
Atualização dos programas;', '~~~', '11:08', '13:19', '2:11', '120,00', '20,00', '0', '140.00', '0', '140.00', '')
INSERT INTO ordem VALUES ('30', '1', '1735', '53', '2013-09-03', 'A', 'Internet não funciona;', 'Foram efetuados diversos testes e verificou-se que o problema era no provedor da Telemar, foi modificado junto da mesma o provedor e reconfigurado o modem velox;', '~~~', '13:40', '15:07', '1:27', '120,00', '0', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('31', '1', '1736', '34', '2013-09-06', 'F', 'Micro não liga;', 'Foram efetuados testes e verficou-se que a memória estava com mal contato;
Atualização dos programas;
Remoção de vírus;
Manutenção Geral(registro, temporários, desfragmentação);
Suporte Técnico', '~~~', '10:42', '12:03', '1:21', '100,00', '0', '20,00', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('32', '1', '1737', '14', '2013-09-09', 'A', 'Micro não liga;', 'Foi constatado que o botão do monitor estava desligado;
Efetuada uma limpeza interna;
Atualização dos programas;
Instalação da Impressora;
Suporte técnico;', '~~~', '14:53', '15:16', '0:23', '80,00', '0', '50,00', '30.00', '0', '30.00', '')
INSERT INTO ordem VALUES ('33', '1', '1738', '32', '2013-09-10', 'F', 'Micro muito lento;
Micro apresentando mensagem de software pirata;', 'Foi removida a mensagem de software pirata;
Atualização dos programas;
Manutenção Geral (desfragmentação, limpeza dos temporários, registro);
Remoção de programas (ASK Toolbar, Norton Security);', '~~~', '14:16', '16:33', '2:17', '100,00', '20,00', '20,00', '100.00', '0', '100.00', '')
INSERT INTO ordem VALUES ('34', '1', '1739', '54', '2013-09-11', 'F', 'Manutenção geral;
', 'Verficação do micro com o combofix;
Remoção de vírus;
Atualização do LibreOffice;
Atualização dos programas;
Desfragmentação, limpeza dos temporários, registro;
Suporte Técnico;', '~~~', '11:27', '13:35', '2:8', '120,00', '20,00', '20,00', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('35', '1', '1740', '43', '2013-09-19', 'F', 'Instalação do Office;
Manutenção geral;', 'Instalação do Office 2010 nos micros;
Atualização dos programas;
Suporte Técnico', '~~~', '10:45', '13:09', '2:24', '100,00', '20,00', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('36', '1', '1741', '31', '2013-09-20', 'F', 'Micro não liga;', 'Foi constatado que a placa-mãe havia queimado devido a ação da Maresia;
Troca da placa-mãe;
Manutenção geral;', '~~~', '10:00', '12:00', '2:0', '120,00', '0', '0', '120.00', '0', '120.00', 'Foi detectado o mesmo defeito que vinha ocorrendo antes da placa queimar (tela ficava quadriculada e travava o micro). Foi trocado o monitor e será trocado o estabilizador por um no-Breack. 06-11-2013')
INSERT INTO ordem VALUES ('37', '1', '1742', '39', '2013-09-27', 'F', 'Internet não funciona;
Reinstalação do Office;', 'Foi constatado que o roteador estava ligado de forma errada;
Foram efetuados testes e verificou-se que a placa de vídeo está com problema;
Instalação dos programas;
Instalação do Office 365;
Remoção de vírus do laptop;', '~~~', '10:48', '13:35', '2:47', '140,00', '40,00', '20,00', '160.00', '0', '160.00', '')
INSERT INTO ordem VALUES ('38', '1', '1743', '29', '2013-09-27', 'F', 'HD Externo do Francisco não abre;', 'Foi constatado que o HD externo havia dado problema;
Instalado e configurado um novo HD Externo;
Verificação do micro do Paulo;', '~~~', '15:15', '17:56', '2:41', '120,00', '40,00', '20,00', '140.00', '0', '140.00', '')
INSERT INTO ordem VALUES ('39', '1', '1744', '80', '2013-10-03', 'F', 'Micro do Back Office não abre;', 'Foi restaurado o micro para um ponto anterior;
Manutenção geral dos micros (desfragmentação, registro);
Remoção de vírus dos micros;
Atualização dos programas;
Remoção de barras dos navegadores;', '~~~', '11:41', '16:19', '4:38', '100,00', '120,00', '30,00', '190.00', '0', '190.00', 'Foi efetuada uma nova verificação dos micros pois alguns estavam travando e não iniciando.')
INSERT INTO ordem VALUES ('40', '1', '1745', '41', '2013-10-10', 'F', 'Ubuntu não acessa o Banco do Brasil;', 'Instalado e configurado o plugin Java no Firefox para acesso ao BB;
Renovada a assinatura do Avast;
Remoção de programas e vírus do Netbook;
Atualização do Ubuntu;
Atualização do Avast;', '~~~', '11:03', '14:05', '3:2', '120,00', '40,00', '20,00', '140.00', '0', '140.00', '')
INSERT INTO ordem VALUES ('41', '1', '1746', '82', '2013-10-16', 'F', 'Instalação de um micro novo;', 'Instalado o micro;
Configuração do micro;
Backup dos arquivos do micro antigo;
Atualização dos programas;
Foi verificado que a impressora estava com defeito;', '~~~', '10:48', '13:21', '2:33', '100,00', '20,00', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('42', '1', '1747', '46', '2013-10-21', 'F', 'Instalação do micro novo;', 'Montagem e instalação do micro novo;
Configuração da impressora e da rede do micro novo;
Instalação dos programas básicos;
Instalação do Sefip e da Conectividade Social;
Limpeza dos temporários e desfragmentação do Micro Principal;
Transferência da Base de Dados do Sefip;', '~~~', '10:05', '13:40', '3:35', '100,00', '60,00', '0', '160.00', '0', '160.00', '')
INSERT INTO ordem VALUES ('43', '1', '1748', '29', '2013-10-22', 'F', 'Amadeus do Paulo não entra;', 'Foi constatado que o Atalho para a inicialização do Amadeus havia sido removido pelo Avast, foi reconfigurado a inicialização do Amadeus;
Renovada a senha do Amadeus da Greice;
Atualização do Windows e programas no micro do Paulo;
Reconfigurado a inicialização do Amadeus na filial;', '~~~', '11:00', '12:57', '1:57', '120,00', '0', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('44', '1', '1749', '47', '2013-11-01', 'F', 'Micro muito lento;', 'Foram excluídos diversos programas que tornavam o micro lento;
Limpeza dos temporários;
Atualização dos programas;
Remoção dos vírus com o Combofix;
Instalação do Avast;', '~~~', '10:54', '13:00', '2:6', '100,00', '0', '0', '100.00', '0', '100.00', '')
INSERT INTO ordem VALUES ('45', '1', '1750', '84', '2013-11-07', 'F', 'Configuração do micro novo;', 'Configuração e instalação dos programas do micro novo;
Configuração do micro novo na rede;
Verificação geral das máquinas (registro, temporários);
Remoção de vírus;
Atualização dos programas;
Suporte Técnico;', '~~~', '11:02', '13:38', '2:36', '120,00', '40,00', '20,00', '140.00', '0', '140.00', '')
INSERT INTO ordem VALUES ('46', '1', '1751', '71', '2013-11-12', 'F', 'Geral nos micros;', 'Instalação e configuração do Thunderbird nos micros;
Reinstalação do Avast no micro do Carlinhos;
Configuração das assinaturas nos e-mails;
Suporte técnico;', '~~~', '10:47', '12:25', '1:38', '120,00', '0', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('47', '1', '1752', '59', '2013-11-12', 'F', 'Laptop da Claudia com vírus;', 'Remoção dos vírus;
Atualização dos programas;
', '~~~', '10:00', '12:00', '2:0', '80,00', '0', '0', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('48', '1', '1753', '5', '2013-11-19', 'F', 'Micro muito lento;', '- Remoção da Ask Toolbar;
- Remoção do Songr;
- Atualização do Firefox;
- Verificação do micro com o Combofix (Remoção de vírus);
- Removido o Msn;
- Remoção do video Download Converter;
- Atualização do Cclener;
- Verificação do registro;
- LImpeza dos Temporários;
Suporte técnico', '~~~', '13:58', '15:29', '1:31', '100,00', '0', '20,00', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('49', '1', '1754', '29', '2013-11-26', 'F', 'Instalação de novos HDs nos micros do Francisco e do Júlio', 'Instalação e configuração de todos os programas nos hds.', '~~~', '10:09', '15:14', '5:5', '120,00', '140,00', '20,00', '240.00', '0', '240.00', '')
INSERT INTO ordem VALUES ('50', '1', '1755', '12', '2013-12-27', 'F', 'Micro muito lento;', 'Foi constatado que as atualizações do Windows estavam travando, foi removida a atualização automática; Atualização dos programas; Verificação do micro (combofix e Avast); Remoção de vírus; Desfragmentação de disco; Verificação do Registro;', '~~~', '10:00', '12:00', '2:0', '80,00', '40,00', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('51', '1', '1756', '10', '2014-01-16', 'F', 'Backup dos arquivos', 'Cópia dos arquivos do micro antigo para o novo;
Atualização dos programas do laptop;
Suporte Técnico;', '~~~', '09:53', '11:21', '1:28', '100,00', '0', '20,00', '80.00', '0', '80.00', '')
INSERT INTO ordem VALUES ('52', '1', '1757', '87', '2014-01-17', 'F', 'Micro não inicia;', 'Foi constatado que o micro estava com o cooler e as memórias desencaixados; 
Efetuada uma limpeza interna no micro; 
Atualização dos programas;
Instalação da placa de rede Wireless;
Instalação do TeamViewer;', '~~~', '10:00', '12:00', '2:0', '120,00', '0', '20,00', '100.00', '0', '100.00', '')
INSERT INTO ordem VALUES ('53', '1', '1758', '53', '2014-01-22', 'A', 'Ajuste no Catálogo de Locação;', 'Foram efetuados ajustes no catálogo de Locação, sendo trocado o preço dos produtos e retirado alguns do catálogo;', '~~~', '09:00', '12:30', '3:30', '87,00', '0', '0', '87.00', '0', '87.00', 'Foram efetuadas 03:30 de trabalho a R$ 25,00 o valor da hora')
INSERT INTO ordem VALUES ('54', '1', '1759', '88', '2014-02-03', 'F', 'Micro não liga;', 'Foi constatado que o botão de ligar havia oxidado, foi então colocado o botão de reset para ligar o micro;
Atualização do Windows e dos programas;
Instalação do TeamViewer; 
Manutenção geral (registro, temporários);', '~~~', '10:16', '11:21', '1:5', '120,00', '0', '0', '120.00', '0', '120.00', '')
INSERT INTO ordem VALUES ('55', '1', '1760', '36', '2014-03-18', 'F', 'Micros muito lentos;', 'Efetuada uma verificação geral nos micros (combofix, avast, registro, desfragmetação); 
remoção de programas indesejados;
Atualização dos programas;
Remoção de vírus e Spywares;', '~~~', '11:36', '14:34', '2:58', '120,00', '40,00', '40,00', '120.00', '0', '120.00', '')


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
  `qtMinima` int(2) DEFAULT NULL COMMENT 'Quantidade Mínima',
  `foto_produto` varchar(80) DEFAULT NULL,
  `thumb_produto` varchar(80) DEFAULT NULL,
  `obs_produto` text NOT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1

-- Salva os dados
INSERT INTO produtos VALUES ('1', '1', '', 'Calendário Maia', 'Calendário ', '36,00', '10', '2', '/ffsystem/produtos/fotos/.jpg', '/ffsystem/produtos/fotos/thumb_.jpg', '')
INSERT INTO produtos VALUES ('2', '1', 'FIL01', 'Amor em Jogo', 'Filme baseado em uma história Romântica....', '7,50', '2', '0', '/ffsystem/produtos/fotos/FIL01.jpg', '/ffsystem/produtos/fotos/thumb_FIL01.jpg', 'Filme em catálogo!!!

Bd no servidor')
INSERT INTO produtos VALUES ('3', '1', 'MAI01', 'Calendário Maia', 'Calendário ', '36,00', '10', '2', '/ffsystem/produtos/fotos/MAI01.jpg', '/ffsystem/produtos/fotos/thumb_MAI01.jpg', '')
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
INSERT INTO usuarios VALUES ('2', '1', 'ffctechnologies', 'b950732f0f692cbb9c17a04e21f08002', 'Flavius Ferrari', 'flaviusferrari@globo.com', 'Qual sua música favorita', 'Faroeste Cabloco')
INSERT INTO usuarios VALUES ('3', '1', 'flavius', '34e299984ef9a6a236767d1c4a0bdeff', 'Flavius', 'flavius.cunha@ig.com.br', 'Qual a sua religiÃ£o', 'Espirita')
INSERT INTO usuarios VALUES ('4', '2', 'usuario', 'c62d929e7b7e7b6165923a5dfc60cb56', 'UsuÃ¡rio Teste', 'usuario@teste.com.br', 'Usuário do Vida de Programador', 'Alonso')
INSERT INTO usuarios VALUES ('5', '3', 'profer', 'bd26a25ca076161a6001e5c66f065189', 'Profer', 'profer@profer.srv.br', '', '')


