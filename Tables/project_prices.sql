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
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prices` (
  `vinyl_id` int NOT NULL,
  `highest_discog` decimal(5,2) DEFAULT NULL,
  `average_discog` decimal(5,2) DEFAULT NULL,
  `lowerst_discog` decimal(5,2) DEFAULT NULL,
  `highest_amazon` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`vinyl_id`),
  CONSTRAINT `fk_prices_certification1` FOREIGN KEY (`vinyl_id`) REFERENCES `certification` (`vinyl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
INSERT INTO `prices` VALUES (1,45.00,16.00,6.89,16.83),(2,666.66,208.33,75.00,28.95),(3,199.00,91.91,36.76,40.75),(4,31.33,20.00,14.67,44.99),(5,25.00,8.97,3.50,19.91),(6,45.00,16.03,6.00,124.45),(7,42.86,13.33,6.40,18.95),(8,244.99,87.00,40.00,NULL),(9,74.95,20.00,2.38,37.77),(10,35.00,16.00,3.00,40.95),(11,71.43,27.86,15.00,29.10),(12,26.00,20.62,11.00,35.99),(13,20.99,16.98,11.99,16.64),(14,40.00,27.37,14.99,18.98),(15,28.32,18.45,13.10,20.41),(16,238.10,167.60,119.99,23.35),(17,33.99,26.97,24.00,26.99),(18,53.57,38.10,20.24,24.41),(19,28.80,18.48,9.90,19.23),(20,28.57,20.99,11.00,34.89);
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
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
