-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: loaa
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `character`
--

DROP TABLE IF EXISTS `character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character` (
  `character_key` varchar(20) NOT NULL,
  `character_name` varchar(12) NOT NULL,
  `character_level` int NOT NULL,
  `user_expedition_id` varchar(45) NOT NULL,
  PRIMARY KEY (`character_key`,`user_expedition_id`),
  KEY `fk_character_user1_idx` (`user_expedition_id`),
  CONSTRAINT `fk_character_user1` FOREIGN KEY (`user_expedition_id`) REFERENCES `user` (`expedition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character`
--

LOCK TABLES `character` WRITE;
/*!40000 ALTER TABLE `character` DISABLE KEYS */;
INSERT INTO `character` VALUES ('1','보라밑',1472,'1'),('10','슈수수',1370,'1'),('11','열두글자아이디만된다던데',1430,'1'),('2','하나배',1415,'1'),('3','이나배',1415,'1'),('4','삼나배',1415,'1'),('5','네나배',1415,'1'),('6','오나배',1415,'1'),('7','데크딘',1415,'1'),('8','자다바',1490,'1'),('9','보통의',1325,'1');
/*!40000 ALTER TABLE `character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `character_homework`
--

DROP TABLE IF EXISTS `character_homework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_homework` (
  `character_character_key` varchar(20) NOT NULL,
  `homework_homework_id` varchar(30) NOT NULL,
  `is_clear` tinyint(1) NOT NULL,
  PRIMARY KEY (`character_character_key`,`homework_homework_id`),
  KEY `fk_character_homework_homework1_idx` (`homework_homework_id`),
  CONSTRAINT `fk_character_homework_character1` FOREIGN KEY (`character_character_key`) REFERENCES `character` (`character_key`),
  CONSTRAINT `fk_character_homework_homework1` FOREIGN KEY (`homework_homework_id`) REFERENCES `homework` (`homework_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_homework`
--

LOCK TABLES `character_homework` WRITE;
/*!40000 ALTER TABLE `character_homework` DISABLE KEYS */;
/*!40000 ALTER TABLE `character_homework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `homework`
--

DROP TABLE IF EXISTS `homework`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `homework` (
  `homework_id` varchar(30) NOT NULL,
  `homework_name` varchar(30) NOT NULL,
  `start_level` int DEFAULT NULL,
  `is_commander` tinyint(1) NOT NULL COMMENT 'is it commander dungeon ?',
  `limit_gold_level` int DEFAULT NULL,
  `end_level` int DEFAULT NULL,
  `cycle` int NOT NULL COMMENT 'daily, weekly',
  PRIMARY KEY (`homework_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `homework`
--

LOCK TABLES `homework` WRITE;
/*!40000 ALTER TABLE `homework` DISABLE KEYS */;
INSERT INTO `homework` VALUES ('Abyss1325','오레하',1325,0,9999,9999,7),('AbyssLaid1370','아르고스',1370,0,1475,9999,7),('Challange','도가토',0,0,9999,9999,7),('ChaosDungeon','카던',0,0,9999,9999,1),('CommanderLaid1415','발탄',1415,1,9999,9999,7),('CommanderLaid1430','비아키스',1430,1,9999,9999,7),('CommanderLaid1475','쿠크세이튼',1475,1,9999,9999,7),('CommanderLaid1490','아브렐슈드',1490,1,9999,9999,7),('EphonaQuest','에포나',0,0,9999,9999,1),('Guardian','가토',0,0,9999,9999,1),('Guild','길드',0,0,9999,9999,1);
/*!40000 ALTER TABLE `homework` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `expedition_id` varchar(45) NOT NULL,
  PRIMARY KEY (`id`,`expedition_id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `expedition_id_UNIQUE` (`expedition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('violet4795','1q2w3e4r!@','1');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-22 17:28:36
