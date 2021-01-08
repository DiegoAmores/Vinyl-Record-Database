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
-- Table structure for table `vinyllabel`
--

DROP TABLE IF EXISTS `vinyllabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vinyllabel` (
  `vinyl_id` int NOT NULL,
  `label_id` int NOT NULL,
  PRIMARY KEY (`vinyl_id`,`label_id`),
  KEY `fk_labels_has_vinyl_vinyl1_idx` (`vinyl_id`),
  KEY `fk_labels_has_vinyl_labels1_idx` (`label_id`),
  CONSTRAINT `fk_labels_has_vinyl_labels1` FOREIGN KEY (`label_id`) REFERENCES `labels` (`label_id`),
  CONSTRAINT `fk_labels_has_vinyl_vinyl1` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinyllabel`
--

LOCK TABLES `vinyllabel` WRITE;
/*!40000 ALTER TABLE `vinyllabel` DISABLE KEYS */;
INSERT INTO `vinyllabel` VALUES (1,1),(2,2),(2,18),(3,3),(3,4),(4,5),(4,6),(5,7),(5,8),(6,1),(6,9),(7,10),(8,6),(9,8),(10,8),(11,11),(12,12),(12,13),(12,14),(13,14),(13,15),(14,8),(15,11),(15,16),(16,17),(17,12),(17,13),(17,14),(18,11),(18,20),(19,18),(20,8),(20,19);
/*!40000 ALTER TABLE `vinyllabel` ENABLE KEYS */;
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
