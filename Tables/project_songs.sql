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
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `song_id` int NOT NULL,
  `vinyl_id` int NOT NULL,
  `song_name` varchar(200) NOT NULL,
  `track_num` varchar(10) NOT NULL,
  `duration` varchar(5) NOT NULL,
  PRIMARY KEY (`song_id`),
  KEY `fk_songs_table_vinyl_idx` (`vinyl_id`),
  CONSTRAINT `fk_songs_table_vinyl` FOREIGN KEY (`vinyl_id`) REFERENCES `vinyl` (`vinyl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,1,'Wanna be Startin\' Somethin\'','1','6:02'),(2,1,'Baby Be Mine','2','4:20'),(3,1,'The Girl is Mine','3','3:41'),(4,1,'Thriller','4','5:57'),(5,1,'Beat It','5','4:18'),(6,1,'Billie Jean','6','4:54'),(7,1,'Human Nature','7','4:07'),(8,1,'P.Y.T. (Pretty Young Thing)','8','3:58'),(9,1,'The Lady in My Life','9','4:59'),(10,2,'Speak to Me','1','1:13'),(11,2,'Breathe (In The Air)','2','2:43'),(12,2,'On The Run','3','3:36'),(13,2,'Time','4','6:53'),(14,2,'The Great Gig in the Sky','5','4:36'),(15,2,'Money','6','6:23'),(16,2,'Us and Them','7','7:49'),(17,2,'Any Colour You Like','8','3:26'),(18,2,'Brain Damage','9','3:49'),(19,2,'Eclipse','10','2:03'),(20,3,'Hells Bells','1','5:10'),(21,3,'Shoot to Thrill','2','5:17'),(22,3,'What Do You Do For Money Honey','3','3:33'),(23,3,'Given the Dog a Bone','4','3:30'),(24,3,'Let Me Put My Love into You','5','4:16'),(25,3,'Back in Black','6','4:14'),(26,3,'You Shook Me All Night Long','7','3:30'),(27,3,'Have a Drink on Me','8','3:57'),(28,3,'Shake a Leg','9','4:06'),(29,3,'Rock n\' Roll Ain\'t Noise Pollution','10','4:15'),(30,4,'Bohemian Rhapsody','1','5:57'),(31,4,'Another One Bites The Dust','2','3:36'),(32,4,'Killer Queen','3','2:57'),(33,4,'Fat Bottomed Girls','4','3:22'),(34,4,'Bicycle Race','5','3:01'),(35,4,'You\'re My Best Friend','6','2:52'),(36,4,'Don\'t Stop Me Now','7','3:29'),(37,4,'Save Me','8','3:48'),(38,4,'Crazy Little Thing Called Love','9','2:42'),(39,4,'Somebody To Love','10','4:56'),(40,4,'Now I\'m Here','11','4:10'),(41,4,'Good Old Fashioned Lover Boy','12','2:54'),(42,4,'Play The Game','13','3:33'),(43,4,'Flash','14','2:48'),(44,4,'Seven Seas Of Rhye','15','2:47'),(45,4,'We Will Rock You','16','2:01'),(46,4,'We Are The Champions','17','3:00'),(47,5,'Material Girl','1','4:04'),(48,5,'Angel','2','3:57'),(49,5,'Like A Virgin','3','3:39'),(50,5,'Over And Over','4','4:13'),(51,5,'Love Don\'t Live Here Anymore','5','4:51'),(52,5,'Dress You Up','6','4:02'),(53,5,'Shoo-Bee-Doo','7','5:18'),(54,5,'Pretender','8','4:31'),(55,5,'Stay','9','4:09'),(56,6,'Bad','1','4:06'),(57,6,'The Way You Make Me Feel','2','4:58'),(58,6,'Speed Demon','3','4:01'),(59,6,'Liberian Girl','4','3:42'),(60,6,'Just Good Friends','5','4:05'),(61,6,'Another Part Of Me','6','3:53'),(62,6,'Man In The Mirror','7','5:18'),(63,6,'I Just Can\'t Stop Loving You','8','4:23'),(64,6,'Dirty Diana','9','4:52'),(65,6,'Smooth Criminal','10','4:16'),(66,7,'Modern Love','1','4:46'),(67,7,'China Girl','2','5:32'),(68,7,'Let\'s Dance','3','7:38'),(69,7,'Without You','4','3:08'),(70,7,'Ricochet','5','5:14'),(71,7,'Criminal World','6','4:25'),(72,7,'Cat People (Putting Out Fire)','7','5:09'),(73,7,'Shake It','8','3:49'),(74,8,'Battery','1','5:10'),(75,8,'Master Of Puppets','2','8:38'),(76,8,'The Thing That Should Not Be','3','6:32'),(77,8,'Welcome Home (Sanitarium)','4','6:28'),(78,8,'Disposable Heroes','5','8:14'),(79,8,'Leper Messiah','6','5:38'),(80,8,'Orion','7','8:12'),(81,8,'Damage, Inc.','8','5:08'),(82,9,'Let\'s Go Crazy','1','4:39'),(83,9,'Take Me With U','2','3:54'),(84,9,'The Beautiful Ones','3','5:15'),(85,9,'Computer Blue','4','3:59'),(86,9,'Darling Nikki','5','4:15'),(87,9,'When Doves Cry','6','5:52'),(88,9,'I Would Die 4 U','7','2:51'),(89,9,'Baby I\'m A Star','8','4:20'),(90,9,'Purple Rain','9','8:45'),(91,10,'1984','1','1:07'),(92,10,'Jump','2','4:04'),(93,10,'Panama','3','3:31'),(94,10,'Top Jimmy','4','2:59'),(95,10,'Drop Dead Legs','5','4:13'),(96,10,'Hot For Teacher','6','4:42'),(97,10,'I\'ll Wait','7','4:41'),(98,10,'Girl Gone Bad','8','4:43'),(99,10,'House Of Pain','9','3:18'),(100,11,'Give Life Back To Music','1','4:35'),(101,11,'The Game Of Love','2','5:22'),(102,11,'Giorgio By Moroder','3','9:04'),(103,11,'Within','4','3:48'),(104,11,'Instant Crush','5','5:37'),(105,11,'Lose Yourself To Dance','6','5:53'),(106,11,'Touch','7','8:18'),(107,11,'Get Lucky','8','6:09'),(108,11,'Beyond','9','4:50'),(109,11,'Motherboard','10','5:41'),(110,11,'Fragments Of Time','11','4:39'),(111,11,'Doin\' It Right','12','4:11'),(112,11,'Contact','13','6:21'),(113,12,'Sherane a.k.a Master Splinter’s Daughter','1','4:33'),(114,12,'Bitch, Don’t Kill My Vibe','2','5:10'),(115,12,'Backseat Freestyle','3','3:32'),(116,12,'The Art Of Peer Pressure','4','5:24'),(117,12,'Money Trees','5','6:26'),(118,12,'Poetic Justice','6','5:00'),(119,12,'Good Kid','7','3:34'),(120,12,'M.A.A.d City','8','5:50'),(121,12,'Swimming Pools (Drank) (Extended Version)','9','5:13'),(122,12,'Sing About Me, I\'m Dying Of Thirst','10','12:03'),(123,12,'Real','11','7:23'),(124,12,'Compton','12','4:08'),(125,12,'The Recipe','13','5:52'),(126,12,'Black Boy Fly','14','4:38'),(127,12,'Now Or Never','15','4:17'),(128,13,'Born To Die','1','4:46'),(129,13,'Off To The Races','2','5:00'),(130,13,'Blue Jeans','3','3:30'),(131,13,'Video Games','4','4:42'),(132,13,'Diet Mountain Dew','5','3:43'),(133,13,'National Anthem','6','3:51'),(134,13,'Dark Paradise','7','4:03'),(135,13,'Radio','8','3:34'),(136,13,'Carmen','9','4:08'),(137,13,'Million Dollar Man','10','3:51'),(138,13,'Summertime Sadness','11','4:25'),(139,13,'This Is What Makes Us Girls','12','3:58'),(140,14,'Orchestral Intro','1','1:09'),(141,14,'Welcome To The World Of The Plastic Beach','2','3:35'),(142,14,'White Flag','3','3:42'),(143,14,'Rhinestone Eyes','4','3:19'),(144,14,'Stylo','5','4:29'),(145,14,'Superfast Jellyfish','6','2:54'),(146,14,'Empire Ants','7','4:43'),(147,14,'Glitter Freeze','8','4:02'),(148,14,'Some Kind Of Nature','9','2:59'),(149,14,'On Melancholy Hill','10','3:53'),(150,14,'Broken','11','3:16'),(151,14,'Sweepstakes','12','5:19'),(152,14,'Plastic Beach','13','3:46'),(153,14,'To Binge','14','3:55'),(154,14,'Cloud Of Unknowing','15','3:05'),(155,14,'Pirate Jet','16','2:32'),(156,15,'Hello','1','4:55'),(157,15,'Send My Love (To Your New Lover)','2','3:43'),(158,15,'I Miss You','3','5:48'),(159,15,'When We Were Young','4','4:51'),(160,15,'Remedy','5','4:05'),(161,15,'Water Under The Bridge','6','4:00'),(162,15,'River Lea','7','3:45'),(163,15,'Love In The Dark','8','4:46'),(164,15,'Million Years Ago','9','3:46'),(165,15,'All I Ask','10','4:32'),(166,15,'Sweetest Devotion','11','4:12'),(167,16,'It Is Not Meant To Be','1','5:22'),(168,16,'Desire Be Desire Go','2','4:26'),(169,16,'Alter Ego','3','4:48'),(170,16,'Lucidity','4','4:30'),(171,16,'Why Won\'t You Make Up Your Mind?','5','3:19'),(172,16,'Solitude Is Bliss','6','3:55'),(173,16,'Jeremy\'s Storm','7','5:28'),(174,16,'Expectation','8','6:02'),(175,16,'The Bold Arrow Of Time','9','4:24'),(176,16,'Runway, Houses, City, Clouds','10','7:15'),(177,16,'I Don\'t Really Mind','11','3:46'),(178,17,'Wesley\'s Theory','1','4:47'),(179,17,'For Free? (Interlude)','2','2:10'),(180,17,'King Kunta','3','3:54'),(181,17,'Institutionalized','4','4:31'),(182,17,'These Walls','5','5:00'),(183,17,'U','6','4:28'),(184,17,'Alright','7','3:39'),(185,17,'For Sale? (Interlude)','8','4:51'),(186,17,'Momma','9','4:43'),(187,17,'Hood Politics','10','4:52'),(188,17,'How Much A Dollar Cost','11','4:21'),(189,17,'Complexion (A Zulu Love)','12','4:23'),(190,17,'The Blacker The Berry','13','5:28'),(191,17,'You Ain\'t Gotta Lie (Momma Said)','14','4:01'),(192,17,'I','15','5:36'),(193,17,'Mortal Man','16','12:07'),(194,18,'Things Left Unsaid','1','4:23'),(195,18,'It\'s What We Do','2','6:18'),(196,18,'Ebb And Flow','3','1:45'),(197,18,'Sum','4','4:48'),(198,18,'Skins','5','2:37'),(199,18,'Unsung','6','1:06'),(200,18,'Anisina','7','3:05'),(201,18,'The Lost Art Of Conversation','8','1:45'),(202,18,'On Noodle Street','9','1:40'),(203,18,'Night Light','10','1:42'),(204,18,'Allons-y (1)','11','1:56'),(205,18,'Autumn \'68','12','1:32'),(206,18,'Allons-y (2)','13','1:30'),(207,18,'Talkin\' Hawkin\'','14','3:24'),(208,18,'Calling','15','3:38'),(209,18,'Eyes To Pearls','16','1:51'),(210,18,'Surfacing','17','2:46'),(211,18,'Louder Than Words','18','6:20'),(212,19,'Cycle','1','0:40'),(213,19,'Morning','2','5:22'),(214,19,'Heart Is A Drum','3','4:31'),(215,19,'Say Goodbye','4','3:29'),(216,19,'Blue Moon','5','4:00'),(217,19,'Unforgiven','6','4:34'),(218,19,'Wave','7','3:45'),(219,19,'Don\'t Let It Go','8','3:08'),(220,19,'Blackbird Chain','9','4:26'),(221,19,'Phase','10','1:12'),(222,19,'Turn Away','11','3:05'),(223,19,'Country Down','12','4:00'),(224,19,'Waking Light','13','5:00'),(225,20,'Do I Wanna Know?','1','4:31'),(226,20,'R U Mine?','2','3:21'),(227,20,'One For The Road','3','3:26'),(228,20,'Arabella','4','3:27'),(229,20,'I Want It All','5','3:04'),(230,20,'No.1 Party Anthem','6','4:03'),(231,20,'Mad Sounds','7','3:35'),(232,20,'Fireside','8','3:01'),(233,20,'Why\'d You Only Call Me When You\'re High?','9','2:41'),(234,20,'Snap Out Of It','10','3:12'),(235,20,'Knee Socks','11','4:17'),(236,20,'I Wanna Be Yours','12','3:04');
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 13:13:03
