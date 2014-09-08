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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1


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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1


-- Criando tabela: clientespf
CREATE TABLE `clientespf` (
  `idPF` int(11) NOT NULL AUTO_INCREMENT,
  `idClientes` int(11) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nascimento` varchar(14) NOT NULL,
  UNIQUE KEY `idPF` (`idPF`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1

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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8

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


