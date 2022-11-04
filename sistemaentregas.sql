# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: sistemaentregas
# ------------------------------------------------------
# Server version 5.0.51a-community-nt

#
# Source for table encomendas
#

DROP TABLE IF EXISTS `encomendas`;
CREATE TABLE `encomendas` (
  `IDENCOMENDA` int(11) NOT NULL auto_increment,
  `IDORIGEM` int(11) default NULL,
  `IDVEICULO` int(11) default NULL,
  `IDENTREGADOR` int(11) default NULL,
  `NOMEVEICULO` varchar(100) default NULL,
  `PLACA` varchar(100) default NULL,
  `ENTREGADOR` varchar(100) default NULL,
  `PESO` varchar(100) default NULL,
  `NUMPACOTE` varchar(100) default NULL,
  `ESTENTREGA` varchar(100) default NULL,
  `CPF` varchar(100) default NULL,
  `DESTINATARIO` varchar(100) default NULL,
  `LOGRADOURO` varchar(100) default NULL,
  `COMPLEMENTO` varchar(100) default NULL,
  `BAIRRO` varchar(100) default NULL,
  `CIDADE` varchar(100) default NULL,
  `UF` varchar(100) default NULL,
  `CEP` varchar(100) default NULL,
  `DATAENTREGA` date default NULL,
  `DATAROTA` date default NULL,
  `DATAENTRADA` date default NULL,
  `IDSAIDA` varchar(100) default NULL,
  PRIMARY KEY  (`IDENCOMENDA`),
  KEY `FK_REFERENCE_4` (`IDORIGEM`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

#
# Dumping data for table encomendas
#

LOCK TABLES `encomendas` WRITE;
/*!40000 ALTER TABLE `encomendas` DISABLE KEYS */;
INSERT INTO `encomendas` VALUES (1,12,5,1,'veiculo 06','000006','Nildo Bueno Correia F.','300gr','404','Entregue','10333054725','Nildo Bueno','Rua Princesa Isabel','63','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-04','2022-11-04','2022-11-01','28');
INSERT INTO `encomendas` VALUES (2,12,3,1,'Veiculo 0300','50005','Nildo Bueno Correia F.','300gr','100060','Entregue','103330547200','Nildo B C','Rua Princesa Is','63','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-04','2022-11-04','2022-11-03','27');
INSERT INTO `encomendas` VALUES (3,12,5,1,'veiculo 06','000006','Nildo Bueno Correia F.','300gr','88599','Entregue','10333054725','mmmm','Rua Princesa Is','58','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-04','2022-11-04','2022-11-03','28');
INSERT INTO `encomendas` VALUES (4,12,3,1,'Veiculo 0300','50005','Nildo Bueno Correia F.','300gr','99987','Entregue','100300547','jhjgjg','Rua Princesa Is','59','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-04','2022-11-04','2022-11-03','27');
INSERT INTO `encomendas` VALUES (5,12,5,1,'veiculo 06','000006','Nildo Bueno Correia F.','300gr','9000','Entregue','1033305472500','hggh','Rua Princesa Is','580','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-04','2022-11-04','2022-11-03','28');
INSERT INTO `encomendas` VALUES (6,12,5,1,'veiculo 06','000006','Nildo Bueno Correia F.','300gr','7000','Entregue','55652555255','Nildo Filho','Rua Princesa Is','600','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-04','2022-11-04','2022-11-03','28');
/*!40000 ALTER TABLE `encomendas` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table enderecos
#

DROP TABLE IF EXISTS `enderecos`;
CREATE TABLE `enderecos` (
  `IDENDERECO` int(11) NOT NULL auto_increment,
  `LOGRADOURO` varchar(100) default NULL,
  `BAIRRO` varchar(100) default NULL,
  `CIDADE` varchar(100) default NULL,
  `UF` varchar(100) default NULL,
  `CEP` varchar(100) default NULL,
  PRIMARY KEY  (`IDENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

#
# Dumping data for table enderecos
#

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Rua Princesa Is','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400');
INSERT INTO `enderecos` VALUES (2,'Rua Marechal F.','Nossa Senhora da Penha','Cachoeiro de Itapemirim','E','29307');
INSERT INTO `enderecos` VALUES (3,'erfgwert','rtwert','ertwert','','');
INSERT INTO `enderecos` VALUES (4,'rtert','ertert','wertwert','rtwertwer','');
INSERT INTO `enderecos` VALUES (5,'vvc0000','','','','');
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fornecedores
#

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE `fornecedores` (
  `IDFORNECEDOR` int(11) NOT NULL auto_increment,
  `FORNECEDOR` varchar(100) default NULL,
  PRIMARY KEY  (`IDFORNECEDOR`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Dumping data for table fornecedores
#

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'POSTO IPIRANGA');
INSERT INTO `fornecedores` VALUES (2,'Posto Oasis');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table gastos
#

DROP TABLE IF EXISTS `gastos`;
CREATE TABLE `gastos` (
  `IDGASTO` int(11) NOT NULL auto_increment,
  `IDSAIDA` int(11) default NULL,
  `IDFORNECEDOR` int(11) default NULL,
  `IDTIPOGASTO` int(11) default NULL,
  `QTD` varchar(100) default NULL,
  `TIPOUND` varchar(100) default NULL,
  `VALORUNITARIO` varchar(100) default NULL,
  `VALORTOTAL` varchar(100) default NULL,
  `KM` varchar(100) default NULL,
  `DATAGASTO` varchar(100) default NULL,
  `NUMERONOTA` varchar(100) default NULL,
  `IMGNOTA` varchar(900) default NULL,
  PRIMARY KEY  (`IDGASTO`),
  KEY `FK_REFERENCE_8` (`IDFORNECEDOR`),
  KEY `FK_REFERENCE_9` (`IDTIPOGASTO`),
  KEY `FK_REG_GASTO_SAIDA` (`IDSAIDA`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Dumping data for table gastos
#

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table origem
#

DROP TABLE IF EXISTS `origem`;
CREATE TABLE `origem` (
  `IDORIGEM` int(11) NOT NULL auto_increment,
  `NOMEORIGEM` varchar(100) default NULL,
  `CODORIGEM` varchar(100) default NULL,
  PRIMARY KEY  (`IDORIGEM`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

#
# Dumping data for table origem
#

LOCK TABLES `origem` WRITE;
/*!40000 ALTER TABLE `origem` DISABLE KEYS */;
INSERT INTO `origem` VALUES (12,'Shoptime','400');
/*!40000 ALTER TABLE `origem` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table papeis
#

DROP TABLE IF EXISTS `papeis`;
CREATE TABLE `papeis` (
  `IDPAPEL` int(11) NOT NULL auto_increment,
  `NOMEPAPEL` varchar(100) default NULL,
  `CRIAR` varchar(100) default NULL,
  `RECUPERAR` varchar(100) default NULL,
  `ATUALIZAR` varchar(100) default NULL,
  `EXCLUIR` varchar(100) default NULL,
  `MENUOPE` varchar(100) default NULL,
  `MENUADMIN` varchar(100) default NULL,
  `MENUGEN` varchar(100) default NULL,
  PRIMARY KEY  (`IDPAPEL`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

#
# Dumping data for table papeis
#

LOCK TABLES `papeis` WRITE;
/*!40000 ALTER TABLE `papeis` DISABLE KEYS */;
INSERT INTO `papeis` VALUES (1,'Entregador','1','1','1','1','1','1','1');
INSERT INTO `papeis` VALUES (2,'Gerente','1','1','1','1','1','0','1');
INSERT INTO `papeis` VALUES (3,'etasdf','0','0','0','0','0','1','0');
INSERT INTO `papeis` VALUES (4,'testes editado01','1','1','1','1','1','1','1');
INSERT INTO `papeis` VALUES (5,'rdtrdt001','1','1','1','1','1','1','1');
INSERT INTO `papeis` VALUES (6,'sdfgsdfgsdfg','0','0','0','0','1','1','0');
INSERT INTO `papeis` VALUES (7,'CRUD','1','1','1','1','1','0','1');
INSERT INTO `papeis` VALUES (8,'CRUD 2','0','0','0','0','0','0','1');
INSERT INTO `papeis` VALUES (9,'CRUD 3','0','0','0','0','1','1','0');
INSERT INTO `papeis` VALUES (10,'CRUD 4','0','0','1','0','1','0','0');
/*!40000 ALTER TABLE `papeis` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table pessoas
#

DROP TABLE IF EXISTS `pessoas`;
CREATE TABLE `pessoas` (
  `IDPESSOA` int(11) NOT NULL auto_increment,
  `IDENDERECO` int(11) default NULL,
  `NOMEPESSOA` varchar(100) default NULL,
  `COMPLEMENTO` varchar(100) default NULL,
  PRIMARY KEY  (`IDPESSOA`),
  KEY `FK_REFERENCE_3` (`IDENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Dumping data for table pessoas
#

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,1,'Nildo Bueno Correia F.','63');
INSERT INTO `pessoas` VALUES (2,1,'Davi Rei Rei de Judá','63');
INSERT INTO `pessoas` VALUES (3,1,'José do Egit','');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table saidas
#

DROP TABLE IF EXISTS `saidas`;
CREATE TABLE `saidas` (
  `IDSAIDA` int(11) NOT NULL auto_increment,
  `IDVEICULO` int(11) default NULL,
  `IDUSUARIO` int(11) default NULL,
  `IDPAPEL` int(11) default NULL,
  `IDPESSOA` int(11) default NULL,
  `NOMEVEICULO` varchar(100) default NULL,
  `PLACA` varchar(100) default NULL,
  `ENTREGADOR` varchar(100) default NULL,
  `DATASAIDA` date default NULL,
  `DATARETORNO` date default NULL,
  `HORASAIDA` varchar(100) default NULL,
  `HORARETORNO` varchar(100) default NULL,
  `ESTSAIDA` varchar(100) default NULL,
  `REGIAOENTREGA` varchar(100) default NULL,
  `KMSAIDA` varchar(100) default NULL,
  `KMRETORNO` varchar(100) default NULL,
  `KMTOTAL` varchar(100) default NULL,
  PRIMARY KEY  (`IDSAIDA`),
  KEY `FK_REF_SAIDA_VEICULO` (`IDVEICULO`),
  KEY `FK_REF_USUARIO_SAIDA` (`IDUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

#
# Dumping data for table saidas
#

LOCK TABLES `saidas` WRITE;
/*!40000 ALTER TABLE `saidas` DISABLE KEYS */;
INSERT INTO `saidas` VALUES (27,3,1,1,1,'Veiculo 0300','50005','Nildo Bueno Correia F.','2022-11-04','2022-11-04','15:18:04','','Em Rota','tessss','1000','','');
INSERT INTO `saidas` VALUES (28,5,1,1,1,'veiculo 06','000006','Nildo Bueno Correia F.','2022-11-04','2022-11-04','15:23:57','15:26:41','Concluida','teeeee','1000','1100','100');
INSERT INTO `saidas` VALUES (29,2,1,1,1,'veiculo 02','1000','Nildo Bueno Correia F.','2022-11-04','2022-11-04','','','Em Rota','tesss','1000','','');
/*!40000 ALTER TABLE `saidas` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tipogastos
#

DROP TABLE IF EXISTS `tipogastos`;
CREATE TABLE `tipogastos` (
  `IDTIPOGASTO` int(11) NOT NULL auto_increment,
  `IDTIPOUND` int(11) default NULL,
  `NOMEGASTO` varchar(100) default NULL,
  PRIMARY KEY  (`IDTIPOGASTO`),
  KEY `FK_REFERENCE_10` (`IDTIPOUND`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Dumping data for table tipogastos
#

LOCK TABLES `tipogastos` WRITE;
/*!40000 ALTER TABLE `tipogastos` DISABLE KEYS */;
INSERT INTO `tipogastos` VALUES (1,1,'ABASTECIMENTO');
INSERT INTO `tipogastos` VALUES (2,1,'oleo');
INSERT INTO `tipogastos` VALUES (3,3,'Pneu');
/*!40000 ALTER TABLE `tipogastos` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tipounds
#

DROP TABLE IF EXISTS `tipounds`;
CREATE TABLE `tipounds` (
  `IDTIPOUND` int(11) NOT NULL auto_increment,
  `NOMEUND` varchar(100) default NULL,
  PRIMARY KEY  (`IDTIPOUND`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

#
# Dumping data for table tipounds
#

LOCK TABLES `tipounds` WRITE;
/*!40000 ALTER TABLE `tipounds` DISABLE KEYS */;
INSERT INTO `tipounds` VALUES (1,'LT');
INSERT INTO `tipounds` VALUES (3,'UND');
INSERT INTO `tipounds` VALUES (5,'TST');
INSERT INTO `tipounds` VALUES (6,'RR');
INSERT INTO `tipounds` VALUES (8,'PP');
/*!40000 ALTER TABLE `tipounds` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table usuarios
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `IDUSUARIO` int(11) NOT NULL auto_increment,
  `IDPAPEL` int(11) default NULL,
  `IDPESSOA` int(11) default NULL,
  `USUARIO` varchar(100) default NULL,
  `SENHA` varchar(100) default NULL,
  PRIMARY KEY  (`IDUSUARIO`),
  KEY `FK_REFERENCE_1` (`IDPAPEL`),
  KEY `FK_REFERENCE_2` (`IDPESSOA`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Dumping data for table usuarios
#

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,1,1,'nildob','123456');
INSERT INTO `usuarios` VALUES (2,1,1,'zildo','12300');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table veiculos
#

DROP TABLE IF EXISTS `veiculos`;
CREATE TABLE `veiculos` (
  `IDVEICULO` int(11) NOT NULL auto_increment,
  `NOMEVEICULO` varchar(100) default NULL,
  `PLACA` varchar(100) default NULL,
  `ESTATUSVEICULO` varchar(100) default NULL,
  PRIMARY KEY  (`IDVEICULO`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

#
# Dumping data for table veiculos
#

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` VALUES (2,'veiculo 02','1000','Em Rota');
INSERT INTO `veiculos` VALUES (3,'Veiculo 0300','50005','Em Rota');
INSERT INTO `veiculos` VALUES (4,'Veiculo ','555','');
INSERT INTO `veiculos` VALUES (5,'veiculo 06','000006','Disponivel');
INSERT INTO `veiculos` VALUES (6,'veiculo 10','000005','');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;
UNLOCK TABLES;

#
#  Foreign keys for table encomendas
#

ALTER TABLE `encomendas`
ADD CONSTRAINT `FK_REFERENCE_4` FOREIGN KEY (`IDORIGEM`) REFERENCES `origem` (`IDORIGEM`);

#
#  Foreign keys for table gastos
#

ALTER TABLE `gastos`
ADD CONSTRAINT `FK_REFERENCE_8` FOREIGN KEY (`IDFORNECEDOR`) REFERENCES `fornecedores` (`IDFORNECEDOR`) ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REFERENCE_9` FOREIGN KEY (`IDTIPOGASTO`) REFERENCES `tipogastos` (`IDTIPOGASTO`) ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REG_GASTO_SAIDA` FOREIGN KEY (`IDSAIDA`) REFERENCES `saidas` (`IDSAIDA`) ON UPDATE CASCADE;

#
#  Foreign keys for table pessoas
#

ALTER TABLE `pessoas`
ADD CONSTRAINT `FK_REFERENCE_3` FOREIGN KEY (`IDENDERECO`) REFERENCES `enderecos` (`IDENDERECO`);

#
#  Foreign keys for table saidas
#

ALTER TABLE `saidas`
ADD CONSTRAINT `FK_REF_SAIDA_VEICULO` FOREIGN KEY (`IDVEICULO`) REFERENCES `veiculos` (`IDVEICULO`) ON UPDATE CASCADE,
ADD CONSTRAINT `FK_REF_USUARIO_SAIDA` FOREIGN KEY (`IDUSUARIO`) REFERENCES `usuarios` (`IDUSUARIO`) ON UPDATE CASCADE;

#
#  Foreign keys for table tipogastos
#

ALTER TABLE `tipogastos`
ADD CONSTRAINT `FK_REFERENCE_10` FOREIGN KEY (`IDTIPOUND`) REFERENCES `tipounds` (`IDTIPOUND`) ON UPDATE CASCADE;

#
#  Foreign keys for table usuarios
#

ALTER TABLE `usuarios`
ADD CONSTRAINT `FK_REFERENCE_1` FOREIGN KEY (`IDPAPEL`) REFERENCES `papeis` (`IDPAPEL`),
ADD CONSTRAINT `FK_REFERENCE_2` FOREIGN KEY (`IDPESSOA`) REFERENCES `pessoas` (`IDPESSOA`);


/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
