-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 02/04/2014 às 08:14:41
-- Versão do Servidor: 5.5.35-0ubuntu0.12.04.2
-- Versão do PHP: 5.3.10-1ubuntu3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `ffsystem`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

CREATE TABLE IF NOT EXISTS `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codEmpresa` varchar(12) NOT NULL COMMENT 'Código da Empresa',
  `evento` varchar(200) NOT NULL,
  `autor` varchar(200) NOT NULL,
  `data` date NOT NULL,
  `hora` varchar(5) NOT NULL,
  `conteudo` text NOT NULL,
  `local` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `agenda`
--

INSERT INTO `agenda` (`id`, `codEmpresa`, `evento`, `autor`, `data`, `hora`, `conteudo`, `local`) VALUES
(1, '1', 'Ivan (MaÃ­ra)', '', '2013-10-30', '10:00', 'InstalaÃ§Ã£o da Rede Wireless', ''),
(2, '1', 'Teste Evento', '', '2013-10-30', '16:45', 'Testando', ''),
(3, '2', 'Teste User', '', '2013-10-30', '18:00', 'Testando o User', ''),
(4, '2', 'Descanso', '', '2013-10-27', '12:00', '', ''),
(5, '1', 'Viajes Norte', '', '2013-11-01', '17:00', 'InstalaÃ§Ã£o do servidor novo', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `idEmpresa`, `nome`, `endereco`, `numero`, `complemento`, `cep`, `bairro`, `cidade`, `uf`, `tipo`, `telefone1`, `telefone2`, `celular`, `obs`) VALUES
(2, 1, 'Flavius Ferrari', 'Rua Barão de Mesquita', '796', '603', '20540-004', 'Andaraí', 'Rio de janeiro', 'AC', 'PF', '(21)3238-1828', '(21)2288-2338', '(21)9717-7913', 'Gravação de comentário!!!'),
(4, 1, 'Mônica Lacerda', 'Av. Nossa Senhora de Copacabana', '680', 'ap: 613', '', 'Copacabana', 'Rio de janeiro', 'RJ', 'PF', '', '', '(21)9964-8241', 'Endereço Residêncial: Rua Tonelero, 185 ap: 702\r\n\r\nData: 22-05-2012 (Residencia)\r\n- Combofix: Verificação do micro -  Remoção de vírus\r\n- Atualização do Avast\r\n- Reconfiguração da conta de e-mail\r\n- Avast: Escaneamento rápido do sistema\r\n- Reconfiguração do Roteador\r\n- Limpeza dos temporários\r\n- Netbook: Atualização do Windows\r\n	- Verificação do teclado\r\n	- Limpeza dos temporários'),
(5, 1, 'Ellen Teixeira', 'Rua Botucatú', '56', '903', '', 'Grajaú', 'Rio  de Janeiro', 'RJ', 'PF', '(21)2238-6225', '', '(21)9834-7300', 'Data: 30-04-2012\r\n- Remoção da ASK Toolbar\r\n- Remoção da VirtualDJ Tollbar\r\n- Remoção da Mensagem  de Windows Pirata\r\n- Atualização do k-Lite Mega Codec Pack 8.7\r\n- Atulização do Firefox\r\n- Instalação do Ashampoo\r\n- Limpeza dos temporários\r\n- Verificação do Registro\r\n- Verificação rápida do Avast - OK\r\n- Atualização do Java\r\n- Instalação do TeamViewer\r\n- Suporte técnico\r\n\r\n\r\nData: 10-10-2011\r\n- Configuração do IE para gravar senha\r\n- Atualização do Ccleaner\r\n- LImpeza dos temporários\r\n- Atualização do Firefox\r\n- Criado um ponto de restauração\r\n- Atualização do K-lite Mega Codec Pack\r\n- Verificação do micro com o Avast - OK\r\n- Verificação do Micro com o Spybot\r\n- verificação do Registro\r\n'),
(6, 1, 'Fernando Fernandes', 'Av. Henrique Dodswort', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)9703-9838', 'Amigo da Ana Roldão\r\n\r\nDados Bancários:\r\nHSBC\r\nAg: 1607\r\nC/c: 13591-30\r\n\r\nData: 18-04-2012\r\n- Verificação do micro com o Combfix - Remoção de vírus\r\n- Limpeza interna do micro\r\n- Atualização do Ccleaner\r\n- Reinstalação do Avast\r\n- Instalação do TeamViewer\r\n- Atualização do Java\r\n- Imunização do Spybot\r\n- Verificação do micro com o Spybot - OK\r\n- Registro do Avast\r\n- Verificação do micro com o Avast - OK\r\n- Remoção do Babylon Tool bar\r\n- Limpeza dos temporários\r\n- Desfragmentação de disco\r\n- Atualização do Windows'),
(7, 1, 'Rosa Alves', 'Av. Oswaldo Cruz', '106', '101', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2551-2282', '', '(21)9997-3811', 'Data: 02-05-2012\r\n- Fonte estava desconectada no cabo de força\r\n- Atualização do Windows\r\n- Instalação do Ccleaner\r\n- Atualização do Flash\r\n- Atualização do Firefox\r\n- Instalação do TeamViewer\r\n- Instalação do Java\r\n- Instalação do Defrager\r\n- Limpeza dos temporários\r\n- Instalação da WebCan\r\n'),
(8, 1, 'Fernando Cerole', 'Rua Gonzaga Bastos', '259', 'casa 7', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2572-1296', '', '(21)9214-2010', 'Data: 09-10-2012\r\n- Atualização do Flash\r\n- Atualização do Ccleaner\r\n- Remoção da Ask Toolbar\r\n- Remoção do InboxToolbar\r\n- Remoção do RegClean Pro\r\n- Remoção do SiteRank\r\n- Remoção dos Temporários\r\n- Instalação do Emule\r\n- Atualização do Firefox 15\r\n- Atualização do Klite Mega Codec Pack\r\n\r\nData: 03-05-2012\r\n- Teste de HD - Remoção de Bad Block (1)\r\n- Teste de Memória - OK\r\n- Backup dos Arquivos\r\n- Formatação e instalação do Windows e programas\r\n- Atualização do Windows\r\n- Verificação Completa do Avast - OK\r\n- Desfragmentação de Disco\r\n- Troca do Gravador de CD/DVD que não estava lendo os discos'),
(9, 1, 'Amélia Cristina', 'Rua Ribeiro Guimarães', '360', '501', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-9636', '', '(21)7941-3200', 'Data: 08-05-2012\r\n- Verificação do Micro com o Combofix - Remoção de vírus\r\n- Atualização do Java\r\n- Netbook: Troca da senha e nome do usuário\r\n- Netbook: Atualização e Registro do Avast\r\n- Avast: Escaneamento rápido do sistema - Remoção de vírus\r\n- Netbook: Remoção do Microsoft Security\r\n- Instalação do LibreOffice\r\n\r\nData: 13-03-2012\r\n- Instalação do Ccleaner\r\n- Instalação do Mingw\r\n- Removido McAfee Security Center\r\n- Atualização do Java\r\n- Instalação do Avast\r\n- Limpeza dos Temporários\r\n- Verificação da impressora'),
(10, 1, 'Valéria Gullo', 'Rua Pontes Correa', '167', '503', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2208-7631', '', '(21)9613-6928', 'Data: 22-03-2013\r\n- Atualizado o ThunderBird para a versão 17;\r\n- Atualizado o Ccleaner;\r\n- Autalizado o LibreOffice para a versão 4.0.1;\r\n- Configurado no Avast as contas do Thunderbird;\r\n- Atualização do Windows;\r\n- Ajustes na inicialização do Windows;\r\n- Atualizado o Java para a versão 7.17;\r\nLaptop\r\n- Verificado o laptop com o Combofix (Remoção de vírus);\r\n- Remoção do McAfee;\r\n- Instalação do Avast;\r\n\r\nData: 16-08-2012\r\n- Instalação e configuração do modem wireless velox\r\n- Instalação dos softwares no laptop\r\n- Backup dos e-mails para o laptop\r\n- Suporte técnico\r\n- Atualização do Windows\r\n- Instalação da impressora\r\n\r\nData: 22-05-2012\r\n- Verificação do HD - Remoção de Bad Block (30)\r\n- Formatação do micro\r\n- Backup dos arquivos\r\n- Instalação dos programas\r\n- Desfragmentação de disco\r\n\r\nData: 10-05-2012\r\n- Verificação do micro com o Combofix - Remoção de vírus\r\n- Remoção do Aviso de Software Pirata\r\n- Atualização do Ccleaner\r\n- Remoção do Advanced System Care\r\n- Remoção do Iobit Secyrity\r\n- Remoção do IObit Tollbar\r\n- Avast: Escaneamento rápido do micro - OK\r\n- Atualização do K-Lite Mega Codec Pack\r\n- Instalação do TeamViewer\r\n- Instalação do Auslogic disk Defrag\r\n- Limpeza dos temporários\r\n- Criação de um Ponto de Restauração\r\n- Verificação do Registro'),
(11, 1, 'Renata Gondin', 'Rua Botucatú', '', '302', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-3234', '', '', 'Data: 11-05-2012\r\n- Verificação do HD - Remoção de Bad Block (7)\r\n- Remoção do RegClean\r\n- Atualização do Windows\r\n\r\nData: 27-03-2012\r\n- Recuperação do windows com o Scandisk\r\n- Remoção de Bad Block - 04\r\n- Baixando Atualizações do Windows\r\n- Verificação do Micro com Avast - OK\r\n- Verificação do micro com Spybot - Remoção de Spyware\r\n- Verificação do Registro\r\n- Atualização do Java\r\n- Atualização do Firefox\r\n- Atualização do Windows\r\n- Instalação do Defrag'),
(12, 1, 'Clínica AFGV', 'Praça Olavo Bilac', '28', '910', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2507-3175', '', '', 'Micro D. Fátima\r\nData: 28-06-2012\r\n- Verificação da memória: Foi constatado que o pente de memória está com defeito\r\n- Teste de Disco: HD OK\r\n- Combofix: Remoção de vírus\r\n- Desabilitado o RealPlayer da inicialização, pois estava consumindo muito processamento\r\n- Atualização do Windows\r\n- Avast: Verificação do micro - OK\r\n- Atualização do Java\r\n- Atualização do Ccleaner\r\n- Instalação do Auslogic Disk Defrag\r\n- Limpeza de Disco\r\n- Desfragmentação de Disco\r\n- Atualização do Avast\r\n- Criado um ponto de Restauração do sistema\r\n- Verificação do Registro\r\n\r\nData: 13-06-2012\r\nMicro Aninha:\r\n- Foi constatado que a memória do micro havia queimado, causando assim o desligamento do micro;\r\n- Troca da memória\r\n- Limpeza interna\r\n- Remoção da mensagem de Windows Pirata\r\n- Atualização do Ccleaner\r\n- Atualização do Windows\r\n- Remoção da Ask Toolbar\r\n\r\nData: 14-05-2012\r\n- Atualização do Windows e dos programas\r\n- Micro da D. Fátima apitando: Foi ligado e desligado o micro e o defeito não retornou, micro em observação\r\n- Micro da Psicóloga: Necessita trocar o teclado, pois está causando mal contato devido ao adaptador\r\n- Remoção da senha inicial do Micro da D. Fátima'),
(13, 1, 'Jorge Delou', 'Rua Pontes Correa', '101', '103', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-7534', '', '', 'Filho da Angela Delou\r\n\r\nData: 15-05-2012\r\n- Foi efetuado testes no HD antigo e verificou-se que o mesmo está com defeito\r\n- Troca do HD antigo por um novo\r\n- Formatação e instalação de todos os programas\r\n- Backup dos arquivos do HD Antigo pro Novo\r\n- Recuperação de arquivos do HD Antido\r\n- Instalação de um Gravador de DVD'),
(14, 1, 'Ayrton Penedo', 'Rua Visconde de Santa Isabel', '321', '804', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-2827', '', '(21)8131-8562', 'Data: 12-11-2012\r\n- Atualização do Avast\r\n- Memorização da Senha do email da Yolanda\r\n- Remoção do VideoDownloader Converter\r\n- Atualização do Windows\r\n- Configurada a página da Globo com principal\r\n- Atualização do Flash Player\r\n- Atualização do Java\r\n- Remoção do Java 6\r\n- Limpeza dos temporários\r\n\r\nData: 12-09-2012\r\n- Reinstalação do Avast;\r\n- Remoção de vírus com o Combofix;\r\n- Instalação de um pente de memória (NG 0322);\r\n- Windows - Atualização do software.\r\n- Registro do Avast\r\n\r\nData: 05-06-2012\r\n- Renovação do Registro do Avast\r\n- Atualização do Windows\r\n- Retirado o Modo de Compatibilidade do IE no site da Globo\r\n\r\nData: 21-05-2012\r\n- Atualização do Ccleaner\r\n- Combofix: Verificação do Micro - Remoção de vírus\r\n- Remoção da mensagem de software Pirata do Windows\r\n- Limpeza dos temporários\r\n- Remoção do PriceGoing\r\n- Atualização do Skype\r\n- Avast: Verificação Rápida do sistema - OK\r\n- Verificação do Registro\r\n- Criado um ponto de restauração do sistema\r\n- Atualizaçao do Java\r\n- Verificação do Registro\r\n- Desfragmentação do Sistema\r\n\r\nData: 09-12-2011\r\n- Montagem do micro\r\n- Instalação do eMule\r\n- Atualização do Avast\r\n- Desinstalação do McAffe Security Scan\r\n- Configuração do Emule\r\n\r\nData: 28-10-2011\r\n- Instalação da Webcan\r\n- Atualização do Ccleaner\r\n- Atualização do Java\r\n- Instalação do Skype\r\n- Instalação do Ashampoo\r\n- Atualização do Adobe Reader\r\n- Configuração da Webcan\r\n'),
(15, 1, 'Ney Sarmento', 'Rua Major Ávila', '200', 'Loja C', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-0775', '', '(21)8513-1615', 'Data: 30-05-2012\r\n- Instalação do sistema Otica no Laptop\r\n- Instalação do Avast\r\n- Backup do Sistema\r\n- Configuração de um Backup diário (Cobian)\r\n'),
(16, 1, 'Mastercoop Cooperativa', 'Rua Haddock Lobo', '11', 'sl: 701', '', 'Estácio', 'Rio de Janeiro', 'RJ', 'PF', '(21)3796-0445', '', '(21)7871-4566', 'Data: 31-05-2012\r\nMicro Paula\r\n  - Recuperação do Windows com Scandisk\r\n  - Atualização do Ccleaner\r\n  - Remoção do BrOffice 3.2\r\n  - Instalação do LibreOffice 3.5.4\r\n  - Atualização do Auslogic Disk Defrager 3.4.3.5\r\n  - Atualização do Flash\r\n  - Limpeza dos temporários\r\n  - Desfragmentação dos Arquivos'),
(17, 1, 'Magaly Espinar da Costa', 'Rua Souto Carvalho', '40', '201', '', 'Engenho Novo', 'Rio de Janeiro', 'RJ', 'PF', '(21)3880-2592', '', '(21)9953-6537', 'Data: 04-06-2012\r\nMICRO MAGALY 01\r\n- Configurada a impressora para imprimir em rascunho (configuração está saindo)\r\n- Instalação do Skype\r\n- Ajuste da WebCan\r\n- Criada uma conta do Skype e configuração do mesmo\r\n- Suporte técnico'),
(18, 1, 'Irineu Moreira da Silva', 'Rua Domingos Lopes', '410', 'LJ: 101', '', 'Madureira', 'Rio de Janeiro', 'RJ', 'PF', '(21)3018-3211', '', '', 'Data: 26-10-2012\r\n- Instalação e configuração do Roteador Wireless TP-Link\r\n- Instalação do Adaptador wireless no micro da Cristina\r\n- Configuração dos micros para usarem a nova rede\r\n- Reconfiguração do Federal\r\n- Compartilhamento da impressora\r\n- Atualização do Avast no micro da Cristina\r\n- Desfragmentação do micro da Cristina\r\n\r\nData: 06-06-2012\r\nMicro Cristina:\r\n- Efetuado testes na rede e foi reconfigurada o Servidor\r\n- Remoção de vírus\r\n- Micro não acessa a internet, terá de fazer uma formatação\r\nMicro Irineu:\r\n- Limpeza interna no micro\r\n- Verificação do PDF Creator'),
(19, 1, 'Rosemary Duarte', 'Rua das Laranjeiras', '136', '402', '', 'Laranjeiras', 'Rio de Janeiro', 'RJ', 'PF', '(21)2233-7205', '(21)3903-6738', '(21)9969-0225', 'Data: 08-06-2012\r\n- Atualização dos plugins do Firefox\r\n- Atualização do Flash\r\n- Registro do Avast\r\n- Atualização do Avast\r\n- Atualização do Ccleaner\r\n- Combofix: Verificação do micro\r\n- Limpeza interna no micro\r\n\r\nData: 09-01-2012\r\n- Baixado atualização do Windows\r\n- Atualização do Firefox\r\n- Atualização do Java\r\n- Atualização do Ccleaner\r\n- Limpeza dos temporários\r\n- Verificação do Registro\r\n- Avast: Escaneamento Rápido - OK\r\n- Desfragmentação de Disco (36%)'),
(20, 1, 'Wilton Taranto', 'Rua Conde de Bonfim', '289 A', '603', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '(21)2569-7225', '', '(21)9255-8199', 'Data: 10-07-2012\r\n- Instalação do micro novo\r\n- Configuração do Roteador Wireless\r\n- Configuração do micro\r\n- Instalação da impressora HP \r\n- Instalação do Office 2010 Starter\r\n- Instalação do TeamViewer\r\n- Instalação do Firefox\r\n- Instalação do Java\r\n- Windows: Instalação das atualizações\r\n- Ashampoo: Instalação do programa\r\n- Suporte Técnico'),
(21, 1, 'Angela Delou', '', '', '', '', '', '', 'AC', 'PF', '', '', '', 'teste'),
(22, 1, 'Ana Roldão', 'Av Henrique Dodsworth', '133', '1010', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3507-9838', '', '(21)7140-7815', 'Data: 09-07-2012\r\n- Combofix: Instalação do programa\r\n	    Remoção de vírus\r\n- Avast: Escaneamento rápido - Remoção de vírus\r\n	 Atualização para a versão 7.0.1456\r\n- Ccleaner: Atualização para a versão 3.20.1750\r\n	    Limpeza dos temporários\r\n- Java: Atualização para a versão 7.5\r\n	Remoção da versão 6.29\r\n- Firefox: Atualização para a versão 13.0.1\r\n- Auslogic Disk Defrag: Instalação da versão 3.4\r\n- Ashanpoo: Instalação da versão 2012\r\n- Windows: Instalação da atualização\r\n\r\nData: 06-09-2011\r\n- Atualização do Avast\r\n- Importação dos arquivos de backup do Outlook 2007\r\n- Instalação do Ccleaner\r\n- Instalação do TeamViewer\r\n- Atualização do Java\r\n- Remoção do Java antigo\r\n- Instalação do Firefox\r\n- Atualização do Adobe Reader\r\n- Criação de um ponto de Restauração\r\n- Verificação da impressora\r\n- Desinstalação da barra do Alot'),
(23, 1, 'Flavia Diego', 'Rua Gonçalves Freire', '296', '404', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2254-8254', '', '(21)9916-3600', 'Data: 11-07-2012\r\nMicro Marcela\r\n- Troca da fonte que estava queimada\r\n- Atualização do Avast\r\n- Limpeza interna\r\n- Desfragmentação de Disco'),
(24, 1, 'Exclusive Exchange Tour', 'Rua Belford Roxo', '129', 'Loja B', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)3518-0611', '', '', 'Data: 06-09-2012\r\n- Instalação de um  HD novo no micro do Turismo\r\n- Instalação do Windows e de todos  os programas\r\n- Configuração  do micro em rede\r\n- Instalação da Impressora\r\n- Verificação preventiva nos  micros\r\n\r\nData: 13-07-2012\r\n- Formatação do micro do Antonio, pois estava com vírus\r\n- Instalação do Windows Original e de todos os programas\r\n- Configuração da impressora em rede\r\n- Remoção dos vírus do Laptop do Tiago com o Combofix\r\n'),
(25, 1, 'Alphonse', '', '', '', '', '', 'Rio de Janeiro', 'AC', 'PF', '', '', '(21)9329-7367', 'Data: 16-07-2012\r\n- Teste de Disco - OK\r\n- Limpeza interna no micro\r\n- Combofix: Remo??oo de v?rus\r\n- Windows: Atualiza??o do SO\r\n- Avast: Atualiza??o\r\n- Avast: Verifica??o completa do micro - OK\r\n- Firefox: Atualiza??o para a vers?o 13\r\n- Ajuste no particionamento do HD\r\n- Atualiza??o do Ccleaner\r\n- Atualiza??o do K-lite Mega Codec Pack\r\n- Atualiza??o do Java\r\n- Remo??o do Java antigo\r\n- Limpeza dos tempor?rios\r\n- Criado um Ponto de Restaura??o\r\n- Verifica??o do Registro\r\n- Teste de Desempenho (Benchmark PC Wizard 2008): 4028.51\r\n- Foi detectado que a placa de v?deo n?o estava inicializando, o que causava o n?o aparecimento\r\nda imagem. Placa retirada para teste.'),
(26, 1, 'Taranto', 'Rua dos Araújos', '11-A', 'Bl: 01 ap: 302', '', 'Tijuca', 'Rio de janeiro', 'RJ', 'PF', '', '', '', 'Data: 26-07-2012\r\n- Foi detectado que o Avast estava travando o micro\r\n- Combofix: Verificação do micro - OK\r\n- Avast: Reinstalação do programa - Versão 7.0.1456\r\n- Ccleaner: Atualização do programa - versão 3.20\r\n- Java: Atualização do programa\r\n- Spybot: Verificação do micro - Remoção de Spywares\r\n- Windows: Atualização do sistema\r\n- Avast: Verificação rápida do sistema - OK\r\n- Criado um ponto de restauração do sistema\r\n- Ccleaner: Limpeza dos temporários\r\n- LibreOffice: Atualização para a versão 3.5.5\r\n- Auslogics Disk Defrag: Atualizado para a versão 3.4.3.5\r\n\r\nData: 16-03-2012\r\n- Micro não iniciava pois estava com a memória suja\r\n- Limpeza interna no micro\r\n- Instalação do Ccleaner\r\n- Remoção da ASK Toolbar\r\n- Remoção do NitroPC\r\n- Remoção do RegistryBooster\r\n- Verificação do micro com o Combofix - Remoção de vírus\r\n- Remoção do Java 6 Update 4\r\n- Atualização do Windows\r\n- Atualização do Avast\r\n- Instalação do Auslogick Disk Defrager\r\n- Atualização do Java\r\n- Backup do Registro\r\n- Atualização do K-Lite Mega Codec Pack\r\n- Instalação do TeamViewer\r\n- Instalação do LibreOffice 3.5\r\n- Limpeza dos temporários\r\n'),
(27, 1, 'Clinatran', 'Rua da Conceição', '105', '806/807', '', 'Centro', 'Rio de Janeiro', 'RJ', 'PF', '(21)2203-0413', '(21)3244-2919', '', 'Data: 11-09-2012\r\n- Instalação de um pente de memória\r\n- Memória DDR2-533 Markvision 01Gb\r\n\r\nData: 27-07-2012\r\n- Limpeza interna no micro\r\n- Java: Remoção das versões antigas\r\n- Ccleaner: Atualização para a versão 3.20\r\n- AVG: Remoção do Software\r\n- Combofix: verificação do Micro - Remoção de Vírus\r\n- Ccleaner: Limpeza dos temporários\r\n- MediaGet: Remoção do Software\r\n- Windows: Criado um ponto de restauração do sistema\r\n- Avast: Instalação do Softare\r\n- Auslogic Disk Defrag: Instalação do softare'),
(28, 1, 'Maria Aparecida de Souza Gonçalves', 'Rua Paulo Silva Araújo', '107-A', 'Casa 15 - 201', '', 'Méier', 'Rio de Janeiro', 'RJ', 'PF', '(21)2269-7394', '', '(21)9644-1672', 'Data: 01-08-2012\r\n- Windows: Atualização do Sistema\r\n- Ccleaner: Atualização para a versão 3.20\r\n- Nero: Remoção do software\r\n- Avast: Atualização para a versão 7.0.1456\r\n- Ashampoo: Instalação do programa\r\n- Avast: verificação rápido do micro - ok\r\n- Drive de CD/DVD: não está gravando nem lendo CD\r\n- Compartilhamento da Impressora\r\n- Ccleaner: Limpeza dos temporários\r\n- Auslogic Disk Defrag: Atualização do programa para a versão 3.4.3.5\r\n- Auslogic: Desfragmentação de disco\r\n\r\nData: 27-01-2012\r\n- Efetuada uma limpeza interna no micro\r\n- Atualização do Ccleaner\r\n- Remoção do CrossLoop\r\n- Instalação do TeamViewer\r\n- Atualização do Java\r\n- Atualização do K-Lite Mega Codec Pack\r\n- Instalação do Office Compatibilit Pack 2007\r\n- Limpeza dos temporários\r\n- Criado um ponto de Restauração\r\n- Verificação do Registro\r\n- Atualização do Windows'),
(29, 1, 'Viajes Norte Cambio e Turismo', 'Rua Nossa Senhora de Copacabana', '1022', 'LJ: A', '', 'Copacabana', 'Rio de janeiro', 'AC', 'PJ', '(21)2522-1898', '', '', 'Micro Francisco (virtual)\r\nData: 13-11-2012\r\n- Foi instalada uma nova máquina virtual com Wim7, pois o XP estava corrompendo muito\r\n\r\nMicro Silvia (filial)\r\nData: 01-11-2012\r\n- Micro da Silvia corrompeu o Windows\r\n- Recuperação do Windows com o cd\r\n\r\nTestando a atualização do cadastro!!!\r\n\r\nFilial: 2247-9302'),
(30, 1, 'Maurício Beniacar', '', '', '', '', 'Catete', 'Rio de Janeiro', 'RJ', 'PF', '', '', '', 'Data: 06-08-2012\r\n- Micro não iniciava pois o Cooler estava mal encaixado\r\n- Avast: Atualização do programa\r\n- Avast: Verificação do Micro - Remoção de vírus\r\n- Microsoft Security Essential - Remoção do programa\r\n- Combofix: Verificação do micro - Remoção de vírus\r\n- Ccleaner: Instalação do programa\r\n- Ccleaner: Limpeza dos temporários\r\n- Windows: Criado um ponto de Restauração\r\n- windows: Retirado o micro de hibernar\r\n- Auslogic Disk Defrag: Instalação do programa\r\n- Auslogic Disk Defrag: Desfragmentação de disco'),
(31, 1, 'Helena Cristina', 'Rua Figueiredo Magalhães', '122', '701', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2264-1378', '', '(21)9516-0182', 'Data: 20-03-2013\r\n- Micro apresentando falha na resolução da tela, voltando para 1024/768;\r\n- Limpeza interna do micro;\r\n- Atualização do Ccleaner;\r\n- Atualização do Avast 8.0;\r\n- Remoção da Ask Toolbar;\r\n- Atualizado o LibreOffice para a versão 4.0.1;\r\n- Atualizado o Firefox para a versão 19;\r\n- Teste do micro com o Benchmark;\r\n- Verificação do micro com o Combofix (remoção de vírus);\r\n\r\nData: 14-08-2012\r\n- Micro estava travando por causa do Avast\r\n- Avast: Atualizado para a versão 7.0\r\n- Ccleaner: Atualizado para a versão 3.21\r\n- Java: Desinstalada a versão 6.5\r\n- Windows: Atualização do sistema\r\n\r\nData: 13-02-2012\r\n- Verificação do micro com o Combofix - Remoção de Vírus\r\n- Atualização do Firefox\r\n- Recuperação do Avast\r\n- Verificação do microm como Spybot - OK\r\n- Atualização do Adobe Reader\r\n- Atualização do LibreOffice\r\n- Atualização do Windows 7\r\n\r\n\r\nData: 25-01-2012\r\n- Verificação da Memória - OK\r\n- Verificação do micro com o Avast\r\n- Renovação do Registro do Avast\r\n- Atualização do ccleaner\r\n- Limpeza dos temporários\r\n\r\n\r\nData: 21-09-2011\r\n- Instalação da Webcan Microsoft\r\n- Atualização do Firefox\r\n- Criado ponto de restauração\r\n- Atualização do Windows'),
(32, 1, 'Paulo Pereira', 'Rua Dona Zulmira', '73', '104', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)3437-8997', '', '(21)9951-5581', 'Sandra Pereira: ppsan@oi.com.br 9356-8334\r\nData: 15-08-2012\r\n- Instalado um HD NOvo\r\n- Instalação do Windows e de todos os programas'),
(33, 1, 'Leonardo Antonio dos Santos', 'Rua Barata Ribeiro', '502', '813', '', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2236-5248', '', '(21)9323-6637', 'Data: 25-09-2012\r\nMicro Principal\r\n- Limpeza Interna\r\n- Instalação de uma placa de rede\r\n- Instalação do Scribus\r\n- Atualização do Avast e do Ccleaner\r\nMicro Antigo\r\n- Atualização do Avast\r\n- Atualização do Auslogic Disk Defrag\r\n- Atualização do Ccleaner\r\n- Limpeza dos temporários\r\n- Desfragmentação de disco\r\n\r\nData: 17-08-2012\r\n- Registro do Avast\r\n- Instalação do Inkscape\r\n- Instalação do Gimp\r\n- Validação do InDesign\r\n- Validação do Adobe Acrobat X Pro\r\n- Combofix: verificação do micro - OK\r\n- Defrag: desfragmentação de disco\r\n- Ccleaner: Limpeza dos temporários\r\n- Ccleaner: Atualizado para a versão 3.21\r\n\r\n\r\nData: 30-08-2011\r\n- Limpeza interna no micro\r\n- Atualização do Ccleaner\r\n- Retirado a HP da inicialização\r\n- Configuração do Skype\r\n- Verificação do micro com Spybot\r\n- Verificação do micro com Avast\r\n- Criado um ponto de restauração\r\n- Desintalação do CrossLoop\r\n- Atualização do K-Lite Mega Codeck Pack\r\n- Instalação do Defrag'),
(34, 1, 'Simone Soares Ferreira', 'Rua Sáviana', '209', '', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '(21)3684-5827', '', '(21)9121-2758', 'Data: 22-08-2012\r\n- Limpeza interna no micro\r\n- Combofix: verificação do micro - Remoção de vírus\r\n- Java: Desinstalação da versão antiga\r\n- Linkury Smartbar - Desistalação do software\r\n- Ccleaner - Atualizado para a versão 3.21\r\n- Firefox - Atualizado para a versão 14\r\n- Windows - Atualização do sistema\r\n- firefox - Colocado no idioma Portugues\r\n- Ccleaner - Limpeza dos temporários\r\n- Ccleaner - Verificação do registro\r\n- Configurado o PortaldoEmpreendedor como favorito\r\n'),
(35, 1, 'Shop Freezer', 'Rua Esmeraldino Bandeira', '67', '', '20961-080', 'Riachuelo', 'Rio de Janeiro', 'RJ', 'PJ', '2125012833', '2125012517', '', 'Data: 04-09-2012\r\n- Limpeza interna do micro\r\n- AVG: REmoção do Software\r\n- PSafe: Remoção do Software\r\n- ASK Tool Bar: Remoção do Software\r\n- Ccleaner: Instalação do programa\r\n- Ccleaner: Limpeza dos Temporários\r\n- Combofix: Verificação do Sistema - Remoção de vírus\r\n- Windows: Remoção da mensagem de software Pirata\r\n- Iminent: Remoção do Software\r\n- Java: Atualização do Software\r\n- Otshot: Retirado o programa da inicialização do Windows\r\n- Windows: Criado um ponto de restauração do Sistema\r\n- Ccleaner: Verificação do Registro'),
(36, 1, 'Homero', 'Rua Jorge Hudge', '240', 'casa', '', 'Vila Isabel', 'Rio de Janeiro', 'RJ', 'PF', '(21)2568-8237', '', '(21)9487-2520', 'Izabel: 9496-3847\r\n\r\nData: 07-09-2012\r\n- Instalação do micro novo\r\n- Backup dos Arquivos do micro Antigo\r\n- Configuração da Impressora\r\n- Instalação do Windows e de todos os programas'),
(38, 1, 'Helio Veloso', 'Rua Dona Zulmira', '112', '07', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)7817-2537', 'Data: 17-09-2012\r\n- Tentativa de Recuperação do Windows\r\n- Formatação do micro\r\n- Instalação de todos os programas\r\n- Instalação da impressora\r\n- configuração do roteador'),
(39, 1, 'Alberto Hugo', 'Rua Aristide Espínola', '52', '504', '', 'Leblon', 'Rio de Janeiro', 'AC', 'PF', '(21)2239-7235', '', '', 'Data: 21-09-2012\r\n- Reconfigura??o da Rede Wireless\r\n- Atualiza??o do Avast\r\n- Atualiza??o do Windows e dos programas\r\n- Remo??o da mensagem de software pirata do Windows\r\n- Configura??o do Laptop em rede\r\n- Manuten??o Geral'),
(40, 1, 'Jacson Bras de Andrade', 'R. Frederico Santoni, Rua D', '29', '', '20766-520', 'Engenho da Rainha', 'Rio de Janeiro', 'RJ', 'PF', '(21)4104-0608', '', '(21)7842-6974', 'Final da Frederico Santoni.\r\n\r\nStyllo Locação\r\n\r\nData: 14-09-2012  OS: 1612\r\n- Formatação do Laptop\r\n- Backup dos arquivos em DVD\r\n- Instalação do windows e dos programas\r\n- Teste de HD - OK'),
(41, 1, 'Sergio Freitas', 'Rua Genaral Severiano', '76', 'Bl:2 ap: 610', '', 'Botafogo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2542-8967', '', '(21)9884-7775', 'Data: 28-09-2012\r\n- Instalação e configuração do Roteador\r\n- Instalação do Avast Pro\r\n- Suporte Técnico\r\n- Reconfigurado o Netbook para o Wireless\r\n- Atualização dos programas'),
(42, 1, 'Cibele Magalhães', 'Rua Uruguai', '196', '702 Bl: b', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2268-0016', '', '(21)9662-2078', 'Data: 22-02-2013\r\n- Atualização do Windows;\r\n- Reinstalação do drive de DVD;\r\n- Atualização do Ccleaner;\r\n- Atualização do Java;\r\n- Verificação do micro com Combofix - Remoção de virus;\r\n- Atualização do Avast;\r\n- Limpeza dos temporários;\r\n- Retirada a Atualização automática, pois a mesma estava dando problema;\r\n- HD com problema, passando Scandisk direto quando liga;\r\n\r\nData: 05-10-2012\r\n- Processo svchost do windows estava corrompido\r\n- Atualização do Windows e dos programas\r\n- Desfragmentação de disco\r\n- Instalação de uma placa de vídeo AGP\r\n- Manutenção geral do micro'),
(43, 1, 'Edileusa Pereira ', 'Rua Nerval de Gouveia', '111', 'ap 101 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2594-5177', '', '(21)9618-5905', ''),
(44, 1, 'Letimar Pereira', 'Rua Nerval de Gouveia', '111', 'ap 102 fundos', '', 'Quintino', 'Rio de Janeiro', 'RJ', 'PF', '(21)2593-8339', '', '', 'Data: 16-10-2012\r\n- Remoção da Ask Toolbar\r\n- Remoção do Psafe\r\n- Remoção do Babylon Object\r\n- Combofix: Verificação do micro - Remoção de vírus\r\n- LibreOffice: Atualização para a versão 3.6\r\n- Atualização do Windows\r\n- Verificação do Registro\r\n- Spybot: Remoção de spyware\r\n- Limpeza dos temporários\r\n\r\nData: 30-08-2011\r\n- Foi trocado o processador pois o antigo havia queimado\r\n- Micro apresentando tensão do processador errarda na inicialização\r\n	- Foi trocada a fonte de alimentação mas a mensagem persistiu\r\n	- Verificada tensão no BIOS do micro, e estava configurada de forma correta\r\n- Atualização do Ccleaner - V 3.10\r\n- Atualização do Firefox - V 6.0\r\n- Limpeza dos temporários\r\n- Criado um ponto de restauração'),
(45, 1, 'Sueli Caldas Magalhães', 'Rua Humaitá', '135', '304', '', 'Humaitá', 'Rio de Janeiro', 'RJ', 'PF', '(21)2226-1199', '', '(21)9648-1672', 'Data: 08-05-2013\r\nInicio: 13:15   Término: 14:57  Tempo: 01:42\r\n- Remoção do Psafe;\r\n- Remoção do McAffe Security Scan;\r\n- Atualização do Ccleaner;\r\n- Remoção do Browser Manager;\r\n- Remoção do Yontoo;\r\n- Atualização do Flash;\r\n- Verificação dos cabos USB;\r\n- Instalação do LibreOffice;\r\n\r\n\r\nData: 17-10-2012\r\n- Atualização do Windows e programas\r\n- Remoção do vírus DialPly\r\n- Troca da fonte que havia queimado\r\n- LImpeza interna no micro\r\n- Placa Wireless está desconectando várias vezes (trocar antena do Roteador)'),
(46, 1, 'Conted Assisistencia Contábil', 'Av. Presidente Vargas', '962', '1310', '', 'Centro', 'Rio de Janeiro', '', 'PJ', '(21)2263-2161', '(21)2518-1330', '', 'Data: 05-11-2012\r\n- Instalação do micro novo\r\n- Configuração do micro em rede\r\n- Configuração da impressora\r\n- Recuperado o Windows do micro principal que havia corrompido\r\n\r\nData: 22-10-2012\r\n- Remoção e instalação dos softwares da impressora HP Deskjet F2050;\r\n- Remoção do software da impressora Lexmark;\r\n- Atualização do Firefox;\r\n- Atualização do Team Viewer.'),
(47, 1, 'Elza Souza', 'Rua Carvalho Alvim', '73', '301', '', 'Tijuca', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-1695', '', '(21)9446-4512', 'Data: 08-11-2012\r\n- Montagem do micro novo;\r\n- Instalação e configuração dos programas;\r\n- Atualização do Sistema.'),
(48, 1, 'Danielle Pingitore', 'Rua Leopoldo', '193', '301', '', 'Andaraí', 'Rio de Janeiro', 'RJ', 'PF', '(21)2238-9043', '', '(21)9881-8539', 'Data: 09-11-2012\r\nMicro Tio Dani\r\n- Remoçao de vírus\r\n- Atualizaçao dos programas\r\n- Instalação do Gimp, Inkscape, Avast\r\n- Verificação do Registro\r\n- Limpeza dos temporários'),
(50, 1, 'Reginaldo Ribeiro e Silva', 'Rua Conego Tobias', '130', 'casa 10', '', 'Méier', 'Rio de Janeiro', 'RJ', 'PF', '(21)3472-4091', '', '(21)9851-8007', 'Data: 30-11-2012\r\n- Troca do Gabinete do micro'),
(51, 1, 'Uriam Moraes', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9751-7983', ''),
(52, 1, 'Suzana', 'Rua Santa Amélia', '5', '', '', '', '', 'RJ', 'PF', '(21)2273-1513', '', '', ''),
(53, 1, 'Limaloc', 'Estr. Adhemar Bebiano', '1813', '', '21050-630', 'Del Castilho', 'Rio de janeiro', 'AC', 'PJ', '(21)2583-0143', '(21)2218-8507', '', 'Atualiza'),
(54, 1, 'Jairo Debossan', 'Rua Bulhoes Carvalho', '329', '702', '', 'Copacabana', '', 'AC', 'PF', '(21)2247-4085', '', '(21)9973-2675', ''),
(55, 1, 'Maria Cecília', 'Rua Barão de Icaraí', '21', '803', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2552-6988', '', '(21)9624-7562', 'Data: 19-01-2013\r\n- Remoção do AdThis Tool Bar\r\n- Atualização do Ccleaner\r\n- Remoção do ASK Toolbar\r\n- Atualização do LibreOffice 3.6\r\n- Atualização do Teamviewer para a versão 8\r\n- Atualização do Java 7.11\r\n- Atualização do Avast\r\n- Atualização do Firefox 18\r\n- Verificação do micro com o Combofix - OK\r\n- Limpeza dos temporários\r\n- Remoção do PowerPoint Viewer\r\n- Atualização do Windows\r\n- Desfragmentação de Disco\r\n- Verificação do Registro\r\n- Limpeza interna'),
(56, 1, 'Thiago - Exclusive', 'Rua Ana Leonídia', '175', '102', '', 'Engenho de Dentro', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)7856-7707', 'Data: 21-01-2013 OS: 1646\r\n- Instalação do Ccleaner;\r\n- Remoção da Babylon Toolbar;\r\n- Remoção da Dealio Toolba;\r\n- Remoção do McAfee Security Scan;\r\n- Remoção do Norton Security Scan;\r\n- Atualização do Java 7.11;\r\n- Renovação do Registro do Avast;\r\n- Atualização do Avast 7;\r\n- Instalação do TeamViewer 8;\r\n- Atualização do Libre Office 3.6.4;\r\n- Atualização do Windows;\r\n- Remoção dos temporários;\r\n- Verificação do registro'),
(57, 1, 'Marcela Pastor Veloso', 'Rua D. Zulmira', '112', 'casa 7', '', 'Maracanã', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-6134', '', '(21)9395-5435', 'Nextel: 7814-5910'),
(58, 1, 'Jacob Goldemberg', 'Av Nossa Senhora de Copacabana', '1003', '601', '22060-000', 'Copacabana', 'Rio de Janeiro', 'RJ', 'PF', '(21)2521-3345', '', '(21)9976-8988', 'Data: 23-02-2013\r\n- Pasta de Entrada do Outlook Express corrompida;\r\n- Efetuado backup da Cx de Entada e criada uma nova;\r\n- Atualização do Ccleaner;\r\n- Remoção do Java 6.35;\r\n- Instalação do TeamViewer;\r\n- Atualização do Firefox 19;\r\n- Instalação do Defrag;\r\n- Limpeza dos temporários;\r\n- Verificação do Registro;\r\n- Desfragmentação de disco;\r\n'),
(59, 1, 'Eliana Moreira', 'Rua Ferreira Pontes', '430', 'BL 1/603', '20541-280', 'ANDARAÍ', 'Rio de Janeiro', 'RJ', 'PF', '(21)2571-5754', '', '(21)8285-9688', 'Data: 25-02-2013\r\n- Remoção do Avast pois o mesmo estava travando;\r\n- Verificação do micro com Combofix - Remoção de vírus;\r\n- Atualização do Ccleaner;\r\n- Limpeza dos temporários;\r\n- Remoção do PC Doctor;\r\n- Desinstalado o LiveUpdate Nortom;\r\n- Reinstalação do Avast;\r\n- Limpeza interna no micro;\r\n- Atualização do Auslogick Disk Defrag;\r\n- Desfragmentação de disco;\r\n- Atualização do Windows'),
(60, 1, 'Fátima Lana', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9634-3990', ''),
(61, 1, 'Ana Claudia', 'RUA BARAO DE MESQUITA', '1021', '204', '', 'Grajaú', 'Rio de Janeiro', 'RJ', 'PF', '', '', '(21)8332-6796', 'Data: 04-03-2013\r\n- Verificação de Superficie dos HDs - OK;\r\n- Limpeza interna no micro;\r\n- Instalação do Ccleaner;\r\n- Backup dos Arquivos para o Drive D;\r\n- Remoção da Barra de Ferramentas ALOT;\r\n- Atualização do Java 7.15;\r\n- Instalação do Auslogic Disk Defrag;\r\n- Limpeza dos Temporários;\r\n- Verificação do micro com o Combofix: Remoção de vírus;\r\n- Desfragmentação de Disco;\r\n- Verificação do Registro;\r\n- Efetuado teste de Desempenho: OK (benchmarck 3794.97)'),
(62, 1, 'Luiz Henrique', '', '', '', '', '', '', 'AC', 'PF', '', '', '(21)9761-2004', 'Pai da Cláudia'),
(63, 1, 'Silvia Santiago', 'Rua Senador Correia', '42', '306 bl:A', '', 'Flamengo', 'Rio de Janeiro', 'RJ', 'PF', '(21)2558-4175', '', '(21)8136-8975', 'Data: 05-04-2013\r\n- Remoção do PC Faster;\r\n- Remoção da Ask Tool Bar;\r\n- Remoção do Babyloon Tool Bar;\r\n- Remoção do Browser Protect;\r\n- Remoção do Hao123;\r\n- Remoção do Iminent;\r\n- Verificão do Micro com o Combofix - Remoção de vírus;\r\n- Atualização do Ccleaner;\r\n- Instalação do Auslogic Disc Defrag;\r\n- Atualizado o LibreOffice (4.0.2);\r\n- Remoção do Luxor 3;\r\n- Remoção do Java 6 update 31;\r\n- Limpeza dos temporários;\r\n- Verificação do Registro;\r\n'),
(64, 1, 'Romi Cunha', '', '', '', '', '', 'Rio de janeiro', 'RJ', 'PF', '(21)2591-2645', '', '(21)9751-8892', 'Evangelizadora do CEBMA'),
(65, 1, 'Conceição', '', '', '', '', '', '', 'AC', 'PF', '(21)6921-7525', '', '(21)9205-4439', 'Faxineira'),
(66, 2, 'Cliente Teste', 'Rua Uruguai', '22', '', '', '', '', 'AC', 'PF', '', '', '', ''),
(67, 2, 'Alberto Hugo', '', '', '', '', '', '', 'AC', 'PF', '', '', '', ''),
(68, 1, 'cliente teste', '', '', '', '', '', '', 'AC', 'PF', '', '', '', ''),
(69, 1, 'Empresa fictícia', 'Rua Sem número', '', '', '', '', '', 'AC', 'PJ', '', '', '', 'Teste de Gravação!!!'),
(70, 1, 'Cadastro Novo', '', '', '', '', '', '', 'AC', 'PF', '', '', '', 'Gravando novo Cadastro com idEmpresa'),
(71, 2, 'Flavius Ferrari', 'Rua Barão de Mesquita', '796', '603', '', 'Andaraí', '', 'RJ', 'PF', '', '', '', ''),
(72, 2, 'Empresa Teste', 'Teste', '', '', '', '', '', 'AC', 'PJ', '', '', '', 'Testando idEmpresa'),
(73, 1, 'Testando a gravação', '', '', '', '', '', '', 'AC', 'PF', '', '', '', ''),
(74, 1, '', '', '', '', '', '', '', 'AC', 'PF', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientespf`
--

CREATE TABLE IF NOT EXISTS `clientespf` (
  `idPF` int(11) NOT NULL AUTO_INCREMENT,
  `idClientes` int(11) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nascimento` varchar(14) NOT NULL,
  UNIQUE KEY `idPF` (`idPF`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

--
-- Extraindo dados da tabela `clientespf`
--

INSERT INTO `clientespf` (`idPF`, `idClientes`, `cpf`, `rg`, `email`, `nascimento`) VALUES
(2, 2, '076.198.037-77', 'm-8.326.569', 'flaviusferrari@globo.com', '24-1-1975'),
(3, 4, '', '', '', '01-1-1950'),
(4, 5, '', '', '', '01-1-1950'),
(5, 6, '', '', '', '01-1-1950'),
(6, 7, '', '', 'rrosa32med@hotmail.com', '01-1-1950'),
(7, 8, '', '', 'fcerole2009@hotmail.com', '01-1-1950'),
(8, 9, '', '', 'ameliacmoreira@yahoo.com.br', '01-1-1950'),
(9, 10, '', '', '', '01-1-1950'),
(10, 11, '', '', '', '01-1-1950'),
(11, 12, '', '', '', '01-1-1950'),
(12, 13, '', '', '', '01-1-1950'),
(13, 14, '', '', 'ayrpenedo@globo.com', '01-1-1950'),
(14, 15, '', '', 'otica.perfeicao@gmail.com', '01-1-1950'),
(15, 16, '', '', 'mbarbieri@master-coop.com.br', '01-1-1950'),
(16, 17, '', '', 'magalyecs@yahoo.com.br', '01-1-1950'),
(17, 18, '', '', 'moreira.im@uol.com.br', '01-1-1950'),
(18, 19, '', '', 'diretoria@allworldseguros.com.br', '01-1-1950'),
(19, 20, '', '', 'wilton.taranto@oi.com.br', '01-1-1950'),
(20, 21, '', '', '', '01-1-1950'),
(21, 22, '', '', 'anaroldao100@hotmail.com', '01-1-1950'),
(22, 23, '', '', 'fc.diego@uol.com.br', '01-1-1950'),
(23, 24, '', '', '', '01-1-1950'),
(24, 25, '', '', '', '1-12-1950'),
(25, 26, '', '', '', '01-0-1950'),
(26, 27, '', '', 'clinatran@yahoo.com.br', '01-1-1950'),
(27, 28, '', '', 'marycida.sg@gmail.com', '01-1-1950'),
(28, 30, '', '', '', '01-1-1950'),
(29, 31, '', '', 'helena.paula@terra.com.br', '01-1-1950'),
(30, 32, '', '', 'ppteaf@ig.com.br', '01-1-1950'),
(31, 33, '', '', 'leonlas@ig.com.br', '01-1-1950'),
(32, 34, '', '', 'simone-1313@hotmail.com', '01-1-1950'),
(33, 36, '', '', 'mitsuba@restaurantemitsuba.com.br', '01-1-1950'),
(35, 38, '', '', 'hveloso@webcorner.com.br', '01-1-1950'),
(36, 39, '', '', 'ahddn@hotmail.com', '01-2-1950'),
(37, 40, '', '', 'jacson@styllolocacao.com.br', '01-1-1950'),
(38, 41, '', '', '', '01-1-1950'),
(39, 42, '', '', 'cibelemags@yahoo.com.br', '01-1-1950'),
(40, 43, '', '', 'edileusa@profer.srv.br', '01-1-1950'),
(41, 44, '', '', '', '01-0-1950'),
(42, 45, '', '', 'suelicm@uol.com.br', '01-1-1950'),
(43, 47, '', '', 'elzasouza37@rocketmail.com', '01-1-1950'),
(44, 48, '', '', 'daniellepingitore@yahoo.com.br', '01-1-1950'),
(45, 50, '', '', 'r_ribeiro65@yahoo.com.br', '01-1-1950'),
(46, 51, '', '', 'uriam_moraes@ig.com.br', '01-1-1950'),
(47, 52, '', '', '', '01-1-1950'),
(48, 54, '', '', 'jdebossan@uol.com.br', '01-1-1950'),
(49, 55, '', '', 'mcsmartins@uol.com.br', '01-1-1950'),
(50, 56, '', '', '', '01-1-1950'),
(51, 57, '', '', 'cela_22@hotmail.com', '01-1-1950'),
(52, 58, '', '', 'jbgoldemberg@globo.com', '01-1-1950'),
(53, 59, '', '', 'claudiamslima@gmail.com', '01-1-1950'),
(54, 60, '', '', 'mfatimalana@hotmail.com', '01-1-1950'),
(55, 61, '', '', 'anaclaudiaarruda@ig.com.br', '01-1-1950'),
(56, 62, '', '', '', '01-1-1950'),
(57, 63, '', '', 'silviasantiago@terra.com.br', '01-1-1950'),
(58, 64, '', '', 'romi.cunha@hotmail.com', '01-1-1950'),
(59, 65, '', '', '', '01-1-1950'),
(60, 66, '', '', 'novo@endereco.com.br', '01-1-1950'),
(61, 67, '', '', 'ahddn@hotmail.com', '01-1-1950'),
(62, 68, '', '', '', '01-1-1950'),
(63, 70, '', '', 'novo@endereco.com.br', '01-1-1950'),
(64, 71, '', '', 'flaviusferrari@globo.com', '01-1-1950'),
(65, 73, '', '', '', '1-1-'),
(66, 74, '', '', '', '1-1-1950');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientespj`
--

CREATE TABLE IF NOT EXISTS `clientespj` (
  `idPJ` int(11) NOT NULL AUTO_INCREMENT,
  `idClientes` int(11) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `ins_est` varchar(20) DEFAULT NULL,
  `ins_mun` varchar(20) DEFAULT NULL,
  `contato` varchar(255) DEFAULT NULL,
  `email_contato` varchar(55) DEFAULT NULL,
  UNIQUE KEY `idPJ` (`idPJ`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Extraindo dados da tabela `clientespj`
--

INSERT INTO `clientespj` (`idPJ`, `idClientes`, `cnpj`, `ins_est`, `ins_mun`, `contato`, `email_contato`) VALUES
(1, 29, '', '', '', NULL, NULL),
(2, 35, '', '', '222', NULL, NULL),
(3, 46, '', '', '', NULL, NULL),
(5, 53, '05.066.596/0001-46', '77.375.104', '323.001-5', NULL, NULL),
(6, 69, '', '', '', NULL, NULL),
(7, 72, '', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE IF NOT EXISTS `contatos` (
  `IdContato` int(11) NOT NULL AUTO_INCREMENT,
  `IdCliente` int(11) NOT NULL,
  `contato` varchar(255) NOT NULL,
  `setor` varchar(255) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `ramal` varchar(15) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  UNIQUE KEY `IdContato` (`IdContato`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`IdContato`, `IdCliente`, `contato`, `setor`, `telefone`, `ramal`, `celular`, `email`) VALUES
(1, 29, 'Elsa', 'Financeiro', '', '', '', ''),
(2, 46, 'José Roberto', 'Responsável', '(21)6666-6969', '', 'undefined', 'conted@veloxmail.com.br'),
(3, 69, 'Emereciano', 'Recepção', '', '123', 'undefined', 'seunome@email.com.br'),
(4, 69, 'Contato', 'Primeiro', '', '', '(21)9971-77913', 'novo@email.com.br'),
(6, 46, 'Novo contato Teste', '', '', '', '(21)9717-7913', ''),
(7, 46, 'Terceiro teste Contato', 'fafaf', '', '', '', 'alguma'),
(8, 46, 'Jorge', 'Secretaria', '(21)3238-1829', '62', '(21)99717-7913', 'jorger@veloxmail.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE IF NOT EXISTS `empresa` (
  `idEmpresa` int(5) NOT NULL AUTO_INCREMENT,
  `nomeEmpresa` varchar(155) NOT NULL COMMENT 'Nome da Empresa',
  `codEmpresa` varchar(5) NOT NULL,
  PRIMARY KEY (`idEmpresa`),
  UNIQUE KEY `idEmpresa` (`idEmpresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`idEmpresa`, `nomeEmpresa`, `codEmpresa`) VALUES
(1, 'F F Cunha Telecomunicações e Informática ME', 'FFC01'),
(2, 'Empresa Teste', 'EMT02'),
(4, 'New teste 02', 'NEW02'),
(5, '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordem`
--

CREATE TABLE IF NOT EXISTS `ordem` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `ordem`
--

INSERT INTO `ordem` (`idOrdem`, `idEmpresa`, `os`, `idCliente`, `data`, `situacao`, `problema`, `servico`, `material`, `horaEntrada`, `horaSaida`, `tempoTotal`, `valorInicial`, `valorExcedente`, `desconto`, `valorServico`, `valorMaterial`, `custoServico`, `obs`) VALUES
(1, 1, 1, 39, '2013-06-25', 'A', 'testando!!!!', 'ormem 1', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', ''),
(2, 1, 2, 2, '2013-07-11', 'F', 'ddd', 'dfsda roupa suja se lava em casa!!!', '~~lll~0~\n~~0~0~\n~~jjj~0~\njj~~~0~0', '10:00', '12:00', '2:0', '65,00', '20,00', '0', '85.00', '0', '85.00', ''),
(3, 1, 3, 25, '2013-08-14', 'A', 'Terá de ser a Ordem 3', 'sss fsfsfsfsdfsd', '1001~50~TT~5,00~250.00\n1002~22~hhh~10,00~220.00\n~~~0~0', '', '', '0:0', '0', '0', '0', '0.00', '320.00', '320.00', ''),
(4, 1, 4, 39, '2013-08-14', 'F', 'Segunda ordem teste', '', '222~01~jgjg~10,00~10.00', '', '', '', '0', '0', '0', '0', '0.00', '0', ''),
(6, 2, 1, 67, '2013-08-14', 'A', 'testando!!!!', 'ormem 1', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', ''),
(7, 2, 2, 66, '2013-08-14', 'A', 'ggg', '', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', ''),
(8, 2, 3, 66, '2013-08-14', 'A', 'Continuará sendo a ordem 3', 'sss', '~~~', '', '', '', '0', '0', '0', '0', '0', '0', ''),
(9, 2, 4, 71, '2013-08-14', 'A', 'Próxima Ordem foi a 4', 'Ordem de número 4', '~~~', '10:23', '12:51', '2:28', '0', '0', '0', '0.00', '0', '0.00', ''),
(10, 1, 5, 68, '2013-12-30', 'A', 'Inserindo material na ordem', '', '02~Pente de mï¿½mï¿½ria~50,00~100.00~', '', '', '0:0', '0', '0', '0', '0.00', '350.00', '350.00', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissao`
--

CREATE TABLE IF NOT EXISTS `permissao` (
  `idUsuario` int(5) NOT NULL,
  `idEmpresa` int(5) NOT NULL,
  `cadPF` varchar(10) NOT NULL COMMENT 'Acessa - Grava - Atualiza - Exclui',
  `cadPJ` varchar(10) NOT NULL,
  `ordem` varchar(10) NOT NULL,
  `especial` text NOT NULL,
  UNIQUE KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `permissao`
--

INSERT INTO `permissao` (`idUsuario`, `idEmpresa`, `cadPF`, `cadPJ`, `ordem`, `especial`) VALUES
(2, 1, '1-1-1-1', '1-1-1-1', '', ''),
(3, 1, '1-0-0-0', '1-0-0-0', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE IF NOT EXISTS `produtos` (
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`idProduto`, `idEmpresa`, `cod_produto`, `nome_produto`, `descri_produto`, `valor`, `quantidade`, `qtMinima`, `foto_produto`, `obs_produto`) VALUES
(9, 1, 'f171', 'Produto teste', 'ddd', '', 0, 0, 'f171_1.jpg', ''),
(10, 1, 'F172', 'novo teste', '', '', 0, 0, 'F172_1.jpg', ''),
(11, 1, 'F173', 'XXX', '', '', 0, 0, 'F173_1.jpg', ''),
(12, 1, 'IMG01', 'Imagem 01', 'teste', '', 0, 0, 'IMG01_1.jpg', ''),
(13, 1, 'IMG02', 'Imagem 02', 'teste', '', 0, 2, 'IMG02_1.jpg', ''),
(16, 2, 'F172', 'troca', 'qqq', '', 0, 0, 'F172_2.jpg', ''),
(17, 1, 'IMG20', 'Teste de configuração', 'config', '', 0, 0, 'IMG20_1.jpg', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `idEmpresa` int(5) NOT NULL,
  `Login` varchar(50) CHARACTER SET latin1 NOT NULL,
  `Senha` char(50) CHARACTER SET latin1 NOT NULL,
  `Nome` varchar(200) CHARACTER SET latin1 NOT NULL,
  `Email` varchar(200) CHARACTER SET latin1 NOT NULL,
  `Pergunta` varchar(200) NOT NULL,
  `Resposta` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`ID`, `idEmpresa`, `Login`, `Senha`, `Nome`, `Email`, `Pergunta`, `Resposta`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', '', '', ''),
(2, 1, 'ffctechnologies', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Flavius Ferrari', 'flaviusferrari@globo.com', 'Qual sua música favorita', 'Faroeste Caboclo'),
(3, 1, 'flavius', 'c62d929e7b7e7b6165923a5dfc60cb56', 'Flavius Ferrari', 'flaviusferrari@globo.com', 'Qual a sua religião?', 'Espirita'),
(5, 2, 'user', 'c62d929e7b7e7b6165923a5dfc60cb56', 'UsuÃ¡rio de Teste', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
