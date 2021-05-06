-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: ismsdb
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `CandidateId` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Password` varchar(50) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `City` varchar(25) NOT NULL,
  `State` varchar(25) NOT NULL,
  `Pincode` int NOT NULL,
  `ContactNo` varchar(20) NOT NULL,
  `HighestDegree` varchar(50) NOT NULL,
  `YearOfPassing` int NOT NULL,
  `Marks` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Domain` varchar(50) NOT NULL,
  `ExperienceYears` int NOT NULL,
  `History` varchar(200) NOT NULL,
  PRIMARY KEY (`CandidateId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (60,'piyush','choudhary','abcd','22/03/1997','jjn','jhunjhunu','Rajasthan',333001,'9996159273','BTECH',2021,'65','pjhajharia59@gmail.com','PE',5,'No history');
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `degree_masters`
--

DROP TABLE IF EXISTS `degree_masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `degree_masters` (
  `Degree` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `degree_masters`
--

LOCK TABLES `degree_masters` WRITE;
/*!40000 ALTER TABLE `degree_masters` DISABLE KEYS */;
INSERT INTO `degree_masters` VALUES ('BE/BTECH'),('MCA'),('OTHERS');
/*!40000 ALTER TABLE `degree_masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `domain_masters`
--

DROP TABLE IF EXISTS `domain_masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `domain_masters` (
  `Domain_ID` int NOT NULL,
  `Domain_Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Domain_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `domain_masters`
--

LOCK TABLES `domain_masters` WRITE;
/*!40000 ALTER TABLE `domain_masters` DISABLE KEYS */;
INSERT INTO `domain_masters` VALUES (1,'JAVA'),(2,'DOTNET'),(3,'MAINFRAME'),(4,'TESTING'),(5,'ASP-BPI'),(6,'SAP');
/*!40000 ALTER TABLE `domain_masters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeemaster`
--

DROP TABLE IF EXISTS `employeemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeemaster` (
  `employeeId` int DEFAULT NULL,
  `employeeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeemaster`
--

LOCK TABLES `employeemaster` WRITE;
/*!40000 ALTER TABLE `employeemaster` DISABLE KEYS */;
INSERT INTO `employeemaster` VALUES (123456,'SAM'),(123457,'JOHN'),(123458,'SAMUELS'),(123459,'ANDREW'),(123460,'CHRIST');
/*!40000 ALTER TABLE `employeemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interview`
--

DROP TABLE IF EXISTS `interview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interview` (
  `interviewId` int NOT NULL,
  `requireId` int DEFAULT NULL,
  `candidateId` int DEFAULT NULL,
  `candidateRank` varchar(20) DEFAULT NULL,
  `venue` varchar(30) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`interviewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interview`
--

LOCK TABLES `interview` WRITE;
/*!40000 ALTER TABLE `interview` DISABLE KEYS */;
/*!40000 ALTER TABLE `interview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interviewmasters`
--

DROP TABLE IF EXISTS `interviewmasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviewmasters` (
  `venue` varchar(50) DEFAULT NULL,
  `interviewId` int DEFAULT NULL,
  KEY `interviewId` (`interviewId`),
  CONSTRAINT `interviewmasters_ibfk_1` FOREIGN KEY (`interviewId`) REFERENCES `interview` (`interviewId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interviewmasters`
--

LOCK TABLES `interviewmasters` WRITE;
/*!40000 ALTER TABLE `interviewmasters` DISABLE KEYS */;
INSERT INTO `interviewmasters` VALUES ('CHENNAI',NULL),('BANGALORE',NULL),('KOLKATA',NULL),('HYDERABAD',NULL);
/*!40000 ALTER TABLE `interviewmasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observation`
--

DROP TABLE IF EXISTS `observation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `observation` (
  `requirementId` int DEFAULT NULL,
  `interviewId` int DEFAULT NULL,
  `interviewMarks` int DEFAULT NULL,
  `noticePeriod` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observation`
--

LOCK TABLES `observation` WRITE;
/*!40000 ALTER TABLE `observation` DISABLE KEYS */;
/*!40000 ALTER TABLE `observation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prioritymasters`
--

DROP TABLE IF EXISTS `prioritymasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prioritymasters` (
  `priority` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prioritymasters`
--

LOCK TABLES `prioritymasters` WRITE;
/*!40000 ALTER TABLE `prioritymasters` DISABLE KEYS */;
INSERT INTO `prioritymasters` VALUES ('NORMAL'),('MEDIUM'),('HIGH');
/*!40000 ALTER TABLE `prioritymasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requirement`
--

DROP TABLE IF EXISTS `requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirement` (
  `requiredVacancies` varchar(50) DEFAULT NULL,
  `closingDate` varchar(20) DEFAULT NULL,
  `minExperience` int DEFAULT NULL,
  `domain` varchar(20) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `employeeId` int DEFAULT NULL,
  `reqId` int NOT NULL,
  PRIMARY KEY (`reqId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirement`
--

LOCK TABLES `requirement` WRITE;
/*!40000 ALTER TABLE `requirement` DISABLE KEYS */;
INSERT INTO `requirement` VALUES ('4','30-07-2021',5,'PE','medium',123457,1);
/*!40000 ALTER TABLE `requirement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-06 15:47:21
