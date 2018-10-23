CREATE DATABASE  IF NOT EXISTS `dbsct` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `dbsct`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: 127.0.0.1    Database: dbsct
-- ------------------------------------------------------
-- Server version	5.7.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contrato` (
  `idContrato` varchar(300) COLLATE utf8_bin NOT NULL,
  `cnpj_Empresa` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `cpf_Funcionario` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `dia_Inicial` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `dia_Final` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `horario_Inicial` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `horario_Final` varchar(7) COLLATE utf8_bin DEFAULT NULL,
  `localizacao` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `tipo` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `clausula` varchar(5000) COLLATE utf8_bin DEFAULT NULL,
  `funcionario_Status` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idContrato`),
  KEY `cnpj_Empresa` (`cnpj_Empresa`),
  KEY `cpf_Funcionario` (`cpf_Funcionario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
INSERT INTO `contrato` VALUES ('0','13.133.133/1313-13','000.000.000-00','15/10/2018','16/10/2018','10:00','12:00','Salvador em tal lugar','CONSTRUÇÃO','1.AAA 2.BBB 3.CCC','EM ANDAMENTO'),('1','13.133.133/1313-13','111.111.111-11','15/10/2018','16/10/2018','10:00','12:00','Salvador em tal lugar','MANUTENÇÃO','1.AAA 2.BBB 3.CCC','CONCLUÍDO'),('2','13.133.133/1313-13','111.111.111-11','15/10/2018','16/10/2018','10:00','12:00','Salvador em tal lugar','CONSTRUÇÃO','1.AAA 2.BBB 3.CCC','CONCLUÍDO'),('3','13.133.133/1313-13','111.111.111-11','15/10/2018','16/10/2018','10:00','12:00','Salvador em tal lugar','MONTAGEM','1.AAA 2.BBB 3.CCC','EM ANDAMENTO'),('4','13.133.133/1313-13','222.222.222-22','15/10/2018','16/10/2018','10:00','12:00','Salvador em tal lugar','MONTAGEM','1.AAA 2.BBB 3.CCC','CONCLUÍDO'),('5','13.133.133/1313-13','333.333.333-33','15/10/2018','16/10/2018','10:00','12:00','Salvador em tal lugar','CONSTRUÇÃO','1.AAA 2.BBB 3.CCC','CONCLUÍDO'),('6','13.133.133/1313-13','444.444.444-44','15/10/2018','16/10/2018','10:00','12:00','Salvador em tal lugar','MONTAGEM','1.AAA 2.BBB 3.CCC','EM ANDAMENTO');
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `nome_empresa` varchar(500) COLLATE utf8_bin NOT NULL,
  `nome_fantasia` varchar(500) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(500) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(500) COLLATE utf8_bin NOT NULL,
  `complemento` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(500) COLLATE utf8_bin NOT NULL,
  `cep` varchar(500) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(500) COLLATE utf8_bin NOT NULL,
  `estado` varchar(500) COLLATE utf8_bin NOT NULL,
  `celular` varchar(30) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(500) COLLATE utf8_bin NOT NULL,
  `ramo_empresa` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `cnpj` varchar(20) COLLATE utf8_bin NOT NULL,
  `senha` varchar(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cnpj`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('BFN LTDA','Brasil Feliz de Novo','Rua Silveira Martins','Sé','Proximo ao metrô da Sé','13','13.131-313','Salvador','Bahia','(13) 1 1313-1313','(13) 1313-1313','BandoDeBurguesSafado@gmail.com','Valorizar Minorias','13.133.133/1313-13','131313');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `nome_funcionario` varchar(500) COLLATE utf8_bin NOT NULL,
  `endereco` varchar(500) COLLATE utf8_bin NOT NULL,
  `bairro` varchar(500) COLLATE utf8_bin NOT NULL,
  `complemento` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `numero` varchar(500) COLLATE utf8_bin NOT NULL,
  `cep` varchar(500) COLLATE utf8_bin NOT NULL,
  `cidade` varchar(500) COLLATE utf8_bin NOT NULL,
  `estado` varchar(500) COLLATE utf8_bin NOT NULL,
  `celular` varchar(20) COLLATE utf8_bin NOT NULL,
  `telefone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(500) COLLATE utf8_bin NOT NULL,
  `nascimento` varchar(11) COLLATE utf8_bin NOT NULL,
  `cpf` varchar(20) COLLATE utf8_bin NOT NULL,
  `rg` varchar(20) COLLATE utf8_bin NOT NULL,
  `sexo` varchar(20) COLLATE utf8_bin NOT NULL,
  `senha` varchar(15) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `rg` (`rg`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('Machado Teixeira','Rua tal 0','bonf 0','complemento tal 0 ','00','00.000-000','Salvador','Bahia','(00) 0 0000-0000','(00) 0000-0000','emailetal0@gmail.com','00/00/0000','000.000.000-00','00.000.000-00','M','000'),('Giovana Araújo','Rua tal 1','bonf 1','complemento tal 1','11','11.111-111','Salvador','Bahia','(11) 1 1111-1111','(11) 1111-1111','emailetal1@gmail.com','11/11/1111','111.111.111-11','11.111.111-11','F','111'),('Helena Costa','Rua tal 2','bonf 2','complemento tal 2','22','22.222-222','Salvador','Bahia','(22) 2 2222-2222','(22) 2222-2222','emailetal2@gmail.com','22/22/2222','222.222.222-22','22.222.222-22','F','222'),('Lara Silva ','Rua tal 3','bonf 3','complemento tal 3','33','33.333-333','Salvador','Bahia','(33) 3 3333-3333','(33) 3333-3333','emailetal3@gmail.com','33/33/3333','333.333.333-33','33.333.333-33','F','333'),('Lucas Amaral  ','Rua tal 4','bonf 4','complemento tal 4','44','44.444-444','Salvador','Bahia','(44) 4 4444-4444','(44) 4444-4444','emailetal4@gmail.com','44/44/4444','444.444.444-44','44.444.444-44','M','333');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-22 15:29:11
