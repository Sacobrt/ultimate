-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 91.134.193.97    Database: srv_1086206_5dP
-- ------------------------------------------------------
-- Server version	5.5.60-0+deb8u1-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bussines`
--

DROP TABLE IF EXISTS `bussines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bussines` (
  `bussines_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_owner_sqlID` int(11) DEFAULT '-1',
  `bOnAuction` tinyint(1) NOT NULL DEFAULT '0',
  `bOwner` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Drzava',
  `b_price` int(11) NOT NULL,
  `b_type` smallint(3) NOT NULL,
  `b_locked` tinyint(4) DEFAULT '0',
  `b_money` int(11) DEFAULT '0',
  `b_enter_x` float NOT NULL,
  `b_enter_y` float NOT NULL,
  `b_enter_z` float NOT NULL,
  `b_exit_x` float DEFAULT '0',
  `b_exit_y` float DEFAULT '0',
  `b_exit_z` float DEFAULT '0',
  `b_enter_int` int(11) DEFAULT '0',
  `b_enter_vw` int(11) DEFAULT '0',
  `b_exit_int` int(11) DEFAULT '0',
  `b_exit_vw` int(11) DEFAULT '0',
  `b_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `b_level` int(11) NOT NULL,
  `b_jobID` smallint(2) DEFAULT '0',
  `b_neaktivnost` int(11) DEFAULT '0',
  `b_facture` int(11) DEFAULT '100',
  PRIMARY KEY (`bussines_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bussines`
--

LOCK TABLES `bussines` WRITE;
/*!40000 ALTER TABLE `bussines` DISABLE KEYS */;
INSERT INTO `bussines` VALUES (2,-1,0,'Drzava',1000000,9,0,0,1390.47,-1279.44,13.62,315.763,-143.661,999.602,0,0,7,2,'Gun Shop',10,0,0,100),(3,-1,0,'Drzava',500000,1,0,0,1296.43,-1424.61,14.953,-30.908,-92.01,1003.55,0,0,18,3,'Prodavnica 24/7',5,0,0,100),(4,-1,0,'Drzava',450000,6,0,0,454.174,-1477.9,30.811,161.41,-96.687,1001.8,0,0,18,4,'Zip',5,0,0,100),(5,-1,0,'Drzava',450000,7,0,0,461.721,-1500.9,31.044,227.343,-8.244,1002.21,0,0,5,5,'Victim',5,0,0,100),(6,-1,0,'Drzava',500000,1,0,0,462.287,-1529.42,29.947,-30.908,-92.01,1003.55,0,0,18,6,'Prodavnica 24/7',5,0,0,100),(8,-1,0,'Drzava',350000,12,0,0,806.022,-1616.59,13.531,-794.85,489.28,1376.19,0,0,1,7,'Veliki Restoran',5,0,0,100),(10,-1,0,'Drzava',500000,1,0,0,1928.71,-1776.68,13.547,-30.908,-92.01,1003.55,0,0,18,8,'Prodavnica 24/7',5,0,0,100),(11,-1,0,'Drzava',200000,14,0,0,1837.04,-1682.38,13.323,-2636.58,1402.79,906.461,0,0,3,9,'Nocni klub',5,0,0,100),(12,-1,0,'Drzava',500000,1,0,0,1831.65,-1842.94,13.584,-30.908,-92.01,1003.55,0,0,18,10,'Prodavnica 24/7',5,0,0,100),(15,-1,0,'Drzava',500000,1,0,0,1315.2,-899.24,39.578,-30.908,-92.01,1003.55,0,0,18,1,'Prodavnica 24/7',5,0,0,100),(16,-1,0,'Drzava',250000,10,0,0,2229.85,-1721.39,13.563,772.359,-5.516,1000.73,0,0,5,11,'Gym',5,0,0,100),(18,-1,0,'Drzava',450000,5,0,0,2244.33,-1665.55,15.477,207.72,-110.546,1005.13,0,0,15,12,'Binco',5,0,0,100),(21,-1,0,'Drzava',200000,15,0,0,2310.05,-1643.51,14.827,493.439,-24.917,1000.67,0,0,17,13,'Diskoteka',5,0,0,100),(22,-1,0,'Drzava',400000,19,0,0,2506.72,-1756.68,13.52,0,0,0,0,0,0,14,'Rent a vehicle',5,0,0,100),(23,-1,0,'Drzava',300000,12,0,0,2354.48,-1511.46,24,460.265,-88.612,999.555,0,0,4,15,'Mali Restoran',5,0,0,100),(24,-1,0,'Drzava',200000,15,0,0,2353.59,-1534,24,493.439,-24.917,1000.67,0,0,17,16,'Diskoteka',5,0,0,100),(25,-1,0,'Drzava',1000000,9,0,0,2101.11,-1359.52,23.984,315.763,-143.661,999.602,0,0,7,17,'Gun Shop',10,0,0,100),(26,-1,0,'Drzava',200000,15,0,0,2095.73,-1211.58,23.963,493.439,-24.917,1000.67,0,0,17,18,'Diskoteka',5,0,0,100),(27,-1,0,'Drzava',450000,8,0,0,2112.83,-1211.46,23.963,203.895,-50.657,1001.8,0,0,1,19,'Suburban',5,0,0,100),(28,-1,0,'Drzava',500000,1,0,0,1830.28,-1172.05,24.266,-30.908,-92.01,1003.55,0,0,18,20,'Prodavnica 24/7',5,0,0,100),(29,-1,0,'Drzava',350000,12,0,0,1791.74,-1163.09,23.828,-794.85,489.28,1376.19,0,0,1,21,'Veliki Restoran',5,0,0,100),(30,-1,0,'Drzava',1500000,22,0,0,1629.87,-1171.24,24.078,1630.9,-1176.34,1025.58,0,0,6,22,'Kladionica',5,0,0,100),(31,-1,0,'Drzava',450000,6,0,0,1457.14,-1137,23.942,161.41,-96.687,1001.8,0,0,18,23,'Zip',5,0,0,100),(32,-1,0,'Drzava',550000,16,0,0,1411.73,-1699.88,13.539,1031.73,2662.57,-46.5,0,0,0,24,'Electronic Shop',5,0,0,100),(33,-1,0,'Drzava',1500000,22,0,0,1295.84,-1862.11,13.547,1630.9,-1176.34,1025.58,0,0,6,25,'Kladionica',5,0,0,100),(34,-1,0,'Drzava',1000000,30,0,10000,1290.84,-1161.25,23.961,1141.8,-50.702,996.521,0,0,3,26,'Casino',5,0,0,100),(35,-1,0,'Drzava',450000,6,0,0,499.64,-1360.52,16.358,161.41,-96.687,1001.8,0,0,18,27,'Zip',5,0,0,100),(36,-1,0,'Drzava',1500000,21,0,3750,1382.15,-1088.74,28.21,-2385.03,999.637,-20.535,0,0,6,0,'Javna Kuca',5,0,0,100),(37,-1,0,'Drzava',300000,12,0,0,279.53,-1435.29,13.973,460.265,-88.612,999.555,0,0,4,29,'Mali Restoran',5,0,0,100),(39,-1,0,'Drzava',750000,20,0,0,1000.43,-920.004,42.328,-27.366,-58.069,1003.55,0,0,6,30,'Pumpa',5,0,0,100);
/*!40000 ALTER TABLE `bussines` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14 11:03:17
