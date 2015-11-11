CREATE DATABASE  IF NOT EXISTS `jsmpbss` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `jsmpbss`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: jsmpbss
-- ------------------------------------------------------
-- Server version	5.6.14

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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `skin_color` varchar(45) DEFAULT NULL,
  `scarf` varchar(45) DEFAULT NULL,
  `glasses` varchar(45) DEFAULT NULL,
  `u_color` varchar(45) DEFAULT NULL,
  `bag` varchar(45) DEFAULT NULL,
  `l_length` int(11) DEFAULT NULL,
  `figure` varchar(45) DEFAULT NULL,
  `hair_style` varchar(45) DEFAULT NULL,
  `cara` varchar(45) DEFAULT NULL,
  `u_style` varchar(45) DEFAULT NULL,
  `u_length` int(11) DEFAULT NULL,
  `l_style` varchar(45) DEFAULT NULL,
  `shoe_style` varchar(45) DEFAULT NULL,
  `behavior` varchar(45) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `hat` varchar(45) DEFAULT NULL,
  `hair_color` varchar(45) DEFAULT NULL,
  `collar` varchar(45) DEFAULT NULL,
  `u_character` varchar(45) DEFAULT NULL,
  `l_color` varchar(45) DEFAULT NULL,
  `shoe_color` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'报案人','white','sciarpa','occhiali','bianco nero','背包',100,'grasso','lunghi','un occhio','camicia',70,'spotivo','sctivale','持刀伤人',175,'cappelli','biondi','piccolo','lunga mancia','bianco','nero'),(3,'受害人','1','1','1','1','挎包',1,'1','1','1','1',1,'1','','打人',1,'1','1','1','1','1',''),(4,'其他','blu','con fuoco','triplo','rosa','无',0,'stambo','tre capelli','non e\' uomo','scatola',15,'con coda','trppo alto','驾车撞人',26,'grande','violeto','nulla','cubico','di colori','grigio'),(5,'受害人','','','','','挎包',0,'','','','',0,'','','打人',0,'','','','','','');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-22 17:12:00
