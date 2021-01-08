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
-- Table structure for table `musical_info`
--

DROP TABLE IF EXISTS `musical_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `musical_info` (
  `song_id` int NOT NULL,
  `key` varchar(10) NOT NULL,
  `time_sig` varchar(4) NOT NULL,
  `bpm` int NOT NULL,
  PRIMARY KEY (`song_id`),
  CONSTRAINT `fk_musical_info_songs1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `musical_info`
--

LOCK TABLES `musical_info` WRITE;
/*!40000 ALTER TABLE `musical_info` DISABLE KEYS */;
INSERT INTO `musical_info` VALUES (1,'F Major','4',122),(2,'B Minor','4',110),(3,'C# Major','4',96),(4,'B Major','4',118),(5,'B♭ Minor','4',138),(6,'E Major','4',119),(7,'D Major','4',93),(8,'C# Major','4',109),(9,'A Minor','4',73),(10,'C# Major','4',120),(11,'B Minor','4',128),(12,'G Major','4',165),(13,'A Major','4',120),(14,'F Major','4',116),(15,'A Major','1',124),(16,'D Major','4',73),(17,'C Major','4',151),(18,'D Major','4',134),(19,'B♭ Major','4',68),(20,'E Minor','4',107),(21,'D Major','4',141),(22,'A Major','4',126),(23,'D Major','4',133),(24,'A Major','4',106),(25,'A Major','4',188),(26,'G Major','4',127),(27,'D Major','4',122),(28,'E Major','4',152),(29,'A Major','4',95),(30,'C Minor','4',144),(31,'F Minor','4',110),(32,'B♭ Major','4',117),(33,'G Major','4',89),(34,'B Major','4',83),(35,'C Major','4',119),(36,'F Major','4',156),(37,'G Major','3',82),(38,'C Major','4',77),(39,'A♭ Major','3',110),(40,'E Major','4',133),(41,'E♭ Major','4',96),(42,'F Major','4',79),(43,'E Minor','4',108),(44,'D Major','4',126),(45,'B Minor','4',82),(46,'G Minor','4',59),(47,'C Major','4',137),(48,'G Major','4',133),(49,'E♭ Minor','4',119),(50,'F Major','4',150),(51,'G Minor','4',139),(52,'E♭ Major','4',136),(53,'F# Major','4',94),(54,'A Minor','4',111),(55,'G Major','4',119),(56,'G Minor','4',128),(57,'C# Major','4',115),(58,'D Major','4',103),(59,'A♭ Minor','4',105),(60,'B Minor','4',119),(61,'B♭ Major','4',106),(62,'A♭ Major','4',100),(63,'F Major','4',100),(64,'E♭ Major','4',131),(65,'A♭ Major','4',118),(66,'C Major','4',183),(67,'E Minor','4',134),(68,'B♭ Minor','4',115),(69,'E♭ Major','4',119),(70,'G Major','3',102),(71,'F# Minor','4',130),(72,'B♭ Major','4',128),(73,'C Major','4',115),(74,'E Minor','4',92),(75,'C Major','3',147),(76,'E Major','3',93),(77,'C Major','4',104),(78,'B Major','4',177),(79,'A Minor','4',142),(80,'C# Minor','3',77),(81,'E Minor','4',97),(82,'B Major','4',196),(83,'D Major','4',122),(84,'F Major','4',143),(85,'C# Minor','4',133),(86,'B Minor','4',78),(87,'A Minor','4',127),(88,'D Major','4',135),(89,'D Major','4',138),(90,'B♭ Major','4',113),(91,'E Major','3',69),(92,'C Major','4',130),(93,'A♭ Major','4',141),(94,'E♭ Major','4',185),(95,'D Major','4',89),(96,'D Major','4',128),(97,'D Minor','4',115),(98,'A Minor','4',153),(99,'E Major','4',100),(100,'A Minor','4',119),(101,'A Minor','4',90),(102,'A Minor','4',113),(103,'B♭ Minor','4',110),(104,'B♭ Minor','4',110),(105,'B♭ Minor','4',100),(106,'F# Minor','4',91),(107,'F# Minor','4',116),(108,'A♭ Minor','4',104),(109,'E Minor','4',103),(110,'C Major','4',130),(111,'F# Major','4',178),(112,'B Minor','4',124),(113,'B♭ Minor','4',82),(114,'C# Major','4',134),(115,'C# Major','4',78),(116,'B♭ Minor','4',95),(117,'G Major','4',72),(118,'F# Minor','4',136),(119,'F Minor','4',176),(120,'D Major','4',91),(121,'A♭ Major','74',74),(122,'B Minor','5',111),(123,'C# Major','4',100),(124,'C# Minor','4',170),(125,'C# Minor','4',131),(126,'C# Major','4',160),(127,'G Minor','4',98),(128,'E Minor','4',86),(129,'E Minor','4',160),(130,'E♭ Major','4',118),(131,'F# Minor','5',73),(132,'B♭ Minor','4',88),(133,'C Minor','4',85),(134,'C# Minor','4',120),(135,'D Major','4',75),(136,'C# Minor','4',100),(137,'F# Major','4',66),(138,'C# Minor','4',112),(139,'D Minor','4',138),(140,'E Major','3',161),(141,'D Major','4',89),(142,'C Major','4',102),(143,'A♭ Minor','4',93),(144,'B♭ Minor','4',100),(145,'G Major','4',81),(146,'C Minor','4',99),(147,'C Major','3',90),(148,'B♭ Major','4',97),(149,'D Major','4',120),(150,'C Major','4',159),(151,'F Minor','3',138),(152,'C Major','4',184),(153,'D Major','4',207),(154,'G Major','4',67),(155,'B♭ Minor','4',92),(156,'F Minor','4',158),(157,'F# Minor','4',164),(158,'G Minor','4',113),(159,'E♭ Major','4',144),(160,'D Major','3',165),(161,'F Minor','4',95),(162,'C# Major','4',82),(163,'A Minor','4',110),(164,'C# Minor','4',106),(165,'E Major','4',142),(166,'C Major','3',156),(167,'C Major','4',102),(168,'C# Major','4',151),(169,'C Major','4',129),(170,'F# Minor','4',147),(171,'F Major','4',129),(172,'G Major','4',104),(173,'E♭ Major','4',128),(174,'F Major','3',140),(175,'C Major','4',122),(176,'E♭ Major','4',119),(177,'B Major','4',137),(178,'G Major','4',114),(179,'A♭ Major','4',120),(180,'A♭ Major','4',120),(181,'A♭ Major','4',120),(182,'C# Major','4',108),(183,'B Minor','4',94),(184,'A♭ Major','4',120),(185,'A♭ Major','4',120),(186,'B Minor','4',94),(187,'A♭ Major','4',120),(188,'C# Major','4',88),(189,'A♭ Major','4',120),(190,'B♭ Minor','4',176),(191,'A♭ Major','4',120),(192,'A♭ Major','4',120),(193,'B♭ Minor','4',87),(194,'E Major','4',148),(195,'E Major','4',114),(196,'C Major','4',123),(197,'G Major','4',137),(198,'C Major','4',120),(199,'C Major','4',113),(200,'B Major','3',79),(201,'G Major','4',109),(202,'E Minor','4',115),(203,'E Major','3',146),(204,'G Major','4',116),(205,'G Major','4',122),(206,'A♭ Major','4',125),(207,'E♭ Major','4',85),(208,'E Minor','3',144),(209,'C Major','4',81),(210,'E Minor','4',112),(211,'A Major','4',125),(212,'C Major','3',130),(213,'C Major','4',144),(214,'C# Minor','4',90),(215,'C# Minor','4',106),(216,'C Minor','4',131),(217,'E Minor','4',113),(218,'E Minor','4',54),(219,'A Major','4',113),(220,'A Major','3',84),(221,'C Major','4',86),(222,'B Minor','4',126),(223,'C Major','4',67),(224,'A Major','4',113),(225,'F Major','4',85),(226,'F# Minor','4',97),(227,'C Major','4',180),(228,'D Major','4',180),(229,'F Major','4',131),(230,'C Major','4',115),(231,'B♭ Major','4',80),(232,'A Minor','4',100),(233,'D Major','4',92),(234,'F Minor','4',130),(235,'B Minor','4',98),(236,'C Minor','4',68);
/*!40000 ALTER TABLE `musical_info` ENABLE KEYS */;
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
