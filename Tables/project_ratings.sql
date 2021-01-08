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
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ratings` (
  `vinyl_id` int NOT NULL,
  `discogs_rating` decimal(3,2) DEFAULT NULL,
  `amazon_rating` decimal(3,2) DEFAULT NULL,
  `rollingstone_rating` decimal(3,2) DEFAULT NULL,
  PRIMARY KEY (`vinyl_id`),
  KEY `fk_ratings_vinyl1_idx` (`vinyl_id`),
  CONSTRAINT `fk_ratings_vinyl1` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,4.49,4.80,4.00),(2,4.69,4.80,5.00),(3,4.44,4.80,5.00),(4,4.49,4.90,3.00),(5,4.03,4.70,3.50),(6,4.38,4.80,3.50),(7,4.10,4.70,3.50),(8,4.62,4.70,5.00),(9,4.65,4.70,4.00),(10,4.17,4.80,4.00),(11,4.52,4.70,4.00),(12,4.67,4.70,4.00),(13,4.35,4.70,2.00),(14,4.48,4.40,3.50),(15,4.31,4.70,5.00),(16,4.52,4.70,NULL),(17,4.73,4.70,4.50),(18,4.12,4.30,3.50),(19,4.45,4.60,4.50),(20,4.46,4.50,3.50);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 13:13:01
