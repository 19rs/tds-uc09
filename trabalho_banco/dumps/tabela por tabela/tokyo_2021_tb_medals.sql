CREATE DATABASE  IF NOT EXISTS `tokyo_2021` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tokyo_2021`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tokyo_2021
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tb_medals`
--

DROP TABLE IF EXISTS `tb_medals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_medals` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ranking` tinyint DEFAULT NULL,
  `team` varchar(80) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gold` smallint DEFAULT NULL,
  `silver` smallint DEFAULT NULL,
  `bronze` smallint DEFAULT NULL,
  `total` smallint DEFAULT NULL,
  `rank_by_total` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_medals`
--

LOCK TABLES `tb_medals` WRITE;
/*!40000 ALTER TABLE `tb_medals` DISABLE KEYS */;
INSERT INTO `tb_medals` VALUES (1,1,'United States of America',39,41,33,113,1),(2,2,'People\'s Republic of China',38,32,18,88,2),(3,3,'Japan',27,14,17,58,5),(4,4,'Great Britain',22,21,22,65,4),(5,5,'ROC',20,28,23,71,3),(6,6,'Australia',17,7,22,46,6),(7,7,'Netherlands',10,12,14,36,9),(8,8,'France',10,12,11,33,10),(9,9,'Germany',10,11,16,37,8),(10,10,'Italy',10,10,20,40,7),(11,11,'Canada',7,6,11,24,11),(12,12,'Brazil',7,6,8,21,12),(13,13,'New Zealand',7,6,7,20,13),(14,14,'Cuba',7,3,5,15,18),(15,15,'Hungary',6,7,7,20,13),(16,16,'Republic of Korea',6,4,10,20,13),(17,17,'Poland',4,5,5,14,19),(18,18,'Czech Republic',4,4,3,11,23),(19,19,'Kenya',4,4,2,10,25),(20,20,'Norway',4,2,2,8,29),(21,21,'Jamaica',4,1,4,9,26),(22,22,'Spain',3,8,6,17,17),(23,23,'Sweden',3,6,0,9,26),(24,24,'Switzerland',3,4,6,13,20),(25,25,'Denmark',3,4,4,11,23),(26,26,'Croatia',3,3,2,8,29),(27,27,'Islamic Republic of Iran',3,2,2,7,33),(28,28,'Serbia',3,1,5,9,26),(29,29,'Belgium',3,1,3,7,33),(30,30,'Bulgaria',3,1,2,6,39),(31,31,'Slovenia',3,1,1,5,42),(32,32,'Uzbekistan',3,0,2,5,42),(33,33,'Georgia',2,5,1,8,29),(34,34,'Chinese Taipei',2,4,6,12,22),(35,35,'Turkey',2,2,9,13,20),(36,36,'Greece',2,1,1,4,47),(37,36,'Uganda',2,1,1,4,47),(38,38,'Ecuador',2,1,0,3,60),(39,39,'Ireland',2,0,2,4,47),(40,39,'Israel',2,0,2,4,47),(41,41,'Qatar',2,0,1,3,60),(42,42,'Bahamas',2,0,0,2,66),(43,42,'Kosovo',2,0,0,2,66),(44,44,'Ukraine',1,6,12,19,16),(45,45,'Belarus',1,3,3,7,33),(46,46,'Romania',1,3,0,4,47),(47,46,'Venezuela',1,3,0,4,47),(48,48,'India',1,2,4,7,33),(49,49,'Hong Kong, China',1,2,3,6,39),(50,50,'Philippines',1,2,1,4,47),(51,50,'Slovakia',1,2,1,4,47),(52,52,'South Africa',1,2,0,3,60),(53,53,'Austria',1,1,5,7,33),(54,54,'Egypt',1,1,4,6,39),(55,55,'Indonesia',1,1,3,5,42),(56,56,'Ethiopia',1,1,2,4,47),(57,56,'Portugal',1,1,2,4,47),(58,58,'Tunisia',1,1,0,2,66),(59,59,'Estonia',1,0,1,2,66),(60,59,'Fiji',1,0,1,2,66),(61,59,'Latvia',1,0,1,2,66),(62,59,'Thailand',1,0,1,2,66),(63,63,'Bermuda',1,0,0,1,77),(64,63,'Morocco',1,0,0,1,77),(65,63,'Puerto Rico',1,0,0,1,77),(66,66,'Colombia',0,4,1,5,42),(67,67,'Azerbaijan',0,3,4,7,33),(68,68,'Dominican Republic',0,3,2,5,42),(69,69,'Armenia',0,2,2,4,47),(70,70,'Kyrgyzstan',0,2,1,3,60),(71,71,'Mongolia',0,1,3,4,47),(72,72,'Argentina',0,1,2,3,60),(73,72,'San Marino',0,1,2,3,60),(74,74,'Jordan',0,1,1,2,66),(75,74,'Malaysia',0,1,1,2,66),(76,74,'Nigeria',0,1,1,2,66),(77,77,'Bahrain',0,1,0,1,77),(78,77,'Saudi Arabia',0,1,0,1,77),(79,77,'Lithuania',0,1,0,1,77),(80,77,'North Macedonia',0,1,0,1,77),(81,77,'Namibia',0,1,0,1,77),(82,77,'Turkmenistan',0,1,0,1,77),(83,83,'Kazakhstan',0,0,8,8,29),(84,84,'Mexico',0,0,4,4,47),(85,85,'Finland',0,0,2,2,66),(86,86,'Botswana',0,0,1,1,77),(87,86,'Burkina Faso',0,0,1,1,77),(88,86,'Côte d\'Ivoire',0,0,1,1,77),(89,86,'Ghana',0,0,1,1,77),(90,86,'Grenada',0,0,1,1,77),(91,86,'Kuwait',0,0,1,1,77),(92,86,'Republic of Moldova',0,0,1,1,77),(93,86,'Syrian Arab Republic',0,0,1,1,77);
/*!40000 ALTER TABLE `tb_medals` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10 14:59:48
