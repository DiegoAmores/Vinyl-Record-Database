-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vinyl`
--

DROP TABLE IF EXISTS `vinyl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vinyl` (
  `vinyl_id` int NOT NULL AUTO_INCREMENT,
  `singer_id` int NOT NULL,
  `album_name` varchar(100) NOT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `track_amount` int NOT NULL,
  `producer_id` int NOT NULL,
  `runtime` time DEFAULT NULL,
  `first_available` date NOT NULL,
  `weight` decimal(3,2) DEFAULT NULL,
  `is_explicit` tinyint DEFAULT NULL,
  PRIMARY KEY (`vinyl_id`),
  KEY `fk_vinyl_producer_table1_idx` (`producer_id`),
  KEY `fk_vinyl_singers1_idx` (`singer_id`),
  CONSTRAINT `fk_vinyl_producer_table1` FOREIGN KEY (`producer_id`) REFERENCES `producers` (`producer_id`),
  CONSTRAINT `fk_vinyl_singers1` FOREIGN KEY (`singer_id`) REFERENCES `singers` (`singer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinyl`
--

LOCK TABLES `vinyl` WRITE;
/*!40000 ALTER TABLE `vinyl` DISABLE KEYS */;
INSERT INTO `vinyl` VALUES (1,1,'Thriller','Pop',9,1,'00:42:19','1982-11-30',0.95,0),(2,2,'Dark Side of The Moon','Rock',10,2,'00:43:09','1973-03-01',1.14,0),(3,8,'Back in Black','Rock',10,3,'00:42:11','1980-07-25',0.70,0),(4,7,'Greatest Hits','Rock',17,4,'00:58:19','1981-10-26',1.35,0),(5,10,'Like a Virgin','Pop',9,5,'00:43:10','1984-11-12',0.85,0),(6,1,'Bad','Pop',10,1,'00:48:40','1987-08-31',0.56,0),(7,13,'Let\'s Dance','Rock',8,5,'00:39:41','1983-04-21',0.67,0),(8,14,'Master of Puppets','Metal',8,6,'00:54:47','1986-03-03',0.60,0),(9,11,'Purple Rain','Pop',9,7,'00:43:51','1984-06-13',1.11,0),(10,16,'1984','Rock',9,8,'00:33:22','2015-02-03',0.62,0),(11,3,'Random Access Memories','Dance/Electronica',13,9,'01:14:24','2013-03-24',1.20,0),(12,4,'Good Kid m.A.A.d City','Hip-Hop',15,10,'01:08:23','2012-09-22',1.22,1),(13,5,'Born to Die','Pop',12,11,'00:49:28','2012-01-20',0.52,0),(14,9,'Plastic Beach','Pop',16,12,'00:56:46','2010-07-16',1.23,0),(15,6,'25','Pop',11,13,'00:48:24','2015-10-23',0.50,0),(16,15,'Innerspeaker','Rock',11,14,'00:53:15','2010-08-30',0.96,0),(17,4,'To Pimp a Butterfly','Hip Hop',16,15,'01:18:51','2015-09-14',1.19,1),(18,2,'The Endless River','Rock',18,16,'00:53:02','2014-09-22',1.55,0),(19,12,'Morning Phase','Rock',13,17,'00:47:04','2014-01-10',0.64,0),(20,17,'AM','Rock',12,18,'00:41:42','2013-06-25',0.79,0);
/*!40000 ALTER TABLE `vinyl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 13:13:02
