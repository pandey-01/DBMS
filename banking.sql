-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: banking
-- ------------------------------------------------------
-- Server version	5.7.42-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `account_no` int(11) NOT NULL,
  `branch_name` varchar(20) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_no`),
  UNIQUE KEY `account_no` (`account_no`),
  UNIQUE KEY `branch_name` (`branch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (201,'Mumbai_Main',150000),(202,'Delhi_Center',120000),(203,'Bangalore_Tech',180000),(204,'Hyderabad_Fin',130000),(205,'Chennai_South',110000),(206,'Kolkata_East',100000),(207,'Pune_West',125000),(208,'Ahmedabad_Hub',95000),(209,'Jaipur_Pink',105000),(210,'Lucknow_Central',90000),(211,'Surat_Trade',85000),(212,'Nagpur_North',80000),(213,'Indore_Metro',75000),(214,'Bhopal_Lake',70000),(215,'Patna_Ganges',65000);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrower` (
  `c_id` int(11) NOT NULL,
  `loan_no` int(11) NOT NULL,
  PRIMARY KEY (`c_id`,`loan_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower`
--

LOCK TABLES `borrower` WRITE;
/*!40000 ALTER TABLE `borrower` DISABLE KEYS */;
INSERT INTO `borrower` VALUES (1,101),(2,102),(3,103),(4,104),(5,105),(6,106),(7,107),(8,108),(9,109),(10,110),(11,111),(12,112),(13,113),(14,114),(15,115);
/*!40000 ALTER TABLE `borrower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `branch` (
  `branch_name` varchar(20) NOT NULL,
  `branch_city` varchar(20) DEFAULT NULL,
  `assets` int(11) DEFAULT NULL,
  PRIMARY KEY (`branch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES ('Ahmedabad_Hub','Ahmedabad',6200000),('Bangalore_Tech','Bangalore',8700000),('Bhopal_Lake','Bhopal',3900000),('Chennai_South','Chennai',8100000),('Delhi_Center','Delhi',9500000),('Hyderabad_Fin','Hyderabad',7600000),('Indore_Metro','Indore',4100000),('Jaipur_Pink','Jaipur',5400000),('Kolkata_East','Kolkata',7300000),('Lucknow_Central','Lucknow',5000000),('Mumbai_Main','Mumbai',12000000),('Nagpur_North','Nagpur',4300000),('Patna_Ganges','Patna',3600000),('Pune_West','Pune',6800000),('Surat_Trade','Surat',4700000),('XYZ','Lucknow',5);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `street` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`c_id`),
  KEY `cust_index` (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Ravi Kumar','MG Road','Mumbai'),(2,'Priya Sharma','Brigade Road','Bangalore'),(3,'Amit Verma','Connaught Place','Delhi'),(4,'Neha Joshi','Banjara Hills','Hyderabad'),(5,'Sanjay Patel','Satellite Rd','Ahmedabad'),(6,'Anita Singh','Anna Salai','Chennai'),(7,'Vikram Mehta','Park Street','Kolkata'),(8,'Pooja Das','Sinhagad Road','Pune'),(9,'Rahul Yadav','MI Road','Jaipur'),(10,'Swati Roy','Hazratganj','Lucknow'),(11,'Karan Bedi','Ring Road','Surat'),(12,'Deepika Iyer','Wardha Road','Nagpur'),(13,'Manoj Thakur','AB Road','Indore'),(14,'Isha Mishra','New Market','Bhopal'),(15,'Arjun Rathi','Fraser Road','Patna');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depositor`
--

DROP TABLE IF EXISTS `depositor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depositor` (
  `c_id` int(11) NOT NULL,
  `account_no` int(11) NOT NULL,
  PRIMARY KEY (`c_id`,`account_no`),
  KEY `depositor_index` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depositor`
--

LOCK TABLES `depositor` WRITE;
/*!40000 ALTER TABLE `depositor` DISABLE KEYS */;
INSERT INTO `depositor` VALUES (1,201),(1,202),(2,202),(2,203),(3,203),(4,204),(5,205),(5,210),(6,206),(7,207),(8,208),(9,209),(10,210),(11,211),(12,212),(13,213),(14,214),(15,215);
/*!40000 ALTER TABLE `depositor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loan` (
  `loan_no` int(11) NOT NULL,
  `branch_name` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`loan_no`),
  KEY `fk_loan_branch` (`branch_name`),
  CONSTRAINT `fk_loan_branch` FOREIGN KEY (`branch_name`) REFERENCES `branch` (`branch_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (101,'Mumbai_Main',500000.00),(102,'Delhi_Center',450000.00),(103,'Bangalore_Tech',600000.00),(104,'Hyderabad_Fin',300000.00),(105,'Chennai_South',400000.00),(106,'Kolkata_East',350000.00),(107,'Pune_West',380000.00),(108,'Ahmedabad_Hub',250000.00),(109,'Jaipur_Pink',270000.00),(110,'Lucknow_Central',320000.00),(111,'Surat_Trade',280000.00),(112,'Nagpur_North',240000.00),(113,'Indore_Metro',210000.00),(114,'Bhopal_Lake',200000.00),(115,'Patna_Ganges',190000.00);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `mumbai_loans`
--

DROP TABLE IF EXISTS `mumbai_loans`;
/*!50001 DROP VIEW IF EXISTS `mumbai_loans`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `mumbai_loans` AS SELECT 
 1 AS `loan_no`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `mumbai_loans`
--

/*!50001 DROP VIEW IF EXISTS `mumbai_loans`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mumbai_loans` AS select `loan`.`loan_no` AS `loan_no` from `loan` where `loan`.`branch_name` in (select `branch`.`branch_name` from `branch` where (`branch`.`branch_city` = 'Mumbai')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-08 15:19:26
