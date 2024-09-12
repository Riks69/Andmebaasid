-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: rarju
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL,
  `studentid` bigint DEFAULT NULL,
  `commentid` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `studentid` (`studentid`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `student` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (12446,23291,'sigma oled 1'),(45645,2354234,'nigma oled 4'),(456456,2398291,'pigma oled 5'),(564574,2134234,'ligma oled 2'),(6546456,213465234,'naist tahan pliis'),(6546546,2320091,'figma oled 3');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stgroup`
--

DROP TABLE IF EXISTS `stgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stgroup` (
  `code` varchar(8) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stgroup`
--

LOCK TABLES `stgroup` WRITE;
/*!40000 ALTER TABLE `stgroup` DISABLE KEYS */;
INSERT INTO `stgroup` VALUES ('SA-24','Telekommunikatsioon(??)'),('TA-23A','Tarkvaraarendus (eesti)'),('TA-23B','Tarkvaraaendus (vene)');
/*!40000 ALTER TABLE `stgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` bigint NOT NULL,
  `firstname` varchar(256) DEFAULT NULL,
  `lastname` varchar(256) DEFAULT NULL,
  `groupcode` varchar(8) DEFAULT NULL,
  `birthdate` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupcode` (`groupcode`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`groupcode`) REFERENCES `stgroup` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (23291,'Andreas','Pilv','TA-23A',NULL),(2134234,'Peeter','Peer',NULL,NULL),(2320091,'Andrea','Pilv','TA-23A',NULL),(2354234,'Margus','Junn',NULL,NULL),(2365291,'Andras','Pilv','TA-23A',NULL),(2398291,'Andreas','Plv','TA-23A',NULL),(2432891,'Andreas','Pilv',NULL,NULL),(23556234,'Mcus','nn','TA-23A',NULL),(213344234,'Petr','Peer','TA-23A',NULL),(213423124,'Peter','Peer','TA-23A',NULL),(213465234,'Peter','Per','TA-23A',NULL),(2357356234,'Marcus','Junn','TA-23A',NULL),(50603277078,'mihhail','Kassimov',NULL,NULL),(235677356234,'arcus','Junn','TA-23A',NULL),(2302957356234,'Marus','Junn','TA-23A',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 11:08:09
