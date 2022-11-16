# MySQL-Front 5.1  (Build 4.13)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;


# Host: localhost    Database: sistemaentregas
# ------------------------------------------------------
# Server version 5.5.5-10.4.25-MariaDB

#
# Source for table encomendas
#

DROP TABLE IF EXISTS `encomendas`;
CREATE TABLE `encomendas` (
  `IDENCOMENDA` int(11) NOT NULL AUTO_INCREMENT,
  `IDORIGEM` int(11) DEFAULT NULL,
  `IDVEICULO` int(11) DEFAULT NULL,
  `IDENTREGADOR` int(11) DEFAULT NULL,
  `NOMEVEICULO` varchar(100) DEFAULT NULL,
  `PLACA` varchar(100) DEFAULT NULL,
  `ENTREGADOR` varchar(100) DEFAULT NULL,
  `PESO` varchar(100) DEFAULT NULL,
  `NUMPACOTE` varchar(100) DEFAULT NULL,
  `ESTENTREGA` varchar(100) DEFAULT NULL,
  `CPF` varchar(100) DEFAULT NULL,
  `DESTINATARIO` varchar(100) DEFAULT NULL,
  `LOGRADOURO` varchar(100) DEFAULT NULL,
  `COMPLEMENTO` varchar(100) DEFAULT NULL,
  `BAIRRO` varchar(100) DEFAULT NULL,
  `CIDADE` varchar(100) DEFAULT NULL,
  `UF` varchar(100) DEFAULT NULL,
  `CEP` varchar(100) DEFAULT NULL,
  `DATAENTREGA` varchar(100) DEFAULT NULL,
  `DATAROTA` varchar(100) DEFAULT NULL,
  `DATAENTRADA` varchar(100) DEFAULT NULL,
  `DATAPRAZO` varchar(100) DEFAULT NULL,
  `IDSAIDA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDENCOMENDA`),
  KEY `FK_REFERENCE_4` (`IDORIGEM`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

#
# Dumping data for table encomendas
#

LOCK TABLES `encomendas` WRITE;
/*!40000 ALTER TABLE `encomendas` DISABLE KEYS */;
INSERT INTO `encomendas` VALUES (14,12,8,2,'Fiorino 01','TPD 25500','Nildo Bueno Correia F.','250gr','363600','Entregue','1055555555','Nikola Tesla','Rua Princesa Isabel','63','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-11 14:22:00','2022-11-11 14:13:00','2022-11-11 00:00:00',NULL,'71');
INSERT INTO `encomendas` VALUES (15,13,8,1,'Fiorino 01','TPD 25500','Nildo Bueno Correia F.','260gr','55820','Entregue','555898555545','Bruce Taylor','Rua Princesa Isabel','855','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-11 14:26:00','2022-11-11 14:25:00','2022-11-11 12:58:00',NULL,'72');
INSERT INTO `encomendas` VALUES (16,12,8,1,'Fiorino 01','TPD 25500','Nildo Bueno Correia F.','480gr','4100','Entregue','16565656','Elon Musk','Rua Princesa Isabel','25','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-11 14:26:00','2022-11-11 14:25:00','2022-11-11 13:39:00',NULL,'72');
INSERT INTO `encomendas` VALUES (17,12,9,2,'Fiorino Azul','VTS1050','Nildo Bueno Correia F.','500gr','100050','Entregue','100000000000','Deizano','Rua Princesa Isabel','45','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-13 21:18:00','2022-11-13 18:14:00','2022-11-11 14:29:00',NULL,'73');
INSERT INTO `encomendas` VALUES (18,13,9,2,'Fiorino Azul','VTS1050','Nildo Bueno Correia F.','350gr','6988BRCD','Saiu para entrega','10333054729','Bill Gates','Rua Princesa Isabel','24','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400','2022-11-13 18:14:00','2022-11-13 18:14:00','2022-11-10 18:27:00',NULL,'73');
/*!40000 ALTER TABLE `encomendas` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table enderecos
#

DROP TABLE IF EXISTS `enderecos`;
CREATE TABLE `enderecos` (
  `IDENDERECO` int(11) NOT NULL AUTO_INCREMENT,
  `LOGRADOURO` varchar(100) DEFAULT NULL,
  `BAIRRO` varchar(100) DEFAULT NULL,
  `CIDADE` varchar(100) DEFAULT NULL,
  `UF` varchar(100) DEFAULT NULL,
  `CEP` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Dumping data for table enderecos
#

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Rua Princesa Isabel','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307400');
INSERT INTO `enderecos` VALUES (2,'Rua Marechal Floriano','Nossa Senhora da Penha','Cachoeiro de Itapemirim','ES','29307');
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table fornecedores
#

DROP TABLE IF EXISTS `fornecedores`;
CREATE TABLE `fornecedores` (
  `IDFORNECEDOR` int(11) NOT NULL AUTO_INCREMENT,
  `FORNECEDOR` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDFORNECEDOR`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

#
# Dumping data for table fornecedores
#

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (1,'POSTO IPIRANGA');
INSERT INTO `fornecedores` VALUES (2,'Posto Luanda');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table gastos
#

DROP TABLE IF EXISTS `gastos`;
CREATE TABLE `gastos` (
  `IDGASTO` int(11) NOT NULL AUTO_INCREMENT,
  `IDSAIDA` int(11) DEFAULT NULL,
  `IDFORNECEDOR` int(11) DEFAULT NULL,
  `IDTIPOGASTO` int(11) DEFAULT NULL,
  `QTD` varchar(100) DEFAULT NULL,
  `TIPOUND` varchar(100) DEFAULT NULL,
  `VALORUNITARIO` varchar(100) DEFAULT NULL,
  `VALORTOTAL` varchar(100) DEFAULT NULL,
  `KM` varchar(100) DEFAULT NULL,
  `DATAGASTO` varchar(100) DEFAULT NULL,
  `NUMERONOTA` varchar(100) DEFAULT NULL,
  `IMGNOTA` varchar(900) DEFAULT NULL,
  PRIMARY KEY (`IDGASTO`),
  KEY `FK_REFERENCE_8` (`IDFORNECEDOR`),
  KEY `FK_REFERENCE_9` (`IDTIPOGASTO`),
  KEY `FK_REG_GASTO_SAIDA` (`IDSAIDA`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

#
# Dumping data for table gastos
#

LOCK TABLES `gastos` WRITE;
/*!40000 ALTER TABLE `gastos` DISABLE KEYS */;
INSERT INTO `gastos` VALUES (13,69,1,47,'20','29','3,50','70','2530','2022-11-11 13:51:00','5000010','');
INSERT INTO `gastos` VALUES (14,71,1,47,'20','29','3,5','70','1100','2022-11-11 14:24:00','12345','');
/*!40000 ALTER TABLE `gastos` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table origem
#

DROP TABLE IF EXISTS `origem`;
CREATE TABLE `origem` (
  `IDORIGEM` int(11) NOT NULL AUTO_INCREMENT,
  `NOMEORIGEM` varchar(100) DEFAULT NULL,
  `CODORIGEM` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDORIGEM`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

#
# Dumping data for table origem
#

LOCK TABLES `origem` WRITE;
/*!40000 ALTER TABLE `origem` DISABLE KEYS */;
INSERT INTO `origem` VALUES (12,'Shoptime','400');
INSERT INTO `origem` VALUES (13,'Amazon','205');
/*!40000 ALTER TABLE `origem` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table papeis
#

DROP TABLE IF EXISTS `papeis`;
CREATE TABLE `papeis` (
  `IDPAPEL` int(11) NOT NULL AUTO_INCREMENT,
  `NOMEPAPEL` varchar(100) DEFAULT NULL,
  `CRIAR` varchar(100) DEFAULT NULL,
  `RECUPERAR` varchar(100) DEFAULT NULL,
  `ATUALIZAR` varchar(100) DEFAULT NULL,
  `EXCLUIR` varchar(100) DEFAULT NULL,
  `MENUOPE` varchar(100) DEFAULT NULL,
  `MENUADMIN` varchar(100) DEFAULT NULL,
  `MENUGEN` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDPAPEL`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

#
# Dumping data for table papeis
#

LOCK TABLES `papeis` WRITE;
/*!40000 ALTER TABLE `papeis` DISABLE KEYS */;
INSERT INTO `papeis` VALUES (1,'Entregador','1','1','1','1','1','1','1');
INSERT INTO `papeis` VALUES (2,'Gerente','1','1','1','1','0','0','1');
INSERT INTO `papeis` VALUES (17,'Operador','1','1','1','1','1','0','0');
INSERT INTO `papeis` VALUES (18,'Motorista','1','1','1','1','1','0','0');
INSERT INTO `papeis` VALUES (19,'Motoboy','1','1','1','1','1','0','0');
/*!40000 ALTER TABLE `papeis` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table pessoas
#

DROP TABLE IF EXISTS `pessoas`;
CREATE TABLE `pessoas` (
  `IDPESSOA` int(11) NOT NULL AUTO_INCREMENT,
  `IDENDERECO` int(11) DEFAULT NULL,
  `NOMEPESSOA` varchar(100) DEFAULT NULL,
  `COMPLEMENTO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDPESSOA`),
  KEY `FK_REFERENCE_3` (`IDENDERECO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

#
# Dumping data for table pessoas
#

LOCK TABLES `pessoas` WRITE;
/*!40000 ALTER TABLE `pessoas` DISABLE KEYS */;
INSERT INTO `pessoas` VALUES (1,1,'Nildo Bueno Correia F.','63');
/*!40000 ALTER TABLE `pessoas` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table saidas
#

DROP TABLE IF EXISTS `saidas`;
CREATE TABLE `saidas` (
  `IDSAIDA` int(11) NOT NULL AUTO_INCREMENT,
  `IDVEICULO` int(11) DEFAULT NULL,
  `IDUSUARIO` int(11) DEFAULT NULL,
  `IDPAPEL` int(11) DEFAULT NULL,
  `IDPESSOA` int(11) DEFAULT NULL,
  `NOMEVEICULO` varchar(100) DEFAULT NULL,
  `PLACA` varchar(100) DEFAULT NULL,
  `ENTREGADOR` varchar(100) DEFAULT NULL,
  `DATASAIDA` date DEFAULT NULL,
  `DATARETORNO` date DEFAULT NULL,
  `HORASAIDA` varchar(100) DEFAULT NULL,
  `HORARETORNO` varchar(100) DEFAULT NULL,
  `ESTSAIDA` varchar(100) DEFAULT NULL,
  `REGIAOENTREGA` varchar(100) DEFAULT NULL,
  `KMSAIDA` varchar(100) DEFAULT NULL,
  `KMRETORNO` varchar(100) DEFAULT NULL,
  `KMTOTAL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDSAIDA`),
  KEY `FK_REF_SAIDA_VEICULO` (`IDVEICULO`),
  KEY `FK_REF_USUARIO_SAIDA` (`IDUSUARIO`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

#
# Dumping data for table saidas
#

LOCK TABLES `saidas` WRITE;
/*!40000 ALTER TABLE `saidas` DISABLE KEYS */;
INSERT INTO `saidas` VALUES (69,8,1,1,1,'Fiorino 01','TPD 25500','Nildo Bueno Correia F.','2022-11-11','2022-11-11','13:49:49','13:51:50','Concluida','Regiao dos lagos','2500','2580','80');
INSERT INTO `saidas` VALUES (70,8,2,1,1,'Fiorino 01','TPD 25500','Nildo Bueno Correia F.','2022-11-11','2022-11-11','14:01:26','14:12:55','Concluida','Regiao Lagos','7500','7560','60');
INSERT INTO `saidas` VALUES (71,8,2,1,1,'Fiorino 01','TPD 25500','Nildo Bueno Correia F.','2022-11-11','2022-11-11','14:13:54','14:25:13','Concluida','Regiao ','1000','1200','200');
INSERT INTO `saidas` VALUES (72,8,1,1,1,'Fiorino 01','TPD 25500','Nildo Bueno Correia F.','2022-11-11','2022-11-11','14:25:58','','Rota Concluída','Regiao Teste','12000','','');
INSERT INTO `saidas` VALUES (73,9,2,1,1,'Fiorino Azul','VTS1050','Nildo Bueno Correia F.','2022-11-13','2022-11-13','18:14:42','','Em Rota','regiao teste ','1050','','');
/*!40000 ALTER TABLE `saidas` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tipogastos
#

DROP TABLE IF EXISTS `tipogastos`;
CREATE TABLE `tipogastos` (
  `IDTIPOGASTO` int(11) NOT NULL AUTO_INCREMENT,
  `IDTIPOUND` int(11) DEFAULT NULL,
  `NOMEGASTO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDTIPOGASTO`),
  KEY `FK_REFERENCE_10` (`IDTIPOUND`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

#
# Dumping data for table tipogastos
#

LOCK TABLES `tipogastos` WRITE;
/*!40000 ALTER TABLE `tipogastos` DISABLE KEYS */;
INSERT INTO `tipogastos` VALUES (47,29,'GASOLINA');
INSERT INTO `tipogastos` VALUES (48,29,'OLEO');
INSERT INTO `tipogastos` VALUES (49,30,'PNEU');
INSERT INTO `tipogastos` VALUES (50,30,'ALMOÇO');
INSERT INTO `tipogastos` VALUES (51,30,'PEDAGIO');
/*!40000 ALTER TABLE `tipogastos` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table tipounds
#

DROP TABLE IF EXISTS `tipounds`;
CREATE TABLE `tipounds` (
  `IDTIPOUND` int(11) NOT NULL AUTO_INCREMENT,
  `NOMEUND` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDTIPOUND`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

#
# Dumping data for table tipounds
#

LOCK TABLES `tipounds` WRITE;
/*!40000 ALTER TABLE `tipounds` DISABLE KEYS */;
INSERT INTO `tipounds` VALUES (29,'LT');
INSERT INTO `tipounds` VALUES (30,'UND');
INSERT INTO `tipounds` VALUES (31,'PÇ');
/*!40000 ALTER TABLE `tipounds` ENABLE KEYS */;
UNLOCK TABLES;

#
# Source for table usuarios
#

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
  `IDUSUARIO` int(11) NOT NULL AUTO_INCREMENT,
  `IDPAPEL` int(11) DEFAULT NULL,
  `IDPESSOA` int(11) DEFAULT NULL,
  `USUARIO` varchar(100) DEFAULT NULL,
  `SENHA` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDUSUARIO`),
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
  `IDVEICULO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMEVEICULO` varchar(100) DEFAULT NULL,
  `PLACA` varchar(100) DEFAULT NULL,
  `ESTATUSVEICULO` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IDVEICULO`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

#
# Dumping data for table veiculos
#

LOCK TABLES `veiculos` WRITE;
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` VALUES (8,'Fiorino 01','TPD 25500','Em Rota');
INSERT INTO `veiculos` VALUES (9,'Fiorino Azul','VTS1050','Em Rota');
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
