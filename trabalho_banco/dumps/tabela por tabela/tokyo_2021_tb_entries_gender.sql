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
-- Table structure for table `tb_entries_gender`
--

DROP TABLE IF EXISTS `tb_entries_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_entries_gender` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disciplina` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `female` smallint DEFAULT NULL,
  `male` smallint DEFAULT NULL,
  `total` smallint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_entries_gender`
--

LOCK TABLES `tb_entries_gender` WRITE;
/*!40000 ALTER TABLE `tb_entries_gender` DISABLE KEYS */;
INSERT INTO `tb_entries_gender` VALUES (1,'3x3 Basketball',32,32,64),(2,'Archery',64,64,128),(3,'Artistic Gymnastics',98,98,196),(4,'Artistic Swimming',105,0,105),(5,'Athletics',969,1072,2041),(6,'Badminton',86,87,173),(7,'Baseball/Softball',90,144,234),(8,'Basketball',144,144,288),(9,'Beach Volleyball',48,48,96),(10,'Boxing',102,187,289),(11,'Canoe Slalom',41,41,82),(12,'Canoe Sprint',123,126,249),(13,'Cycling BMX Freestyle',10,9,19),(14,'Cycling BMX Racing',24,24,48),(15,'Cycling Mountain Bike',38,38,76),(16,'Cycling Road',70,131,201),(17,'Cycling Track',90,99,189),(18,'Diving',72,71,143),(19,'Equestrian',73,125,198),(20,'Fencing',107,108,215),(21,'Football',264,344,608),(22,'Golf',60,60,120),(23,'Handball',168,168,336),(24,'Hockey',192,192,384),(25,'Judo',192,201,393),(26,'Karate',40,42,82),(27,'Marathon Swimming',25,25,50),(28,'Modern Pentathlon',36,36,72),(29,'Rhythmic Gymnastics',96,0,96),(30,'Rowing',257,265,522),(31,'Rugby Sevens',146,151,297),(32,'Sailing',175,175,350),(33,'Shooting',178,178,356),(34,'Skateboarding',40,40,80),(35,'Sport Climbing',20,20,40),(36,'Surfing',20,20,40),(37,'Swimming',361,418,779),(38,'Table Tennis',86,86,172),(39,'Taekwondo',65,65,130),(40,'Tennis',94,97,191),(41,'Trampoline Gymnastics',16,16,32),(42,'Triathlon',55,55,110),(43,'Volleyball',144,144,288),(44,'Water Polo',122,146,268),(45,'Weightlifting',98,99,197),(46,'Wrestling',96,193,289);
/*!40000 ALTER TABLE `tb_entries_gender` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10 14:15:48
