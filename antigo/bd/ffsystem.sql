-- 
-- MySQL DATABASE DUMPER. Copyright Sergey Shilko &reg;\n\n 2007
-- Modified by Bruno Goncalves (ENGINE TABLES) &reg;\n\n 2008
-- 

-- ------------------------------------------------ 
-- Table structure for table `clientes` started >>> 
DROP TABLE IF EXISTS `clientes`;
CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL auto_increment,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255),
  `numero` varchar(10),
  `complemento` varchar(15),
  `cep` varchar(9),
  `bairro` varchar(45),
  `cidade` varchar(45),
  `uf` char(2),
  `tipo` char(2),
  `telefone1` varchar(15),
  `telefone2` varchar(15),
  `celular` varchar(15),
  `obs` text,
  UNIQUE KEY `id_cliente` (`id_cliente`)
)ENGINE=InnoDB;

-- Table structure for table `clientes` finished <<< 
-- ------------------------------------------------- 
 

-- ------------------------------------------------ 
-- Table structure for table `clientespf` started >>> 
DROP TABLE IF EXISTS `clientespf`;
CREATE TABLE `clientespf` (
  `idPF` int(11) NOT NULL auto_increment,
  `idClientes` int(11),
  `cpf` varchar(45),
  `rg` varchar(45),
  `email` varchar(100),
  UNIQUE KEY `idPF` (`idPF`)
)ENGINE=InnoDB;

-- Table structure for table `clientespf` finished <<< 
-- ------------------------------------------------- 
 

-- ------------------------------------------------ 
-- Table structure for table `clientespj` started >>> 
DROP TABLE IF EXISTS `clientespj`;
CREATE TABLE `clientespj` (
  `idPJ` int(11) NOT NULL auto_increment,
  `idClientes` int(11),
  `cnpj` varchar(20),
  `ins_est` varchar(20),
  `ins_mun` varchar(20),
  `contato` varchar(255),
  `email_contato` varchar(55),
  UNIQUE KEY `idPJ` (`idPJ`)
)ENGINE=InnoDB;

-- Table structure for table `clientespj` finished <<< 
-- ------------------------------------------------- 
 

-- ------------------------------------------------ 
-- Table structure for table `contatos` started >>> 
DROP TABLE IF EXISTS `contatos`;
CREATE TABLE `contatos` (
  `IdContato` int(11) NOT NULL auto_increment,
  `IdCliente` int(11) NOT NULL,
  `contato` varchar(255) NOT NULL,
  `setor` varchar(255),
  `telefone` varchar(15),
  `ramal` varchar(15),
  `celular` varchar(255),
  `email` varchar(80),
  UNIQUE KEY `IdContato` (`IdContato`)
)ENGINE=InnoDB;

-- Table structure for table `contatos` finished <<< 
-- ------------------------------------------------- 
 

