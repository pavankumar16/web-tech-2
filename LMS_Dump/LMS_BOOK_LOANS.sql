-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: LMS
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `BOOK_LOANS`
--

DROP TABLE IF EXISTS `BOOK_LOANS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `BOOK_LOANS` (
  `Loan_id` int unsigned NOT NULL AUTO_INCREMENT,
  `Isbn` varchar(10) DEFAULT NULL,
  `Card_id` varchar(10) DEFAULT NULL,
  `Date_out` datetime DEFAULT NULL,
  `Due_date` datetime DEFAULT NULL,
  `Date_in` datetime DEFAULT NULL,
  PRIMARY KEY (`Loan_id`),
  KEY `Isbn` (`Isbn`),
  KEY `Card_id` (`Card_id`),
  CONSTRAINT `book_loans_ibfk_1` FOREIGN KEY (`Isbn`) REFERENCES `BOOK` (`Isbn`),
  CONSTRAINT `book_loans_ibfk_2` FOREIGN KEY (`Card_id`) REFERENCES `BORROWER` (`Card_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOK_LOANS`
--

LOCK TABLES `BOOK_LOANS` WRITE;
/*!40000 ALTER TABLE `BOOK_LOANS` DISABLE KEYS */;
INSERT INTO `BOOK_LOANS` VALUES (1,'446310492','ID000001','2020-04-14 00:00:00','2020-04-28 00:00:00','2020-04-14 00:00:00'),(2,'446310786','ID000004','2020-04-14 00:00:00','2020-04-28 00:00:00','2020-04-14 00:00:00'),(3,'435120964','ID001001','2020-04-14 00:00:00','2020-04-28 00:00:00','2020-04-15 00:00:00'),(4,'446310492','ID001001','2020-04-14 00:00:00','2020-04-14 00:00:00','2020-04-15 00:00:00'),(5,'446310786','ID001001','2020-04-14 00:00:00','2020-03-31 00:00:00','2020-04-15 00:00:00'),(6,'439568366','ID001001','2020-04-15 00:00:00','2020-04-29 00:00:00','2020-04-15 00:00:00'),(15,'067142095X','ID001001','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(21,'60812508','ID000001','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(22,'140132155','ID000001','2020-04-16 00:00:00','2020-04-30 00:00:00',NULL),(23,'312243111','ID000001','2020-04-16 00:00:00','2020-04-30 00:00:00',NULL),(24,'375701966','ID000001','2020-04-16 00:00:00','2020-04-30 00:00:00',NULL),(25,'446310492','ID001001','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(26,'446310786','ID001000','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(28,'553272934','ID001001','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(29,'006104055X','ID001001','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(30,'60812508','ID001002','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(31,'312979479','ID001001','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(32,'039607412X','ID001001','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(33,'042506803X','ID001001','2020-03-27 00:00:00','2020-04-10 00:00:00','2020-04-16 00:00:00'),(34,'60812508','ID001001','2020-03-22 00:00:00','2020-04-05 00:00:00','2020-04-16 00:00:00'),(35,'039607412X','ID001002','2020-04-16 00:00:00','2020-04-30 00:00:00',NULL),(36,'446310492','ID001003','2020-04-16 00:00:00','2020-04-30 00:00:00','2020-04-16 00:00:00'),(37,'067142095X','ID001003','2020-04-16 00:00:00','2020-04-30 00:00:00',NULL),(38,'671542125','ID001003','2020-04-16 00:00:00','2020-04-30 00:00:00',NULL),(39,'804111626','ID001003','2020-04-16 00:00:00','2020-04-30 00:00:00',NULL),(40,'067170091X','ID001002','2020-03-22 00:00:00','2020-04-05 00:00:00','2020-04-16 00:00:00'),(41,'312979479','ID001004','2020-03-22 00:00:00','2020-04-05 00:00:00','2020-04-16 00:00:00'),(42,'006008829X','ID001001','2020-03-22 00:00:00','2020-04-05 00:00:00','2020-05-12 00:00:00'),(43,'006019491X','ID001001','2020-03-22 00:00:00','2020-04-05 00:00:00','2020-05-12 00:00:00');
/*!40000 ALTER TABLE `BOOK_LOANS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-12  1:33:57
