-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: reservas
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `bonus`
--

DROP TABLE IF EXISTS `bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonus`
--

LOCK TABLES `bonus` WRITE;
/*!40000 ALTER TABLE `bonus` DISABLE KEYS */;
INSERT INTO `bonus` VALUES (1,'Desayuno','Precio desayuno por persona',10),(2,'Media Pensión','Precio media pensión por persona',20),(3,'Pensión Completa','Precio pensión completa por persona',30),(4,'SPA','Precio SPA por persona',10),(5,'Desayuno + SPA','Precio desayno, más SPA por persona',15),(6,'Media Pensión + SPA','Precio media pensión, más SPA por persona',25),(7,'Pensión Completa + SPA','Precio pensión completa, más SPA por persona',35);
/*!40000 ALTER TABLE `bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busy_room`
--

DROP TABLE IF EXISTS `busy_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busy_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `datein` date DEFAULT NULL,
  `dateout` date DEFAULT NULL,
  `idRoom` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idRoom` (`idRoom`),
  CONSTRAINT `busy_room_ibfk_1` FOREIGN KEY (`idRoom`) REFERENCES `rooms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=272 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busy_room`
--

LOCK TABLES `busy_room` WRITE;
/*!40000 ALTER TABLE `busy_room` DISABLE KEYS */;
INSERT INTO `busy_room` VALUES (1,'2017-11-01','2017-11-01',2),(2,'2017-11-01','2017-11-01',3),(3,'2017-11-01','2017-11-10',4),(4,'2017-11-01','2017-11-10',5),(5,'2017-11-01','2017-11-10',6),(6,'2017-11-01','2017-11-10',7),(7,'2017-11-01','2017-11-10',8),(8,'2017-11-01','2017-11-10',9),(9,'2017-11-01','2017-11-10',10),(10,'2017-11-01','2017-11-10',40),(11,'2017-11-01','2017-11-10',41),(12,'2017-11-01','2017-11-10',42),(13,'2017-11-01','2017-11-10',43),(14,'2017-11-01','2017-11-10',44),(15,'2017-11-01','2017-11-10',45),(16,'2017-11-01','2017-11-10',46),(17,'2017-11-01','2017-11-10',47),(18,'2017-11-01','2017-11-10',48),(19,'2017-11-01','2017-11-10',49),(20,'2017-11-01','2017-11-10',50),(21,'2017-11-01','2017-11-10',51),(22,'2017-11-01','2017-11-10',52),(23,'2017-11-01','2017-11-10',53),(24,'2017-11-01','2017-11-10',54),(25,'2017-11-01','2017-11-10',55),(26,'2017-11-01','2017-11-10',56),(27,'2017-11-01','2017-11-10',57),(28,'2017-11-01','2017-11-10',58),(29,'2017-11-01','2017-11-10',59),(30,'2017-11-01','2017-11-10',60),(31,'2017-11-01','2017-11-10',61),(32,'2017-11-01','2017-11-10',62),(33,'2017-11-01','2017-11-10',63),(34,'2017-11-01','2017-11-10',64),(35,'2017-11-01','2017-11-10',65),(36,'2017-11-01','2017-11-10',66),(37,'2017-11-01','2017-11-10',67),(38,'2017-11-01','2017-11-10',68),(39,'2017-11-01','2017-11-10',69),(40,'2017-11-01','2017-11-10',70),(119,'2017-11-11','2017-11-20',11),(120,'2017-11-01','2017-11-10',12),(121,'2017-11-01','2017-11-10',13),(122,'2017-11-11','2017-11-20',14),(123,'2017-11-01','2017-11-10',15),(124,'2017-11-01','2017-11-10',16),(125,'2017-11-01','2017-11-10',17),(126,'2017-11-01','2017-11-10',18),(127,'2017-11-11','2017-11-20',19),(128,'2017-11-01','2017-11-10',20),(129,'2017-11-01','2017-11-10',21),(130,'2017-11-01','2017-11-10',22),(131,'2017-11-01','2017-11-10',23),(132,'2017-11-11','2017-11-20',24),(133,'2017-11-01','2017-11-10',25),(134,'2017-11-01','2017-11-10',26),(135,'2017-11-01','2017-11-10',27),(136,'2017-11-01','2017-11-10',28),(137,'2017-11-11','2017-11-20',29),(138,'2017-11-01','2017-11-10',30),(139,'2017-11-01','2017-11-10',65),(140,'2017-11-01','2017-11-10',66),(141,'2017-11-01','2017-11-10',67),(217,'2017-11-11','2017-11-20',68),(218,'2017-11-01','2017-11-10',69),(219,'2017-11-01','2017-11-10',70),(220,'2017-11-01','2017-11-10',71),(221,'2017-11-01','2017-11-10',72),(222,'2017-11-11','2017-11-20',73),(223,'2017-11-01','2017-11-10',74),(224,'2017-11-01','2017-11-10',75),(225,'2017-11-01','2017-11-10',76),(226,'2017-11-01','2017-11-10',77),(227,'2017-11-11','2017-11-20',78),(228,'2017-11-01','2017-11-10',79),(229,'2017-11-01','2017-11-10',80),(230,'2017-11-01','2017-11-10',81),(231,'2017-11-01','2017-11-10',44),(232,'2017-11-21','2017-11-30',20),(233,'2017-11-21','2017-11-30',21),(234,'2017-11-21','2017-11-30',22),(235,'2017-11-21','2017-11-30',23),(236,'2017-11-21','2017-11-30',24),(237,'2017-11-21','2017-11-30',25),(238,'2017-11-21','2017-11-30',26),(239,'2017-11-21','2017-11-30',27),(240,'2017-11-21','2017-11-30',28),(241,'2017-11-21','2017-11-30',29),(242,'2017-11-21','2017-11-30',30),(243,'2017-11-21','2017-11-30',31),(244,'2017-11-21','2017-11-30',32),(245,'2017-11-21','2017-11-30',33),(246,'2017-11-21','2017-11-30',34),(247,'2017-11-21','2017-11-30',35),(248,'2017-11-21','2017-11-30',36),(249,'2017-11-21','2017-11-30',37),(250,'2017-11-21','2017-11-30',38),(251,'2017-11-21','2017-11-30',39),(252,'2017-11-21','2017-11-30',40),(253,'2017-11-21','2017-11-30',41),(254,'2017-11-21','2017-11-30',42),(255,'2017-11-21','2017-11-30',43),(256,'2017-11-21','2017-11-30',44),(257,'2017-11-21','2017-11-30',45),(258,'2017-11-21','2017-11-30',46),(259,'2017-11-21','2017-11-30',47),(260,'2017-11-21','2017-11-30',48),(261,'2017-11-21','2017-11-30',49),(262,'2017-11-21','2017-11-30',50),(263,'2017-11-21','2017-11-30',70),(264,'2017-11-21','2017-11-30',71),(265,'2017-11-21','2017-11-30',1),(266,'2017-11-21','2017-11-30',2),(267,'2017-11-21','2017-11-30',3),(268,'2017-11-21','2017-11-30',6),(269,'2017-11-21','2017-11-30',7),(270,'2017-11-21','2017-11-30',8),(271,'2017-11-21','2017-11-30',9);
/*!40000 ALTER TABLE `busy_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_room`
--

DROP TABLE IF EXISTS `price_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `price_room` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_room`
--

LOCK TABLES `price_room` WRITE;
/*!40000 ALTER TABLE `price_room` DISABLE KEYS */;
INSERT INTO `price_room` VALUES (1,15,'2018-03-01'),(2,15,'2017-09-01'),(3,10,'2017-12-01'),(4,20,'2018-06-01');
/*!40000 ALTER TABLE `price_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `capacity` int(10) unsigned NOT NULL,
  `free` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Individual','Habitación individual',1,''),(2,'Doble','Habitación doble',2,''),(3,'Triple','Habitación triple',3,''),(4,'Junior Suit','Habitación doble con salón',2,''),(5,'Suit','Habitación con dos camas dobles y salón',4,''),(6,'Individual','Habitación individual',1,NULL),(7,'Individual','Habitación individual',1,NULL),(8,'Individual','Habitación individual',1,NULL),(9,'Individual','Habitación individual',1,NULL),(10,'Individual','Habitación individual',1,NULL),(11,'Individual','Habitación individual',1,''),(12,'Individual','Habitación individual',1,NULL),(13,'Individual','Habitación individual',1,''),(14,'Individual','Habitación individual',1,''),(15,'Individual','Habitación individual',1,NULL),(16,'Individual','Habitación individual',1,''),(17,'Individual','Habitación individual',1,''),(18,'Individual','Habitación individual',1,NULL),(19,'Individual','Habitación individual',1,NULL),(20,'Individual','Habitación individual',1,NULL),(21,'Individual','Habitación individual',1,''),(22,'Individual','Habitación individual',1,NULL),(23,'Individual','Habitación individual',1,''),(24,'Individual','Habitación individual',1,''),(25,'Doble','Habitación doble',2,NULL),(26,'Doble','Habitación doble',2,''),(27,'Doble','Habitación doble',2,''),(28,'Doble','Habitación doble',2,NULL),(29,'Doble','Habitación doble',2,NULL),(30,'Doble','Habitación doble',2,NULL),(31,'Doble','Habitación doble',2,''),(32,'Doble','Habitación doble',2,NULL),(33,'Doble','Habitación doble',2,''),(34,'Doble','Habitación doble',2,''),(35,'Doble','Habitación doble',2,''),(36,'Doble','Habitación doble',2,''),(37,'Doble','Habitación doble',2,''),(38,'Doble','Habitación doble',2,NULL),(39,'Doble','Habitación doble',2,NULL),(40,'Doble','Habitación doble',2,NULL),(41,'Doble','Habitación doble',2,''),(42,'Doble','Habitación doble',2,NULL),(43,'Doble','Habitación doble',2,''),(44,'Doble','Habitación doble',2,''),(45,'Doble','Habitación doble',2,''),(46,'Doble','Habitación doble',2,''),(47,'Triple','Habitación triple',3,''),(48,'Triple','Habitación triple',3,NULL),(49,'Triple','Habitación triple',3,NULL),(50,'Triple','Habitación triple',3,NULL),(51,'Triple','Habitación triple',3,''),(52,'Triple','Habitación triple',3,NULL),(53,'Triple','Habitación triple',3,''),(54,'Triple','Habitación triple',3,''),(55,'Triple','Habitación triple',3,''),(56,'Triple','Habitación triple',3,''),(57,'Junior Suit','Habitación doble con salón',2,''),(58,'Junior Suit','Habitación doble con salón',2,NULL),(59,'Junior Suit','Habitación doble con salón',2,NULL),(60,'Junior Suit','Habitación doble con salón',2,NULL),(61,'Junior Suit','Habitación doble con salón',2,''),(62,'Junior Suit','Habitación doble con salón',2,''),(63,'Junior Suit','Habitación doble con salón',2,''),(64,'Junior Suit','Habitación doble con salón',2,''),(65,'Junior Suit','Habitación doble con salón',2,''),(66,'Junior Suit','Habitación doble con salón',2,NULL),(67,'Junior Suit','Habitación doble con salón',2,NULL),(68,'Junior Suit','Habitación doble con salón',2,NULL),(69,'Junior Suit','Habitación doble con salón',2,NULL),(70,'Junior Suit','Habitación doble con salón',2,NULL),(71,'Suit','Habitación con dos camas dobles y salón',4,''),(72,'Suit','Habitación con dos camas dobles y salón',4,''),(73,'Suit','Habitación con dos camas dobles y salón',4,''),(74,'Suit','Habitación con dos camas dobles y salón',4,''),(75,'Suit','Habitación con dos camas dobles y salón',4,''),(76,'Suit','Habitación con dos camas dobles y salón',4,NULL),(77,'Suit','Habitación con dos camas dobles y salón',4,NULL),(78,'Suit','Habitación con dos camas dobles y salón',4,NULL),(79,'Suit','Habitación con dos camas dobles y salón',4,NULL),(80,'Suit','Habitación con dos camas dobles y salón',4,NULL),(81,'Suit','Habitación con dos camas dobles y salón',4,NULL);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-30  0:05:56
