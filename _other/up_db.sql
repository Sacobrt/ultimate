-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: up_db
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `_anticheat`
--

DROP TABLE IF EXISTS `_anticheat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_anticheat` (
  `acSQLID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `WeaponHRezimRada` tinyint(1) NOT NULL DEFAULT '1',
  `TeleportHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `HealthHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `SpeedHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `JetPackHRezimRada` tinyint(1) NOT NULL DEFAULT '1',
  `MoneyHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `FlyHRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `TuningHRezimRada` tinyint(1) NOT NULL DEFAULT '1',
  `VehRepRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `VehTrollRezimRada` tinyint(1) NOT NULL DEFAULT '0',
  `antiWeaponH` tinyint(1) NOT NULL DEFAULT '1',
  `antiTeleportH` tinyint(1) NOT NULL DEFAULT '1',
  `antiHealthH` tinyint(1) NOT NULL DEFAULT '1',
  `antiArmourH` tinyint(1) NOT NULL DEFAULT '1',
  `antiSpeedH` tinyint(1) NOT NULL DEFAULT '1',
  `antiJetPackH` tinyint(1) NOT NULL DEFAULT '1',
  `antiMoneyH` tinyint(1) NOT NULL DEFAULT '1',
  `antiFlyH` tinyint(1) NOT NULL DEFAULT '1',
  `antiTuningH` tinyint(1) NOT NULL DEFAULT '1',
  `antiVehRepair` tinyint(1) NOT NULL DEFAULT '1',
  `antiVehTroll` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`acSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_anticheat`
--

LOCK TABLES `_anticheat` WRITE;
/*!40000 ALTER TABLE `_anticheat` DISABLE KEYS */;
INSERT INTO `_anticheat` VALUES (1,1,0,0,0,1,0,0,1,0,0,1,1,1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `_anticheat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `_stats`
--

DROP TABLE IF EXISTS `_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `_stats` (
  `ssSQLID` tinyint(1) NOT NULL AUTO_INCREMENT,
  `RegistrovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `BanovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `KikovanihKorisnika` mediumint(9) NOT NULL DEFAULT '0',
  `BrojWarnova` mediumint(9) NOT NULL DEFAULT '0',
  `BrojPosetaServeru` mediumint(9) NOT NULL DEFAULT '0',
  `HappyHours` tinyint(1) NOT NULL DEFAULT '0',
  `HappyHoursLvl` tinyint(2) NOT NULL DEFAULT '0',
  `HappyJobs` tinyint(1) NOT NULL DEFAULT '0',
  `PocetniLevel` tinyint(1) NOT NULL DEFAULT '1',
  `PocetniNovaca` mediumint(9) NOT NULL DEFAULT '35000',
  `BankaNovac` mediumint(7) NOT NULL DEFAULT '0',
  `KupovinaVozila` tinyint(4) NOT NULL DEFAULT '1',
  `Report` tinyint(1) NOT NULL DEFAULT '1',
  `Pitanja` tinyint(1) NOT NULL DEFAULT '1',
  `RekordServera` smallint(5) NOT NULL DEFAULT '0',
  `Oglasi` tinyint(1) NOT NULL DEFAULT '1',
  `Registracija` tinyint(1) NOT NULL DEFAULT '1',
  `ReactTime` mediumint(9) NOT NULL DEFAULT '7500',
  `ReactName` varchar(25) NOT NULL DEFAULT 'No-one',
  PRIMARY KEY (`ssSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_stats`
--

LOCK TABLES `_stats` WRITE;
/*!40000 ALTER TABLE `_stats` DISABLE KEYS */;
INSERT INTO `_stats` VALUES (1,2,0,0,0,184,2,10,3,1,50000,50000,1,1,1,2,1,1,7500,'No-one');
/*!40000 ALTER TABLE `_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atms`
--

DROP TABLE IF EXISTS `atms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `atms` (
  `atmSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `atmPos1` float NOT NULL,
  `atmPos2` float NOT NULL,
  `atmPos3` float NOT NULL,
  `atmPos4` float NOT NULL,
  `atmPos5` float NOT NULL,
  `atmPos6` float NOT NULL,
  `atmPreseceneZice` tinyint(1) NOT NULL DEFAULT '0',
  `atmProbijenBios` tinyint(1) NOT NULL DEFAULT '0',
  `atmVremeDoRoba` tinyint(1) NOT NULL DEFAULT '0',
  `atmExists` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`atmSQLID`),
  UNIQUE KEY `atmSQLID` (`atmSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atms`
--

LOCK TABLES `atms` WRITE;
/*!40000 ALTER TABLE `atms` DISABLE KEYS */;
/*!40000 ALTER TABLE `atms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banned`
--

DROP TABLE IF EXISTS `banned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `banned` (
  `ban_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `ban_type` smallint(1) DEFAULT NULL,
  `ban_time` int(11) DEFAULT NULL,
  `ban_reason` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_admin` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ban_date` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_name` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ban_id`),
  UNIQUE KEY `ban_id` (`ban_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banned`
--

LOCK TABLES `banned` WRITE;
/*!40000 ALTER TABLE `banned` DISABLE KEYS */;
/*!40000 ALTER TABLE `banned` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `containers`
--

DROP TABLE IF EXISTS `containers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `containers` (
  `koSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `koObjPos1` float NOT NULL,
  `koObjPos2` float NOT NULL,
  `koObjPos3` float NOT NULL,
  `koObjRot1` float NOT NULL,
  `koObjRot2` float NOT NULL,
  `koObjRot3` float NOT NULL,
  PRIMARY KEY (`koSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `containers`
--

LOCK TABLES `containers` WRITE;
/*!40000 ALTER TABLE `containers` DISABLE KEYS */;
/*!40000 ALTER TABLE `containers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fields` (
  `fieldSQLID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `fieldOwnerSQLID` int(11) NOT NULL,
  `fieldOwned` tinyint(1) NOT NULL DEFAULT '0',
  `fieldOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `fieldPrice` int(11) NOT NULL,
  `fieldLevel` smallint(6) NOT NULL,
  `fieldMaxX` float NOT NULL,
  `fieldMinX` float NOT NULL,
  `fieldMaxY` float NOT NULL,
  `fieldMinY` float NOT NULL,
  `fieldStalkNumber` tinyint(2) NOT NULL,
  `fieldObjectPos1` float NOT NULL,
  `fieldObjectPos2` float NOT NULL,
  `fieldObjectPos3` float NOT NULL,
  `fieldObjectPos4` float NOT NULL,
  `fieldObjectPos5` float NOT NULL,
  `fieldObjectPos6` float NOT NULL,
  PRIMARY KEY (`fieldSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields`
--

LOCK TABLES `fields` WRITE;
/*!40000 ALTER TABLE `fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fields_stalks`
--

DROP TABLE IF EXISTS `fields_stalks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fields_stalks` (
  `sSQLID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `sfieldID` mediumint(9) NOT NULL,
  `sPos1` float NOT NULL,
  `sPos2` float NOT NULL,
  `sPos3` float NOT NULL,
  `sPlanted` tinyint(1) NOT NULL DEFAULT '1',
  `sGrow` tinyint(1) NOT NULL DEFAULT '0',
  `sMinut` tinyint(2) NOT NULL,
  `sHour` tinyint(2) NOT NULL,
  PRIMARY KEY (`sSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fields_stalks`
--

LOCK TABLES `fields_stalks` WRITE;
/*!40000 ALTER TABLE `fields_stalks` DISABLE KEYS */;
/*!40000 ALTER TABLE `fields_stalks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fuel_stations`
--

DROP TABLE IF EXISTS `fuel_stations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fuel_stations` (
  `fsSQLID` int(11) NOT NULL AUTO_INCREMENT,
  `fsPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `fsBussinesID` mediumint(9) NOT NULL,
  `fsName` varchar(50) NOT NULL,
  `fsFuelL` smallint(6) NOT NULL DEFAULT '50',
  `fsFuelPrice` tinyint(2) NOT NULL,
  `fsPos1` float NOT NULL,
  `fsPos2` float NOT NULL,
  `fsPos3` float NOT NULL,
  `fsTruckID` mediumint(9) NOT NULL DEFAULT '-1',
  `fsCisternID` mediumint(9) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`fsSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fuel_stations`
--

LOCK TABLES `fuel_stations` WRITE;
/*!40000 ALTER TABLE `fuel_stations` DISABLE KEYS */;
/*!40000 ALTER TABLE `fuel_stations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gangzones`
--

DROP TABLE IF EXISTS `gangzones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gangzones` (
  `gzone_id` int(11) NOT NULL AUTO_INCREMENT,
  `taken` tinyint(4) DEFAULT NULL,
  `takeable` tinyint(4) DEFAULT NULL,
  `gang_id` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `gz_radius` smallint(3) NOT NULL DEFAULT '100',
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL,
  PRIMARY KEY (`gzone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangzones`
--

LOCK TABLES `gangzones` WRITE;
/*!40000 ALTER TABLE `gangzones` DISABLE KEYS */;
/*!40000 ALTER TABLE `gangzones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `garages`
--

DROP TABLE IF EXISTS `garages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `garages` (
  `garage_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT '-1',
  `g_property` int(11) DEFAULT '0',
  `g_price` int(11) NOT NULL,
  `g_level` int(11) NOT NULL,
  `g_locked` tinyint(4) DEFAULT '0',
  `garage_pos_x` float NOT NULL,
  `garage_pos_y` float NOT NULL,
  `garage_pos_z` float NOT NULL,
  `garage_vehicle_pos_x` float NOT NULL,
  `garage_vehicle_pos_y` float NOT NULL,
  `garage_vehicle_pos_z` float NOT NULL,
  `garage_vehicle_pos_a` float NOT NULL,
  `g_vw` int(11) NOT NULL,
  `g_type` int(11) DEFAULT '0',
  PRIMARY KEY (`garage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `garages`
--

LOCK TABLES `garages` WRITE;
/*!40000 ALTER TABLE `garages` DISABLE KEYS */;
/*!40000 ALTER TABLE `garages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gates`
--

DROP TABLE IF EXISTS `gates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gates` (
  `gateid` int(11) NOT NULL AUTO_INCREMENT,
  `gateowner` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gatemodel` int(11) NOT NULL,
  `gatefor` int(11) NOT NULL,
  `gateorg` int(11) DEFAULT NULL,
  `gatespeed` float NOT NULL,
  `gateradius` float NOT NULL,
  `gatetime` int(11) NOT NULL,
  `gatepos_1` float NOT NULL,
  `gatepos_2` float NOT NULL,
  `gatepos_3` float NOT NULL,
  `gatepos_4` float NOT NULL,
  `gatepos_5` float NOT NULL,
  `gatepos_6` float NOT NULL,
  `gateint` int(11) DEFAULT NULL,
  `gatevw` int(11) DEFAULT NULL,
  `gatemove_1` float NOT NULL,
  `gatemove_2` float NOT NULL,
  `gatemove_3` float NOT NULL,
  `gatemove_4` float NOT NULL,
  `gatemove_5` float NOT NULL,
  `gatemove_6` float NOT NULL,
  PRIMARY KEY (`gateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gates`
--

LOCK TABLES `gates` WRITE;
/*!40000 ALTER TABLE `gates` DISABLE KEYS */;
/*!40000 ALTER TABLE `gates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gps`
--

DROP TABLE IF EXISTS `gps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `gps` (
  `gpsSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `gpsName` varchar(50) NOT NULL,
  `gpsPos1` float NOT NULL,
  `gpsPos2` float NOT NULL,
  `gpsPos3` float NOT NULL,
  PRIMARY KEY (`gpsSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gps`
--

LOCK TABLES `gps` WRITE;
/*!40000 ALTER TABLE `gps` DISABLE KEYS */;
/*!40000 ALTER TABLE `gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_skills`
--

DROP TABLE IF EXISTS `job_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `job_skills` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `skill_mehanicar` tinyint(3) DEFAULT '1',
  `skill_advokat` tinyint(3) DEFAULT '1',
  `skill_pilot` tinyint(3) DEFAULT '1',
  `skill_rudar` tinyint(3) DEFAULT '1',
  `skill_pnovca` tinyint(3) DEFAULT '1',
  `skill_uber` tinyint(3) DEFAULT '1',
  `skill_pnamjestaja` tinyint(3) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_skills`
--

LOCK TABLES `job_skills` WRITE;
/*!40000 ALTER TABLE `job_skills` DISABLE KEYS */;
INSERT INTO `job_skills` VALUES (1,1,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `job_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_members`
--

DROP TABLE IF EXISTS `org_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `org_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `memb_rank` smallint(1) NOT NULL,
  `memb_type` smallint(1) NOT NULL DEFAULT '0',
  `memb_sqlID` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_members`
--

LOCK TABLES `org_members` WRITE;
/*!40000 ALTER TABLE `org_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `org_ports`
--

DROP TABLE IF EXISTS `org_ports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `org_ports` (
  `port_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_id` int(11) NOT NULL,
  `pos_1_x` float NOT NULL,
  `pos_1_y` float NOT NULL,
  `pos_1_z` float NOT NULL,
  `int_1` int(11) DEFAULT '0',
  `vw_1` int(11) DEFAULT '0',
  `pos_2_x` float NOT NULL,
  `pos_2_y` float NOT NULL,
  `pos_2_z` float NOT NULL,
  `int_2` int(11) DEFAULT '0',
  `vw_2` int(11) DEFAULT '0',
  PRIMARY KEY (`port_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `org_ports`
--

LOCK TABLES `org_ports` WRITE;
/*!40000 ALTER TABLE `org_ports` DISABLE KEYS */;
/*!40000 ALTER TABLE `org_ports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizations`
--

DROP TABLE IF EXISTS `organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `organizations` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `prefix` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(24) CHARACTER SET utf8 DEFAULT NULL,
  `type` int(11) NOT NULL,
  `suspended` tinyint(4) DEFAULT '0',
  `max_members` smallint(2) DEFAULT '30',
  `male_skin_1` smallint(3) NOT NULL,
  `male_skin_2` smallint(3) NOT NULL,
  `male_skin_3` smallint(3) NOT NULL,
  `male_skin_4` smallint(3) NOT NULL,
  `male_skin_5` smallint(3) NOT NULL,
  `male_skin_6` smallint(3) NOT NULL,
  `female_skin_1` smallint(3) NOT NULL,
  `female_skin_2` smallint(3) NOT NULL,
  `female_skin_3` smallint(3) NOT NULL,
  `female_skin_4` smallint(3) NOT NULL,
  `female_skin_5` smallint(3) NOT NULL,
  `female_skin_6` smallint(3) NOT NULL,
  `rank_1` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_2` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_3` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_4` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_5` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `rank_6` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `enter_pos_x` float NOT NULL,
  `enter_pos_y` float NOT NULL,
  `enter_pos_z` float NOT NULL,
  `exit_pos_x` float NOT NULL,
  `exit_pos_y` float NOT NULL,
  `exit_pos_z` float NOT NULL,
  `interior` int(11) DEFAULT '0',
  `virtualw` int(11) DEFAULT '0',
  `spawn_point_x` float DEFAULT '0',
  `spawn_point_y` float DEFAULT '0',
  `spawn_point_z` float DEFAULT '0',
  `oDilerX` float NOT NULL DEFAULT '0',
  `oDilerY` float NOT NULL DEFAULT '0',
  `oDilerZ` float NOT NULL DEFAULT '0',
  `oDilerA` float NOT NULL DEFAULT '0',
  `oDilerCena` smallint(6) NOT NULL DEFAULT '500',
  `oDilerRadi` tinyint(1) NOT NULL DEFAULT '0',
  `duty_point_pos_x` float DEFAULT '0',
  `duty_point_pos_y` float DEFAULT '0',
  `duty_point_pos_z` float DEFAULT '0',
  `duty_point_int` smallint(6) DEFAULT '0',
  `duty_point_vw` smallint(6) DEFAULT '0',
  `equip_point_pos_x` float DEFAULT '0',
  `equip_point_pos_y` float DEFAULT '0',
  `equip_point_pos_z` float DEFAULT '0',
  `equip_point_int` smallint(6) DEFAULT '0',
  `equip_point_vw` smallint(6) DEFAULT '0',
  `savez` smallint(6) DEFAULT '-1',
  `safe_pos_x` float DEFAULT '0',
  `safe_pos_y` float DEFAULT '0',
  `safe_pos_z` float DEFAULT '0',
  `safe_money` int(11) DEFAULT '0',
  `safe_drug_amount` smallint(6) DEFAULT '0',
  `safe_mats` int(11) NOT NULL DEFAULT '0',
  `ent_bussines` smallint(6) DEFAULT '0',
  `owned_business` smallint(6) DEFAULT '0',
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'Los Sanatos Police Deparment','LSPD',NULL,1,0,50,280,281,282,302,310,283,307,307,307,307,307,309,'Cadet','Officer','Sergeant','','Commander','Chief',1558.39,-1669.94,13.603,246.784,63.9,1003.64,6,1,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(2,'Federal Bureau of Investigation','FBI',NULL,1,0,40,165,165,166,163,164,286,306,306,306,306,306,306,'Agent','Agent II','Agent III','Chief','Deputy','Director',1219.23,-1811.71,16.594,246.784,63.9,1003.64,6,2,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(3,'Black Dragon Triads','BDT',NULL,3,0,50,117,117,118,112,111,120,169,169,169,169,169,169,'Ordinary','','Dragon II','Enforcer','Deputy','Dragon',1259.64,-785.43,92.03,93.926,643.12,1392.06,6,3,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(4,'Grove Street Family','GSF',NULL,2,0,50,105,107,106,269,270,271,195,195,195,195,195,195,'Soulja','Thug','Homeboy','Gangsta','Origianal','Top O.G',2495.41,-1691.14,14.766,2258.06,-1080.92,1048.97,6,4,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(5,'Ballas Family','Ball',NULL,2,0,50,103,102,104,290,293,296,13,13,13,13,13,13,'Thug','Solider','','Warlord','','Top O.G',1912.62,-1070.64,24.237,2258.06,-1080.92,1048.97,6,5,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(6,'The Elitez Mafia','LSV',NULL,2,0,50,108,108,109,110,293,292,13,13,13,13,13,13,'Novato','Soldato','Capo','Sottocapo','Diestra','Donn',2385.34,-1892.35,13.939,93.926,643.12,1392.06,6,6,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(7,'La Cosa Nostra','LCN',NULL,3,0,50,125,127,126,111,124,113,216,216,216,216,216,216,'','Soliders','Consig','Underboss','Boss','Godfather',1122.91,-2036.76,69.893,93.926,643.12,1392.06,6,7,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(8,'Yakuza','Yaku',NULL,3,0,50,121,121,122,123,208,294,224,224,224,225,225,225,'','','','','','',1317.77,-2637.7,17.547,93.926,643.12,1392.06,6,8,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(9,'Russian Mafia','RM',NULL,3,0,50,112,112,127,123,111,272,216,216,216,216,216,216,'','Sovyak','Brodyaga','Brigadier','Sovietnik','Pakhan',1566.96,201.428,35.725,93.926,643.12,1392.06,6,9,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(11,'Los Santos Vagos','LV',NULL,2,0,50,108,108,109,110,293,292,65,65,65,65,65,65,'Lil Ese','Soldado','Hermano','Corner','El Padre','El Jefe',2279.28,-1916.92,14.136,2258.06,-1080.92,1048.97,6,10,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(12,'The Escobar Cartel','TEC',NULL,3,0,50,1,2,3,4,5,6,224,224,224,224,224,224,'Solider','Capo','Consiglie','Mafioso','Vendetta','Godfather',1423.53,-1045.07,23.828,93.926,643.12,1392.06,6,11,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parkings`
--

DROP TABLE IF EXISTS `parkings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `parkings` (
  `parkSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `parkPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `parkObjectPos1` float NOT NULL,
  `parkObjectPos2` float NOT NULL,
  `parkObjectPos3` float NOT NULL,
  `parkObjectPos4` float NOT NULL,
  `parkObjectPos5` float NOT NULL,
  `parkObjectPos6` float NOT NULL,
  `parkInt` int(11) NOT NULL,
  `parkVW` int(11) NOT NULL,
  `parkMaxX` float NOT NULL,
  `parkMinX` float NOT NULL,
  `parkMaxY` float NOT NULL,
  `parkMinY` float NOT NULL,
  `parkPickup_1_Pos1` float NOT NULL,
  `parkPickup_1_Pos2` float NOT NULL,
  `parkPickup_1_Pos3` float NOT NULL,
  `parkPickup_2_Pos1` float NOT NULL,
  `parkPickup_2_Pos2` float NOT NULL,
  `parkPickup_2_Pos3` float NOT NULL,
  `parkMaxParkPlaces` tinyint(2) NOT NULL,
  `parkPlace_X0` float NOT NULL,
  `parkPlace_Y0` float NOT NULL,
  `parkPlace_Z0` float NOT NULL,
  `parkPlace_A0` float NOT NULL,
  `parkPlace_X1` float NOT NULL,
  `parkPlace_Y1` float NOT NULL,
  `parkPlace_Z1` float NOT NULL,
  `parkPlace_A1` float NOT NULL,
  `parkPlace_X2` float NOT NULL,
  `parkPlace_Y2` float NOT NULL,
  `parkPlace_Z2` float NOT NULL,
  `parkPlace_A2` float NOT NULL,
  `parkPlace_X3` float NOT NULL,
  `parkPlace_Y3` float NOT NULL,
  `parkPlace_Z3` float NOT NULL,
  `parkPlace_A3` float NOT NULL,
  `parkPlace_X4` float NOT NULL,
  `parkPlace_Y4` float NOT NULL,
  `parkPlace_Z4` float NOT NULL,
  `parkPlace_A4` float NOT NULL,
  `parkPlace_X5` float NOT NULL,
  `parkPlace_Y5` float NOT NULL,
  `parkPlace_Z5` float NOT NULL,
  `parkPlace_A5` float NOT NULL,
  `parkPlace_X6` float NOT NULL,
  `parkPlace_Y6` float NOT NULL,
  `parkPlace_Z6` float NOT NULL,
  `parkPlace_A6` float NOT NULL,
  `parkPlace_X7` float NOT NULL,
  `parkPlace_Y7` float NOT NULL,
  `parkPlace_Z7` float NOT NULL,
  `parkPlace_A7` float NOT NULL,
  `parkPlace_X8` float NOT NULL,
  `parkPlace_Y8` float NOT NULL,
  `parkPlace_Z8` float NOT NULL,
  `parkPlace_A8` float NOT NULL,
  `parkPlace_X9` float NOT NULL,
  `parkPlace_Y9` float NOT NULL,
  `parkPlace_Z9` float NOT NULL,
  `parkPlace_A9` float NOT NULL,
  `parkPlace_X10` float NOT NULL,
  `parkPlace_Y10` float NOT NULL,
  `parkPlace_Z10` float NOT NULL,
  `parkPlace_A10` float NOT NULL,
  `parkPlace_X11` float NOT NULL,
  `parkPlace_Y11` float NOT NULL,
  `parkPlace_Z11` float NOT NULL,
  `parkPlace_A11` float NOT NULL,
  `parkPlace_X12` float NOT NULL,
  `parkPlace_Y12` float NOT NULL,
  `parkPlace_Z12` float NOT NULL,
  `parkPlace_A12` float NOT NULL,
  `parkPlace_X13` float NOT NULL,
  `parkPlace_Y13` float NOT NULL,
  `parkPlace_Z13` float NOT NULL,
  `parkPlace_A13` float NOT NULL,
  `parkPlace_X14` float NOT NULL,
  `parkPlace_Y14` float NOT NULL,
  `parkPlace_Z14` float NOT NULL,
  `parkPlace_A14` float NOT NULL,
  `parkPlace_X15` float NOT NULL,
  `parkPlace_Y15` float NOT NULL,
  `parkPlace_Z15` float NOT NULL,
  `parkPlace_A15` float NOT NULL,
  `parkPlace_X16` float NOT NULL,
  `parkPlace_Y16` float NOT NULL,
  `parkPlace_Z16` float NOT NULL,
  `parkPlace_A16` float NOT NULL,
  `parkPlace_X17` float NOT NULL,
  `parkPlace_Y17` float NOT NULL,
  `parkPlace_Z17` float NOT NULL,
  `parkPlace_A17` float NOT NULL,
  `parkPlace_X18` float NOT NULL,
  `parkPlace_Y18` float NOT NULL,
  `parkPlace_Z18` float NOT NULL,
  `parkPlace_A18` float NOT NULL,
  `parkPlace_X19` float NOT NULL,
  `parkPlace_Y19` float NOT NULL,
  `parkPlace_Z19` float NOT NULL,
  `parkPlace_A19` float NOT NULL,
  `parkPlace_X20` float NOT NULL,
  `parkPlace_Y20` float NOT NULL,
  `parkPlace_Z20` float NOT NULL,
  `parkPlace_A20` float NOT NULL,
  `parkPlace_X21` float NOT NULL,
  `parkPlace_Y21` float NOT NULL,
  `parkPlace_Z21` float NOT NULL,
  `parkPlace_A21` float NOT NULL,
  `parkPlace_X22` float NOT NULL,
  `parkPlace_Y22` float NOT NULL,
  `parkPlace_Z22` float NOT NULL,
  `parkPlace_A22` float NOT NULL,
  `parkPlace_X23` float NOT NULL,
  `parkPlace_Y23` float NOT NULL,
  `parkPlace_Z23` float NOT NULL,
  `parkPlace_A23` float NOT NULL,
  `parkPlace_X24` float NOT NULL,
  `parkPlace_Y24` float NOT NULL,
  `parkPlace_Z24` float NOT NULL,
  `parkPlace_A24` float NOT NULL,
  `parkPlace_X25` float NOT NULL,
  `parkPlace_Y25` float NOT NULL,
  `parkPlace_Z25` float NOT NULL,
  `parkPlace_A25` float NOT NULL,
  `parkPlace_X26` float NOT NULL,
  `parkPlace_Y26` float NOT NULL,
  `parkPlace_Z26` float NOT NULL,
  `parkPlace_A26` float NOT NULL,
  `parkPlace_X27` float NOT NULL,
  `parkPlace_Y27` float NOT NULL,
  `parkPlace_Z27` float NOT NULL,
  `parkPlace_A27` float NOT NULL,
  `parkPlace_X28` float NOT NULL,
  `parkPlace_Y28` float NOT NULL,
  `parkPlace_Z28` float NOT NULL,
  `parkPlace_A28` float NOT NULL,
  `parkPlace_X29` float NOT NULL,
  `parkPlace_Y29` float NOT NULL,
  `parkPlace_Z29` float NOT NULL,
  `parkPlace_A29` float NOT NULL,
  `parkPlace_X30` float NOT NULL,
  `parkPlace_Y30` float NOT NULL,
  `parkPlace_Z30` float NOT NULL,
  `parkPlace_A30` float NOT NULL,
  `parkPlace_X31` float NOT NULL,
  `parkPlace_Y31` float NOT NULL,
  `parkPlace_Z31` float NOT NULL,
  `parkPlace_A31` float NOT NULL,
  `parkPlace_X32` float NOT NULL,
  `parkPlace_Y32` float NOT NULL,
  `parkPlace_Z32` float NOT NULL,
  `parkPlace_A32` float NOT NULL,
  `parkPlace_X33` float NOT NULL,
  `parkPlace_Y33` float NOT NULL,
  `parkPlace_Z33` float NOT NULL,
  `parkPlace_A33` float NOT NULL,
  `parkPlace_X34` float NOT NULL,
  `parkPlace_Y34` float NOT NULL,
  `parkPlace_Z34` float NOT NULL,
  `parkPlace_A34` float NOT NULL,
  `parkPlace_X35` float NOT NULL,
  `parkPlace_Y35` float NOT NULL,
  `parkPlace_Z35` float NOT NULL,
  `parkPlace_A35` float NOT NULL,
  `parkPlace_X36` float NOT NULL,
  `parkPlace_Y36` float NOT NULL,
  `parkPlace_Z36` float NOT NULL,
  `parkPlace_A36` float NOT NULL,
  `parkPlace_X37` float NOT NULL,
  `parkPlace_Y37` float NOT NULL,
  `parkPlace_Z37` float NOT NULL,
  `parkPlace_A37` float NOT NULL,
  `parkPlace_X38` float NOT NULL,
  `parkPlace_Y38` float NOT NULL,
  `parkPlace_Z38` float NOT NULL,
  `parkPlace_A38` float NOT NULL,
  `parkPlace_X39` float NOT NULL,
  `parkPlace_Y39` float NOT NULL,
  `parkPlace_Z39` float NOT NULL,
  `parkPlace_A39` float NOT NULL,
  `parkPlace_X40` float NOT NULL,
  `parkPlace_Y40` float NOT NULL,
  `parkPlace_Z40` float NOT NULL,
  `parkPlace_A40` float NOT NULL,
  `parkPlace_X41` float NOT NULL,
  `parkPlace_Y41` float NOT NULL,
  `parkPlace_Z41` float NOT NULL,
  `parkPlace_A41` float NOT NULL,
  `parkPlace_X42` float NOT NULL,
  `parkPlace_Y42` float NOT NULL,
  `parkPlace_Z42` float NOT NULL,
  `parkPlace_A42` float NOT NULL,
  `parkPlace_X43` float NOT NULL,
  `parkPlace_Y43` float NOT NULL,
  `parkPlace_Z43` float NOT NULL,
  `parkPlace_A43` float NOT NULL,
  `parkPlace_X44` float NOT NULL,
  `parkPlace_Y44` float NOT NULL,
  `parkPlace_Z44` float NOT NULL,
  `parkPlace_A44` float NOT NULL,
  `parkPlace_X45` float NOT NULL,
  `parkPlace_Y45` float NOT NULL,
  `parkPlace_Z45` float NOT NULL,
  `parkPlace_A45` float NOT NULL,
  `parkPlace_X46` float NOT NULL,
  `parkPlace_Y46` float NOT NULL,
  `parkPlace_Z46` float NOT NULL,
  `parkPlace_A46` float NOT NULL,
  `parkPlace_X47` float NOT NULL,
  `parkPlace_Y47` float NOT NULL,
  `parkPlace_Z47` float NOT NULL,
  `parkPlace_A47` float NOT NULL,
  `parkPlace_X48` float NOT NULL,
  `parkPlace_Y48` float NOT NULL,
  `parkPlace_Z48` float NOT NULL,
  `parkPlace_A48` float NOT NULL,
  `parkPlace_X49` float NOT NULL,
  `parkPlace_Y49` float NOT NULL,
  `parkPlace_Z49` float NOT NULL,
  `parkPlace_A49` float NOT NULL,
  `parkPlace_X50` float NOT NULL,
  `parkPlace_Y50` float NOT NULL,
  `parkPlace_Z50` float NOT NULL,
  `parkPlace_A50` float NOT NULL,
  PRIMARY KEY (`parkSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parkings`
--

LOCK TABLES `parkings` WRITE;
/*!40000 ALTER TABLE `parkings` DISABLE KEYS */;
/*!40000 ALTER TABLE `parkings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertys`
--

DROP TABLE IF EXISTS `propertys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `propertys` (
  `iSQLID` mediumint(9) NOT NULL AUTO_INCREMENT,
  `iOwnerSQLID` mediumint(9) NOT NULL DEFAULT '-1',
  `iGarageSqlID` mediumint(9) NOT NULL DEFAULT '-1',
  `iOwned` tinyint(4) NOT NULL DEFAULT '0',
  `iOnAuction` tinyint(1) NOT NULL DEFAULT '0',
  `iOwner` varchar(25) NOT NULL DEFAULT 'Drzava',
  `iMoney` int(11) NOT NULL DEFAULT '0',
  `iUsage` tinyint(4) NOT NULL,
  `iNeaktivnost` smallint(3) NOT NULL DEFAULT '0',
  `iEnter1` float NOT NULL,
  `iEnter2` float NOT NULL,
  `iEnter3` float NOT NULL,
  `iExit1` float NOT NULL,
  `iExit2` float NOT NULL,
  `iExit3` float NOT NULL,
  `iPrice` int(11) NOT NULL,
  `iLevel` smallint(6) NOT NULL,
  `iLocked` tinyint(4) NOT NULL DEFAULT '1',
  `iVrsta` tinyint(4) NOT NULL,
  `iInterior` int(11) NOT NULL,
  `iVW` int(11) NOT NULL,
  `iOruzje1` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje2` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje3` tinyint(4) NOT NULL DEFAULT '0',
  `iOruzje4` tinyint(4) NOT NULL DEFAULT '0',
  `iMunicija1` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija2` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija3` smallint(6) NOT NULL DEFAULT '0',
  `iMunicija4` smallint(6) NOT NULL DEFAULT '0',
  `iDrugAmmount` smallint(6) NOT NULL DEFAULT '0',
  `iMats` mediumint(9) NOT NULL DEFAULT '0',
  `iAlarm` tinyint(1) NOT NULL DEFAULT '0',
  `iDoorLevel` tinyint(4) NOT NULL DEFAULT '0',
  `iLockLevel` tinyint(1) NOT NULL DEFAULT '0',
  `iTime` smallint(6) NOT NULL DEFAULT '0',
  `iAdress` varchar(50) NOT NULL DEFAULT '',
  `iRentable` tinyint(1) NOT NULL DEFAULT '0',
  `iRentPrice` smallint(6) NOT NULL DEFAULT '0',
  `iRentovano` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`iSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertys`
--

LOCK TABLES `propertys` WRITE;
/*!40000 ALTER TABLE `propertys` DISABLE KEYS */;
INSERT INTO `propertys` VALUES (1,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(2,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(3,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(4,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(5,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(6,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,6,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(7,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(8,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(9,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(10,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(11,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,11,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(12,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,12,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(13,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(14,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(15,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,15,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(16,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(17,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(18,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,18,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(19,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,19,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(20,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(21,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(22,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(23,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,23,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(24,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,24,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(25,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,25,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(26,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,26,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(27,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,27,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(28,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,28,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(29,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(30,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(31,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,31,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(32,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,32,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(33,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,33,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(34,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,34,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(35,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,35,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(36,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,36,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(37,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(38,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,38,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(39,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(40,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(41,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,41,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(42,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,42,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(43,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,43,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(44,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,44,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(45,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,45,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(46,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,46,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(47,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,47,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(48,-1,-1,0,0,'Drzava',0,2,0,1249.61,-877.297,46.641,1345.67,-1021.83,-31.141,350000,3,1,0,5,48,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(49,-1,-1,0,0,'Drzava',0,2,0,1189,-1018.05,36.234,1345.67,-1021.83,-31.141,350000,3,1,0,5,49,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(50,-1,-1,0,0,'Drzava',0,2,0,1196.49,-1017.04,36.234,1345.67,-1021.83,-31.141,350000,3,1,0,5,50,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(51,-1,-1,0,0,'Drzava',0,2,0,1188.19,-1011.86,36.227,1345.67,-1021.83,-31.141,350000,3,1,0,5,51,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(52,-1,-1,0,0,'Drzava',0,2,0,1195.68,-1010.88,36.227,1345.67,-1021.83,-31.141,350000,3,1,0,5,52,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(53,-1,-1,0,0,'Drzava',0,2,0,1234.73,-1016.14,32.607,1345.67,-1021.83,-31.141,350000,3,1,0,5,53,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(54,-1,-1,0,0,'Drzava',0,2,0,1227.24,-1017.14,32.602,1345.67,-1021.83,-31.141,350000,3,1,0,5,54,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(55,-1,-1,0,0,'Drzava',0,2,0,1233.93,-1010.03,32.602,1345.67,-1021.83,-31.141,350000,3,1,0,5,55,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(56,-1,-1,0,0,'Drzava',0,2,0,1226.43,-1010.97,32.602,1345.67,-1021.83,-31.141,350000,3,1,0,5,56,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(57,-1,-1,0,0,'Drzava',0,2,0,1233.92,-1009.99,36.328,1345.67,-1021.83,-31.141,350000,3,1,0,5,57,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(58,-1,-1,0,0,'Drzava',0,2,0,1226.44,-1011,36.328,1345.67,-1021.83,-31.141,350000,3,1,0,5,58,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(59,-1,-1,0,0,'Drzava',0,2,0,1227.25,-1017.13,36.336,1345.67,-1021.83,-31.141,350000,3,1,0,5,59,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(60,-1,-1,0,0,'Drzava',0,2,0,1234.73,-1016.17,36.336,1345.67,-1021.83,-31.141,350000,3,1,0,5,60,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(61,-1,-1,0,0,'Drzava',0,1,0,1241.95,-1077.2,31.555,2324.48,-1149.55,1050.71,750000,5,1,2,12,61,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(62,-1,-1,0,0,'Drzava',0,1,0,1242.26,-1099.89,27.977,2324.48,-1149.55,1050.71,750000,5,1,2,12,62,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(63,-1,-1,0,0,'Drzava',0,1,0,1285.26,-1089.8,28.258,2324.48,-1149.55,1050.71,750000,5,1,2,12,63,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(64,-1,-1,0,0,'Drzava',0,1,0,1285.26,-1067.42,31.679,2324.48,-1149.55,1050.71,750000,5,1,2,12,64,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(65,-1,-1,0,0,'Drzava',0,1,0,1141.81,-1070.57,31.766,2324.48,-1149.55,1050.71,750000,5,1,2,12,65,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(66,-1,-1,0,0,'Drzava',0,1,0,1183.47,-1076.73,31.679,2324.48,-1149.55,1050.71,750000,5,1,2,12,66,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(67,-1,-1,0,0,'Drzava',0,1,0,1183.48,-1099.1,28.258,2324.48,-1149.55,1050.71,750000,5,1,2,12,67,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(68,-1,-1,0,0,'Drzava',0,1,0,1142.12,-1092.88,28.188,2324.48,-1149.55,1050.71,750000,5,1,2,12,68,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(69,-1,-1,0,0,'Drzava',0,1,0,1127.96,-1021.17,34.992,225.631,1022.48,1084.07,1000000,5,1,3,7,69,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(70,-1,-1,0,0,'Drzava',0,1,0,1118.05,-1021.66,34.992,225.631,1022.48,1084.07,1000000,5,1,3,7,70,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(71,-1,-1,0,0,'Drzava',0,1,0,1103.4,-1069.68,31.89,2324.48,-1149.55,1050.71,750000,5,1,2,12,71,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(72,-1,-1,0,0,'Drzava',0,1,0,1068.43,-1081.41,27.523,2324.48,-1149.55,1050.71,750000,5,1,2,12,72,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(73,-1,-1,0,0,'Drzava',0,1,0,1059.27,-1105.14,28.045,2324.48,-1149.55,1050.71,750000,5,1,2,12,73,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(74,-1,-1,0,0,'Drzava',0,1,0,1103.41,-1092.52,28.469,2324.48,-1149.55,1050.71,750000,5,1,2,12,74,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(75,-1,-1,0,0,'Drzava',0,1,0,1051.1,-1059.3,34.797,225.631,1022.48,1084.07,1000000,5,1,3,7,75,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(76,-1,-1,0,0,'Drzava',0,1,0,993.783,-1059.03,33.7,225.631,1022.48,1084.07,1000000,5,1,3,7,76,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(77,-1,-1,0,0,'Drzava',0,1,0,1325.95,-1067.7,31.555,2324.48,-1149.55,1050.71,750000,5,1,2,12,77,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(78,-1,-1,0,0,'Drzava',0,1,0,1326.27,-1090.65,27.977,2324.48,-1149.55,1050.71,750000,5,1,2,12,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Novi Beograd',0,0,0),(79,-1,-1,0,0,'Drzava',0,2,0,1505.38,-1061.18,25.063,1345.67,-1021.83,-31.141,350000,3,1,0,5,79,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Slavija',0,0,0),(80,-1,-1,0,0,'Drzava',0,2,0,1509.61,-1061.18,25.063,1345.67,-1021.83,-31.141,350000,3,1,0,5,80,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Slavija',0,0,0),(81,-1,-1,0,0,'Drzava',0,2,0,1513.99,-1061.18,25.063,1345.67,-1021.83,-31.141,350000,3,1,0,5,81,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Slavija',0,0,0),(82,-1,-1,0,0,'Drzava',0,2,0,1546.26,-1096.93,25.063,1345.67,-1021.83,-31.141,350000,3,1,0,5,82,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Slavija',0,0,0),(83,-1,-1,0,0,'Drzava',0,2,0,1308.14,-1468.27,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,83,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(84,-1,-1,0,0,'Drzava',0,2,0,1300.01,-1464.87,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(85,-1,-1,0,0,'Drzava',0,2,0,1284.54,-1464.88,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,85,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(86,-1,-1,0,0,'Drzava',0,2,0,1271.37,-1468.49,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,86,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(87,-1,-1,0,0,'Drzava',0,2,0,1279.44,-1471.79,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,87,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(88,-1,-1,0,0,'Drzava',0,2,0,1300.12,-1471.79,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,88,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(89,-1,-1,0,0,'Drzava',0,2,0,1279.33,-1501.32,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,89,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(90,-1,-1,0,0,'Drzava',0,2,0,1269.08,-1501.33,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,90,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(91,-1,-1,0,0,'Drzava',0,2,0,1234.39,-1501.32,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,91,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(92,-1,-1,0,0,'Drzava',0,2,0,1224.18,-1501.32,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,92,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(93,-1,-1,0,0,'Drzava',0,2,0,1224.14,-1508.24,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,93,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(94,-1,-1,0,0,'Drzava',0,2,0,1234.49,-1508.25,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,94,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(95,-1,-1,0,0,'Drzava',0,2,0,1269.19,-1508.24,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,95,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(96,-1,-1,0,0,'Drzava',0,2,0,1279.5,-1508.24,10.047,1345.67,-1021.83,-31.141,350000,3,1,0,5,96,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(97,-1,-1,0,0,'Drzava',0,2,0,1187.44,-1261.01,15.18,1345.67,-1021.83,-31.141,350000,3,1,0,5,97,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(98,-1,-1,0,0,'Drzava',0,2,0,1179.89,-1261.04,15.18,1345.67,-1021.83,-31.141,350000,3,1,0,5,98,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(99,-1,-1,0,0,'Drzava',0,2,0,1187.36,-1254.75,15.18,1345.67,-1021.83,-31.141,350000,3,1,0,5,99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(100,-1,-1,0,0,'Drzava',0,2,0,1179.81,-1254.85,15.18,1345.67,-1021.83,-31.141,350000,3,1,0,5,100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(101,-1,-1,0,0,'Drzava',0,2,0,1187.36,-1254.7,18.891,1345.67,-1021.83,-31.141,350000,3,1,0,5,101,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(102,-1,-1,0,0,'Drzava',0,2,0,1179.81,-1254.8,18.891,1345.67,-1021.83,-31.141,350000,3,1,0,5,102,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(103,-1,-1,0,0,'Drzava',0,2,0,1179.89,-1261.07,18.898,1345.67,-1021.83,-31.141,350000,3,1,0,5,103,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(104,-1,-1,0,0,'Drzava',0,2,0,1187.44,-1261.05,18.898,1345.67,-1021.83,-31.141,350000,3,1,0,5,104,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(105,-1,-1,0,0,'Drzava',0,2,0,1071.47,-1440.64,13.548,1345.67,-1021.83,-31.141,350000,3,1,0,5,105,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(106,-1,-1,0,0,'Drzava',0,2,0,1070.46,-1449.75,13.544,1345.67,-1021.83,-31.141,350000,3,1,0,5,106,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(107,-1,-1,0,0,'Drzava',0,2,0,1069.51,-1458.58,13.546,1345.67,-1021.83,-31.141,350000,3,1,0,5,107,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(108,-1,-1,0,0,'Drzava',0,2,0,1068.03,-1467.15,13.542,1345.67,-1021.83,-31.141,350000,3,1,0,5,108,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(109,-1,-1,0,0,'Drzava',0,2,0,1065.29,-1477.27,13.544,1345.67,-1021.83,-31.141,350000,3,1,0,5,109,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(110,-1,-1,0,0,'Drzava',0,2,0,1063.03,-1485.59,13.546,1345.67,-1021.83,-31.141,350000,3,1,0,5,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(111,-1,-1,0,0,'Drzava',0,2,0,1057.18,-1507.28,13.555,1345.67,-1021.83,-31.141,350000,3,1,0,5,111,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(112,-1,-1,0,0,'Drzava',0,2,0,1054.86,-1515.94,13.563,1345.67,-1021.83,-31.141,350000,3,1,0,5,112,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(113,-1,-1,0,0,'Drzava',0,2,0,1052.58,-1524.49,13.556,1345.67,-1021.83,-31.141,350000,3,1,0,5,113,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(114,-1,-1,0,0,'Drzava',0,2,0,1050.89,-1532.54,13.546,1345.67,-1021.83,-31.141,350000,3,1,0,5,114,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Banjica',0,0,0),(115,-1,-1,0,0,'Drzava',0,1,0,880.081,-1424.82,14.484,225.631,1022.48,1084.07,1000000,5,1,3,7,115,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(116,-1,-1,0,0,'Drzava',0,1,0,852.189,-1423.27,14.137,225.631,1022.48,1084.07,1000000,5,1,3,7,116,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(117,-1,-1,0,0,'Drzava',0,1,0,824.468,-1424.2,14.499,225.631,1022.48,1084.07,1000000,5,1,3,7,117,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(118,-1,-1,0,0,'Drzava',0,1,0,813.682,-1456.75,14.228,2324.48,-1149.55,1050.71,750000,5,1,2,12,118,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(119,-1,-1,0,0,'Drzava',0,1,0,841.313,-1471.36,14.314,2324.48,-1149.55,1050.71,750000,5,1,2,12,119,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(120,-1,-1,0,0,'Drzava',0,1,0,900.222,-1447.43,14.371,2324.48,-1149.55,1050.71,750000,5,1,2,12,120,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(121,-1,-1,0,0,'Drzava',0,1,0,900.208,-1471.03,14.344,2324.48,-1149.55,1050.71,750000,5,1,2,12,121,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(122,-1,-1,0,0,'Drzava',0,1,0,901.743,-1514.66,14.364,2324.48,-1149.55,1050.71,750000,5,1,2,12,122,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(123,-1,-1,0,0,'Drzava',0,1,0,876.209,-1512.77,14.349,2324.48,-1149.55,1050.71,750000,5,1,2,12,123,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(124,-1,-1,0,0,'Drzava',0,1,0,849.59,-1520.01,14.348,2324.48,-1149.55,1050.71,750000,5,1,2,12,124,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(125,-1,-1,0,0,'Drzava',0,1,0,822.323,-1505.51,14.398,2324.48,-1149.55,1050.71,750000,5,1,2,12,125,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(126,-1,-1,0,0,'Drzava',0,1,0,782.782,-1464.6,13.547,2324.48,-1149.55,1050.71,750000,5,1,2,12,126,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(127,-1,-1,0,0,'Drzava',0,1,0,784.4,-1435.94,13.547,2324.48,-1149.55,1050.71,750000,5,1,2,12,127,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(128,-1,-1,0,0,'Drzava',0,1,0,771.157,-1510.57,13.547,2324.48,-1149.55,1050.71,750000,5,1,2,12,128,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(129,-1,-1,0,0,'Drzava',0,1,0,761.055,-1564.24,13.929,2324.48,-1149.55,1050.71,750000,5,1,2,12,129,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(130,-1,-1,0,0,'Drzava',0,1,0,760.296,-1596.55,13.615,2807.64,-1174.76,1025.57,500000,5,1,1,8,130,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(131,-1,-1,0,0,'Drzava',0,1,0,766.923,-1605.81,13.804,2807.64,-1174.76,1025.57,500000,5,1,1,8,131,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(132,-1,-1,0,0,'Drzava',0,1,0,697.279,-1627.02,3.749,2807.64,-1174.76,1025.57,500000,5,1,1,8,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(133,-1,-1,0,0,'Drzava',0,1,0,693.759,-1645.83,4.094,2807.64,-1174.76,1025.57,500000,5,1,1,8,133,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(134,-1,-1,0,0,'Drzava',0,1,0,694.918,-1690.73,4.346,2807.64,-1174.76,1025.57,500000,5,1,1,8,134,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(135,-1,-1,0,0,'Drzava',0,1,0,693.545,-1705.94,3.819,2807.64,-1174.76,1025.57,500000,5,1,1,8,135,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(136,-1,-1,0,0,'Drzava',0,1,0,653.587,-1714.01,14.765,2807.64,-1174.76,1025.57,500000,5,1,1,8,136,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(137,-1,-1,0,0,'Drzava',0,1,0,652.663,-1693.82,14.544,2807.64,-1174.76,1025.57,500000,5,1,1,8,137,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(138,-1,-1,0,0,'Drzava',0,1,0,657.228,-1652.54,15.406,2807.64,-1174.76,1025.57,500000,5,1,1,8,138,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(139,-1,-1,0,0,'Drzava',0,1,0,656.119,-1635.87,15.862,2807.64,-1174.76,1025.57,500000,5,1,1,8,139,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(140,-1,-1,0,0,'Drzava',0,1,0,653.244,-1619.86,15,2807.64,-1174.76,1025.57,500000,5,1,1,8,140,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(141,-1,-1,0,0,'Drzava',0,1,0,660.437,-1599.85,15,2807.64,-1174.76,1025.57,500000,5,1,1,8,141,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(142,-1,-1,0,0,'Drzava',0,1,0,692.858,-1602.77,15.047,2807.64,-1174.76,1025.57,500000,5,1,1,8,142,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(143,-1,-1,0,0,'Drzava',0,1,0,725.487,-1440.45,13.532,2324.48,-1149.55,1050.71,750000,5,1,2,12,143,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(144,-1,-1,0,0,'Drzava',0,1,0,738.961,-1428.77,13.898,2324.48,-1149.55,1050.71,750000,5,1,2,12,144,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(145,-1,-1,0,0,'Drzava',0,1,0,685.461,-1421.91,14.773,2324.48,-1149.55,1050.71,750000,5,1,2,12,145,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(146,-1,-1,0,0,'Drzava',0,2,0,675.139,-1430.49,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,146,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(147,-1,-1,0,0,'Drzava',0,2,0,662.433,-1440.29,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,147,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(148,-1,-1,0,0,'Drzava',0,2,0,683.376,-1435.49,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,148,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(149,-1,-1,0,0,'Drzava',0,2,0,662.435,-1466.6,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,149,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(150,-1,-1,0,0,'Drzava',0,2,0,657.41,-1481.29,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,150,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(151,-1,-1,0,0,'Drzava',0,2,0,662.435,-1487.51,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,151,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(152,-1,-1,0,0,'Drzava',0,2,0,662.432,-1513.88,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,152,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(153,-1,-1,0,0,'Drzava',0,2,0,657.452,-1528.46,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,153,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(154,-1,-1,0,0,'Drzava',0,2,0,662.432,-1534.58,14.852,1345.67,-1021.83,-31.141,350000,3,1,0,5,154,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(155,-1,-1,0,0,'Drzava',0,1,0,2847.25,-1309.98,14.668,2324.48,-1149.55,1050.71,750000,5,1,2,12,155,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lido',0,0,0),(156,-1,-1,0,0,'Drzava',0,1,0,2842.11,-1334.8,14.742,2324.48,-1149.55,1050.71,750000,5,1,2,12,156,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lido',0,0,0),(157,-1,-1,0,0,'Drzava',0,1,0,2851.85,-1365.87,14.171,225.631,1022.48,1084.07,1000000,5,1,3,7,157,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lido',0,0,0),(158,-1,-1,0,0,'Drzava',0,1,0,1332.19,-633.475,109.135,225.631,1022.48,1084.07,1000000,5,1,3,7,158,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(159,-1,-1,0,0,'Drzava',0,1,0,2808.15,-1190.89,25.339,2324.48,-1149.55,1050.71,750000,5,1,2,12,159,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lido',0,0,0),(160,-1,-1,0,0,'Drzava',0,1,0,2807.97,-1175.92,25.384,2324.48,-1149.55,1050.71,750000,5,1,2,12,160,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lido',0,0,0),(161,-1,-1,0,0,'Drzava',0,2,0,2750.39,-1222.37,64.602,1345.67,-1021.83,-31.141,350000,3,1,0,5,161,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lido',0,0,0),(162,-1,-1,0,0,'Drzava',0,2,0,2750.39,-1238.8,61.525,1345.67,-1021.83,-31.141,350000,3,1,0,5,162,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Lido',0,0,0),(163,-1,-1,0,0,'Drzava',0,1,0,1112.64,-742.04,100.133,2324.48,-1149.55,1050.71,750000,5,1,2,12,163,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(164,-1,-1,0,0,'Drzava',0,1,0,1093.83,-807.145,107.42,2324.48,-1149.55,1050.71,750000,5,1,2,12,164,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(165,-1,-1,0,0,'Drzava',0,1,0,1017.01,-763.361,112.563,2324.48,-1149.55,1050.71,750000,5,1,2,12,165,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(166,-1,-1,0,0,'Drzava',0,1,0,977.447,-771.718,112.203,2324.48,-1149.55,1050.71,750000,5,1,2,12,166,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(167,-1,-1,0,0,'Drzava',0,1,0,891.201,-783.153,101.314,2324.48,-1149.55,1050.71,750000,5,1,2,12,167,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(168,-1,-1,0,0,'Drzava',0,1,0,848.023,-745.546,94.969,2324.48,-1149.55,1050.71,750000,5,1,2,12,168,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(169,-1,-1,0,0,'Drzava',0,1,0,867.63,-717.629,105.68,2324.48,-1149.55,1050.71,750000,5,1,2,12,169,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(170,-1,-1,0,0,'Drzava',0,1,0,897.843,-677.233,116.89,2324.48,-1149.55,1050.71,750000,5,1,2,12,170,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(171,-1,-1,0,0,'Drzava',0,1,0,946.22,-710.559,122.62,2807.64,-1174.76,1025.57,500000,5,1,1,8,171,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(172,-1,-1,0,0,'Drzava',0,1,0,980.496,-677.259,121.976,225.631,1022.48,1084.07,1000000,5,1,3,7,172,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(173,-1,-1,0,0,'Drzava',0,1,0,1045.15,-642.943,120.117,225.631,1022.48,1084.07,1000000,5,1,3,7,173,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(174,-1,-1,0,0,'Drzava',0,1,0,1095.06,-647.915,113.648,225.631,1022.48,1084.07,1000000,5,1,3,7,174,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(175,-1,-1,0,0,'Drzava',0,1,0,2111.25,-1278.98,25.836,2807.64,-1174.76,1025.57,500000,5,1,1,8,175,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(176,-1,-1,0,0,'Drzava',0,1,0,808.258,-759.37,76.531,2324.48,-1149.55,1050.71,750000,5,1,2,12,176,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(177,-1,-1,0,0,'Drzava',0,1,0,2091.07,-1277.84,26.18,2807.64,-1174.76,1025.57,500000,5,1,1,8,177,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(178,-1,-1,0,0,'Drzava',0,1,0,785.923,-828.412,70.29,2807.64,-1174.76,1025.57,500000,5,1,1,8,178,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(179,-1,-1,0,0,'Drzava',0,1,0,2132.21,-1280.05,25.891,2807.64,-1174.76,1025.57,500000,5,1,1,8,179,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(180,-1,-1,0,0,'Drzava',0,1,0,2150.11,-1285.04,24.527,2807.64,-1174.76,1025.57,500000,5,1,1,8,180,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(181,-1,-1,0,0,'Drzava',0,1,0,2148.43,-1320.07,26.074,2807.64,-1174.76,1025.57,500000,5,1,1,8,181,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(182,-1,-1,0,0,'Drzava',0,1,0,2126.76,-1320.86,26.624,2324.48,-1149.55,1050.71,750000,5,1,2,12,182,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(183,-1,-1,0,0,'Drzava',0,1,0,300.275,-1154.48,81.391,225.631,1022.48,1084.07,1000000,5,1,3,7,183,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(184,-1,-1,0,0,'Drzava',0,1,0,2100.85,-1321.89,25.953,2807.64,-1174.76,1025.57,500000,5,1,1,8,184,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(185,-1,-1,0,0,'Drzava',0,1,0,2090.89,-1235.17,26.019,2807.64,-1174.76,1025.57,500000,5,1,1,8,185,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(186,-1,-1,0,0,'Drzava',0,1,0,251.381,-1220.25,76.102,225.631,1022.48,1084.07,1000000,5,1,3,7,186,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(187,-1,-1,0,0,'Drzava',0,1,0,2110.94,-1244.4,25.852,2807.64,-1174.76,1025.57,500000,5,1,1,8,187,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(188,-1,-1,0,0,'Drzava',0,1,0,2133.52,-1233,24.422,2807.64,-1174.76,1025.57,500000,5,1,1,8,188,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(189,-1,-1,0,0,'Drzava',0,1,0,253.296,-1269.94,74.43,225.631,1022.48,1084.07,1000000,5,1,3,7,189,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(190,-1,-1,0,0,'Drzava',0,1,0,219.125,-1249.88,78.337,225.631,1022.48,1084.07,1000000,5,1,3,7,190,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(191,-1,-1,0,0,'Drzava',0,1,0,2153.75,-1243.81,25.367,2807.64,-1174.76,1025.57,500000,5,1,1,8,191,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(192,-1,-1,0,0,'Drzava',0,1,0,254.364,-1367.1,53.109,225.631,1022.48,1084.07,1000000,5,1,3,7,192,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(193,-1,-1,0,0,'Drzava',0,1,0,298.868,-1338.49,53.442,225.631,1022.48,1084.07,1000000,5,1,3,7,193,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(194,-1,-1,0,0,'Drzava',0,1,0,2191.84,-1239.23,24.488,2807.64,-1174.76,1025.57,500000,5,1,1,8,194,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(195,-1,-1,0,0,'Drzava',0,1,0,2209.76,-1240.25,24.48,2807.64,-1174.76,1025.57,500000,5,1,1,8,195,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(196,-1,-1,0,0,'Drzava',0,1,0,355.179,-1281.14,53.704,2807.64,-1174.76,1025.57,500000,5,1,1,8,196,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(197,-1,-1,0,0,'Drzava',0,1,0,345.079,-1298.08,50.759,2807.64,-1174.76,1025.57,500000,5,1,1,8,197,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kalemegdan',0,0,0),(198,-1,-1,0,0,'Drzava',0,1,0,2229.6,-1241.61,25.656,2807.64,-1174.76,1025.57,500000,5,1,1,8,198,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(199,-1,-1,0,0,'Drzava',0,1,0,2249.91,-1238.91,25.898,2807.64,-1174.76,1025.57,500000,5,1,1,8,199,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(200,-1,-1,0,0,'Drzava',0,1,0,398.253,-1271.33,50.02,2324.48,-1149.55,1050.71,750000,5,1,2,12,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(201,-1,-1,0,0,'Drzava',0,1,0,2250.21,-1280.05,25.477,2807.64,-1174.76,1025.57,500000,5,1,1,8,201,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(202,-1,-1,0,0,'Drzava',0,1,0,431.926,-1254.01,51.581,2324.48,-1149.55,1050.71,750000,5,1,2,12,202,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(203,-1,-1,0,0,'Drzava',0,1,0,2230.14,-1280.08,25.629,2807.64,-1174.76,1025.57,500000,5,1,1,8,203,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(204,-1,-1,0,0,'Drzava',0,1,0,2207.89,-1280.82,25.121,2807.64,-1174.76,1025.57,500000,5,1,1,8,204,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(205,-1,-1,0,0,'Drzava',0,1,0,552.888,-1200.3,44.832,2324.48,-1149.55,1050.71,750000,5,1,2,12,205,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(206,-1,-1,0,0,'Drzava',0,1,0,2191.58,-1275.6,25.156,2807.64,-1174.76,1025.57,500000,5,1,1,8,206,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Topcidersko Brdo',0,0,0),(207,-1,-1,0,0,'Drzava',0,1,0,612.38,-1085.77,58.827,2324.48,-1149.55,1050.71,750000,5,1,2,12,207,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(208,-1,-1,0,0,'Drzava',0,2,0,2352,-1170.67,28.075,1345.67,-1021.83,-31.141,350000,3,1,0,5,208,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zemun',0,0,0),(209,-1,-1,0,0,'Drzava',0,1,0,648.408,-1058.6,52.58,2807.64,-1174.76,1025.57,500000,5,1,1,8,209,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(210,-1,-1,0,0,'Drzava',0,1,0,700.302,-1060.25,49.422,2324.48,-1149.55,1050.71,750000,5,1,2,12,210,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(211,-1,-1,0,0,'Drzava',0,2,0,2334.4,-1203.99,27.977,1345.67,-1021.83,-31.141,350000,3,1,0,5,211,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zemun',0,0,0),(212,-1,-1,0,0,'Drzava',0,1,0,673.181,-1020.06,55.76,2807.64,-1174.76,1025.57,500000,5,1,1,8,212,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(213,-1,-1,0,0,'Drzava',0,1,0,724.847,-999.462,52.734,2807.64,-1174.76,1025.57,500000,5,1,1,8,213,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Senjak',0,0,0),(214,-1,-1,0,0,'Drzava',0,1,0,2373.93,-1138.92,29.059,2807.64,-1174.76,1025.57,500000,5,1,1,8,214,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zemun',0,0,0),(215,-1,-1,0,0,'Drzava',0,1,0,2394.84,-1133.54,30.719,2807.64,-1174.76,1025.57,500000,5,1,1,8,215,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(216,-1,-1,0,0,'Drzava',0,1,0,2427.45,-1135.77,34.711,2807.64,-1174.76,1025.57,500000,5,1,1,8,216,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zemun',0,0,0),(217,-1,-1,0,0,'Drzava',0,1,0,2488,-1135.24,39.586,2807.64,-1174.76,1025.57,500000,5,1,1,8,217,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Zemun',0,0,0),(218,-1,-1,0,0,'Drzava',0,1,0,2510.57,-1132.54,41.621,2807.64,-1174.76,1025.57,500000,5,1,1,8,218,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(219,-1,-1,0,0,'Drzava',0,1,0,827.804,-858.002,70.331,2807.64,-1174.76,1025.57,500000,5,1,1,8,219,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(220,-1,-1,0,0,'Drzava',0,1,0,836.053,-894.924,68.769,225.631,1022.48,1084.07,1000000,5,1,3,7,220,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(221,-1,-1,0,0,'Drzava',0,1,0,2438.62,-1105.79,43.082,2807.64,-1174.76,1025.57,500000,5,1,1,8,221,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(222,-1,-1,0,0,'Drzava',0,1,0,910.305,-817.598,103.126,2324.48,-1149.55,1050.71,750000,5,1,2,12,222,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(223,-1,-1,0,0,'Drzava',0,1,0,2407.89,-1106.97,40.296,2807.64,-1174.76,1025.57,500000,5,1,1,8,223,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(224,-1,-1,0,0,'Drzava',0,1,0,924.083,-853.387,93.457,2807.64,-1174.76,1025.57,500000,5,1,1,8,224,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(225,-1,-1,0,0,'Drzava',0,1,0,937.974,-848.616,93.584,2807.64,-1174.76,1025.57,500000,5,1,1,8,225,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(226,-1,-1,0,0,'Drzava',0,1,0,2457.02,-1102.5,43.867,2807.64,-1174.76,1025.57,500000,5,1,1,8,226,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(227,-1,-1,0,0,'Drzava',0,1,0,2470.7,-1105.32,44.488,2807.64,-1174.76,1025.57,500000,5,1,1,8,227,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(228,-1,-1,0,0,'Drzava',0,1,0,989.889,-828.605,95.469,2807.64,-1174.76,1025.57,500000,5,1,1,8,228,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(229,-1,-1,0,0,'Drzava',0,1,0,2519.03,-1112.98,56.593,2807.64,-1174.76,1025.57,500000,5,1,1,8,229,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(230,-1,-1,0,0,'Drzava',0,1,0,2572.38,-1091.78,67.226,2807.64,-1174.76,1025.57,500000,5,1,1,8,230,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(231,-1,-1,0,0,'Drzava',0,1,0,2576.68,-1070.74,69.832,2807.64,-1174.76,1025.57,500000,5,1,1,8,231,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(232,-1,-1,0,0,'Drzava',0,1,0,1034.86,-813.166,101.852,2807.64,-1174.76,1025.57,500000,5,1,1,8,232,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dedinje',0,0,0),(233,-1,-1,0,0,'Drzava',0,3,0,2579.59,-1033.2,69.58,2160.29,-1172.62,1029.86,300000,5,1,0,7,233,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(234,-1,-1,0,0,'Drzava',0,3,0,2562.1,-1034.41,69.869,2160.29,-1172.62,1029.86,300000,5,1,0,7,234,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(235,-1,-1,0,0,'Drzava',0,3,0,2549.21,-1032.2,69.579,2160.29,-1172.62,1029.86,300000,5,1,0,7,235,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(236,-1,-1,0,0,'Drzava',0,3,0,2526.81,-1033.53,69.579,2160.29,-1172.62,1029.86,300000,5,1,0,7,236,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(237,-1,-1,0,0,'Drzava',0,3,0,2512.83,-1027.16,70.086,2160.29,-1172.62,1029.86,300000,5,1,0,7,237,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(238,-1,-1,0,0,'Drzava',0,3,0,2499.75,-1065.57,70.236,2160.29,-1172.62,1029.86,300000,5,1,0,7,238,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(239,-1,-1,0,0,'Drzava',0,3,0,2526.09,-1060.71,69.971,2160.29,-1172.62,1029.86,300000,5,1,0,7,239,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(240,-1,-1,0,0,'Drzava',0,3,0,2534.48,-1063.46,69.565,2160.29,-1172.62,1029.86,300000,5,1,0,7,240,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(241,-1,-1,0,0,'Drzava',0,3,0,2491.35,-1012.34,65.398,2160.29,-1172.62,1029.86,300000,5,1,0,7,241,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(242,-1,-1,0,0,'Drzava',0,3,0,2479.65,-1064.05,66.998,2160.29,-1172.62,1029.86,300000,5,1,0,7,242,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(243,-1,-1,0,0,'Drzava',0,3,0,2457.77,-1054.56,59.959,2160.29,-1172.62,1029.86,300000,5,1,0,7,243,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(244,-1,-1,0,0,'Drzava',0,3,0,2462.48,-1011.14,60.114,2160.29,-1172.62,1029.86,300000,5,1,0,7,244,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(245,-1,-1,0,0,'Drzava',0,3,0,2439.9,-1010.87,54.344,2160.29,-1172.62,1029.86,300000,5,1,0,7,245,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(246,-1,-1,0,0,'Drzava',0,3,0,2454.19,-964.945,80.073,2160.29,-1172.62,1029.86,300000,5,1,0,7,246,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(247,-1,-1,0,0,'Drzava',0,3,0,2459.4,-947.701,80.083,2160.29,-1172.62,1029.86,300000,5,1,0,7,247,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(248,-1,-1,0,0,'Drzava',0,3,0,2472.39,-962.371,80.525,2160.29,-1172.62,1029.86,300000,5,1,0,7,248,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(249,-1,-1,0,0,'Drzava',0,3,0,2492.1,-965.621,82.549,2160.29,-1172.62,1029.86,300000,5,1,0,7,249,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(250,-1,-1,0,0,'Drzava',0,3,0,2499.41,-946.995,82.471,2160.29,-1172.62,1029.86,300000,5,1,0,7,250,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(251,-1,-1,0,0,'Drzava',0,3,0,2517.86,-965.261,82.328,2160.29,-1172.62,1029.86,300000,5,1,0,7,251,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(252,-1,-1,0,0,'Drzava',0,3,0,2552.4,-958.315,82.633,2160.29,-1172.62,1029.86,300000,5,1,0,7,252,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(253,-1,-1,0,0,'Drzava',0,3,0,2581.5,-969.319,81.365,2160.29,-1172.62,1029.86,300000,5,1,0,7,253,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(254,-1,-1,0,0,'Drzava',0,3,0,2582.9,-952.932,81.388,2160.29,-1172.62,1029.86,300000,5,1,0,7,254,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(255,-1,-1,0,0,'Drzava',0,1,0,2628.11,-1067.97,69.716,2324.48,-1149.55,1050.71,750000,5,1,2,12,255,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(256,-1,-1,0,0,'Drzava',0,1,0,2627.65,-1085.15,69.716,2324.48,-1149.55,1050.71,750000,5,1,2,12,256,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(257,-1,-1,0,0,'Drzava',0,1,0,2625.93,-1098.72,69.359,2324.48,-1149.55,1050.71,750000,5,1,2,12,257,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(258,-1,-1,0,0,'Drzava',0,1,0,2625.94,-1112.61,67.995,2324.48,-1149.55,1050.71,750000,5,1,2,12,258,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Petlovo Brdo',0,0,0),(259,-1,-1,0,0,'Drzava',0,1,0,768.078,-1656.01,5.609,2807.64,-1174.76,1025.57,500000,5,1,1,8,259,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(260,-1,-1,0,0,'Drzava',0,2,0,2683.44,-1200.06,66.806,1345.67,-1021.83,-31.141,350000,3,1,0,5,260,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(261,-1,-1,0,0,'Drzava',0,2,0,2683.44,-1203.14,66.032,1345.67,-1021.83,-31.141,350000,3,1,0,5,261,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(262,-1,-1,0,0,'Drzava',0,2,0,2683.42,-1207.57,65.095,1345.67,-1021.83,-31.141,350000,3,1,0,5,262,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(263,-1,-1,0,0,'Drzava',0,2,0,2683.43,-1211.75,63.962,1345.67,-1021.83,-31.141,350000,3,1,0,5,263,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(264,-1,-1,0,0,'Drzava',0,2,0,2683.43,-1216.33,62.573,1345.67,-1021.83,-31.141,350000,3,1,0,5,264,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(265,-1,-1,0,0,'Drzava',0,2,0,2683.44,-1220.43,61.226,1345.67,-1021.83,-31.141,350000,3,1,0,5,265,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(266,-1,-1,0,0,'Drzava',0,2,0,2683.44,-1224.65,59.932,1345.67,-1021.83,-31.141,350000,3,1,0,5,266,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(267,-1,-1,0,0,'Drzava',0,2,0,2683.44,-1229.19,58.646,1345.67,-1021.83,-31.141,350000,3,1,0,5,267,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(268,-1,-1,0,0,'Drzava',0,2,0,2683.44,-1233.46,57.417,1345.67,-1021.83,-31.141,350000,3,1,0,5,268,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(269,-1,-1,0,0,'Drzava',0,2,0,2683.44,-1237.99,56.02,1345.67,-1021.83,-31.141,350000,3,1,0,5,269,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(270,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1237.93,58.184,1345.67,-1021.83,-31.141,350000,3,1,0,5,270,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(271,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1233.53,59.581,1345.67,-1021.83,-31.141,350000,3,1,0,5,271,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(272,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1229.12,60.811,1345.67,-1021.83,-31.141,350000,3,1,0,5,272,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(273,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1224.74,62.096,1345.67,-1021.83,-31.141,350000,3,1,0,5,273,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(274,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1220.51,63.39,1345.67,-1021.83,-31.141,350000,3,1,0,5,274,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(275,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1216.38,64.739,1345.67,-1021.83,-31.141,350000,3,1,0,5,275,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(276,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1211.84,66.128,1345.67,-1021.83,-31.141,350000,3,1,0,5,276,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(277,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1207.67,67.262,1345.67,-1021.83,-31.141,350000,3,1,0,5,277,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(278,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1203.2,68.196,1345.67,-1021.83,-31.141,350000,3,1,0,5,278,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(279,-1,-1,0,0,'Drzava',0,2,0,2700.21,-1200.16,68.97,1345.67,-1021.83,-31.141,350000,3,1,0,5,279,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(280,-1,-1,0,0,'Drzava',0,2,0,2663.17,-1200.12,66.467,1345.67,-1021.83,-31.141,350000,3,1,0,5,280,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(281,-1,-1,0,0,'Drzava',0,2,0,2663.18,-1203.09,65.685,1345.67,-1021.83,-31.141,350000,3,1,0,5,281,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(282,-1,-1,0,0,'Drzava',0,2,0,2663.18,-1207.66,64.761,1345.67,-1021.83,-31.141,350000,3,1,0,5,282,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(283,-1,-1,0,0,'Drzava',0,2,0,2663.16,-1211.76,63.624,1345.67,-1021.83,-31.141,350000,3,1,0,5,283,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(284,-1,-1,0,0,'Drzava',0,2,0,2663.18,-1216.39,62.224,1345.67,-1021.83,-31.141,350000,3,1,0,5,284,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(285,-1,-1,0,0,'Drzava',0,2,0,2663.16,-1220.6,60.875,1345.67,-1021.83,-31.141,350000,3,1,0,5,285,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(286,-1,-1,0,0,'Drzava',0,2,0,2663.18,-1224.71,59.587,1345.67,-1021.83,-31.141,350000,3,1,0,5,286,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(287,-1,-1,0,0,'Drzava',0,2,0,2663.18,-1229.32,58.3,1345.67,-1021.83,-31.141,350000,3,1,0,5,287,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(288,-1,-1,0,0,'Drzava',0,2,0,2663.18,-1233.54,57.071,1345.67,-1021.83,-31.141,350000,3,1,0,5,288,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(289,-1,-1,0,0,'Drzava',0,2,0,2663.18,-1238.15,55.674,1345.67,-1021.83,-31.141,350000,3,1,0,5,289,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(290,-1,-1,0,0,'Drzava',0,2,0,2622.22,-1237.99,51.269,1345.67,-1021.83,-31.141,350000,3,1,0,5,290,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(291,-1,-1,0,0,'Drzava',0,2,0,2622.27,-1233.42,52.678,1345.67,-1021.83,-31.141,350000,3,1,0,5,291,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(292,-1,-1,0,0,'Drzava',0,2,0,2622.23,-1229.2,53.897,1345.67,-1021.83,-31.141,350000,3,1,0,5,292,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(293,-1,-1,0,0,'Drzava',0,2,0,2622.22,-1224.76,55.181,1345.67,-1021.83,-31.141,350000,3,1,0,5,293,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(294,-1,-1,0,0,'Drzava',0,2,0,987.496,-1624.45,14.93,1345.67,-1021.83,-31.141,350000,3,1,0,5,294,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(295,-1,-1,0,0,'Drzava',0,2,0,2622.22,-1220.55,56.475,1345.67,-1021.83,-31.141,350000,3,1,0,5,295,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(296,-1,-1,0,0,'Drzava',0,2,0,2622.22,-1216.31,57.824,1345.67,-1021.83,-31.141,350000,3,1,0,5,296,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(297,-1,-1,0,0,'Drzava',0,2,0,2622.24,-1211.73,59.218,1345.67,-1021.83,-31.141,350000,3,1,0,5,297,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(298,-1,-1,0,0,'Drzava',0,2,0,987.522,-1704.11,14.93,1345.67,-1021.83,-31.141,350000,3,1,0,5,298,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(299,-1,-1,0,0,'Drzava',0,2,0,2622.22,-1207.64,60.346,1345.67,-1021.83,-31.141,350000,3,1,0,5,299,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(300,-1,-1,0,0,'Drzava',0,2,0,2622.21,-1203.06,61.28,1345.67,-1021.83,-31.141,350000,3,1,0,5,300,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(301,-1,-1,0,0,'Drzava',0,2,0,2622.23,-1200.07,62.057,1345.67,-1021.83,-31.141,350000,3,1,0,5,301,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(302,-1,-1,0,0,'Drzava',0,2,0,893.758,-1635.86,14.93,1345.67,-1021.83,-31.141,350000,3,1,0,5,302,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(303,-1,-1,0,0,'Drzava',0,2,0,2608.15,-1200.09,60.992,1345.67,-1021.83,-31.141,350000,3,1,0,5,303,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(304,-1,-1,0,0,'Drzava',0,2,0,865.448,-1633.85,14.93,1345.67,-1021.83,-31.141,350000,3,1,0,5,304,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(305,-1,-1,0,0,'Drzava',0,2,0,2608.15,-1203.01,60.218,1345.67,-1021.83,-31.141,350000,3,1,0,5,305,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(306,-1,-1,0,0,'Drzava',0,2,0,2608.16,-1207.54,59.284,1345.67,-1021.83,-31.141,350000,3,1,0,5,306,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(307,-1,-1,0,0,'Drzava',0,2,0,2608.17,-1211.75,58.153,1345.67,-1021.83,-31.141,350000,3,1,0,5,307,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(308,-1,-1,0,0,'Drzava',0,2,0,2608.15,-1216.34,56.76,1345.67,-1021.83,-31.141,350000,3,1,0,5,308,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(309,-1,-1,0,0,'Drzava',0,2,0,883.126,-1800.39,13.802,1345.67,-1021.83,-31.141,350000,3,1,0,5,309,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(310,-1,-1,0,0,'Drzava',0,2,0,866.871,-1798.96,13.816,1345.67,-1021.83,-31.141,350000,3,1,0,5,310,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(311,-1,-1,0,0,'Drzava',0,2,0,910.402,-1802.7,13.801,1345.67,-1021.83,-31.141,350000,3,1,0,5,311,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(312,-1,-1,0,0,'Drzava',0,2,0,2608.16,-1220.58,55.412,1345.67,-1021.83,-31.141,350000,3,1,0,5,312,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(313,-1,-1,0,0,'Drzava',0,2,0,921.625,-1803.85,13.838,1345.67,-1021.83,-31.141,350000,3,1,0,5,313,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(314,-1,-1,0,0,'Drzava',0,2,0,2608.17,-1224.71,54.122,1345.67,-1021.83,-31.141,350000,3,1,0,5,314,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(315,-1,-1,0,0,'Drzava',0,2,0,933.578,-1805.2,13.843,1345.67,-1021.83,-31.141,350000,3,1,0,5,315,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(316,-1,-1,0,0,'Drzava',0,2,0,2608.16,-1229.21,52.835,1345.67,-1021.83,-31.141,350000,3,1,0,5,316,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(317,-1,-1,0,0,'Drzava',0,2,0,957.666,-1809.07,13.881,1345.67,-1021.83,-31.141,350000,3,1,0,5,317,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(318,-1,-1,0,0,'Drzava',0,2,0,2608.15,-1233.59,51.603,1345.67,-1021.83,-31.141,350000,3,1,0,5,318,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(319,-1,-1,0,0,'Drzava',0,2,0,969.647,-1812.04,13.884,1345.67,-1021.83,-31.141,350000,3,1,0,5,319,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(320,-1,-1,0,0,'Drzava',0,2,0,980.903,-1814.81,13.889,1345.67,-1021.83,-31.141,350000,3,1,0,5,320,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(321,-1,-1,0,0,'Drzava',0,2,0,2608.16,-1238.08,50.207,1345.67,-1021.83,-31.141,350000,3,1,0,5,321,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(322,-1,-1,0,0,'Drzava',0,2,0,992.591,-1817.62,13.894,1345.67,-1021.83,-31.141,350000,3,1,0,5,322,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0),(323,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1238.04,48.564,1345.67,-1021.83,-31.141,350000,3,1,0,5,323,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(324,-1,-1,0,0,'Drzava',0,2,0,2594.51,-1233.54,49.962,1345.67,-1021.83,-31.141,350000,3,1,0,5,324,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(325,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1229.23,51.191,1345.67,-1021.83,-31.141,350000,3,1,0,5,325,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(326,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1224.72,52.477,1345.67,-1021.83,-31.141,350000,3,1,0,5,326,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(327,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1220.5,53.765,1345.67,-1021.83,-31.141,350000,3,1,0,5,327,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(328,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1216.3,55.114,1345.67,-1021.83,-31.141,350000,3,1,0,5,328,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(329,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1211.86,56.514,1345.67,-1021.83,-31.141,350000,3,1,0,5,329,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(330,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1207.55,57.651,1345.67,-1021.83,-31.141,350000,3,1,0,5,330,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(331,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1203.11,58.576,1345.67,-1021.83,-31.141,350000,3,1,0,5,331,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(332,-1,-1,0,0,'Drzava',0,2,0,2594.5,-1199.96,59.358,1345.67,-1021.83,-31.141,350000,3,1,0,5,332,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Kaludjerica',0,0,0),(333,-1,-1,0,0,'Drzava',0,1,0,2523.27,-1679.27,15.497,2807.64,-1174.76,1025.57,500000,5,1,1,8,333,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(334,-1,-1,0,0,'Drzava',0,1,0,2514.36,-1691.56,14.046,2807.64,-1174.76,1025.57,500000,5,1,1,8,334,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(335,-1,-1,0,0,'Drzava',0,1,0,2459.51,-1691.66,13.545,2807.64,-1174.76,1025.57,500000,5,1,1,8,335,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(336,-1,-1,0,0,'Drzava',0,1,0,2469.6,-1646.35,13.78,2807.64,-1174.76,1025.57,500000,5,1,1,8,336,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(337,-1,-1,0,0,'Drzava',0,1,0,2486.45,-1644.54,14.077,2324.48,-1149.55,1050.71,750000,5,1,2,12,337,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(338,-1,-1,0,0,'Drzava',0,1,0,2498.53,-1642.25,14.113,2807.64,-1174.76,1025.57,500000,5,1,1,8,338,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(339,-1,-1,0,0,'Drzava',0,1,0,2513.73,-1650.26,14.356,2807.64,-1174.76,1025.57,500000,5,1,1,8,339,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(340,-1,-1,0,0,'Drzava',0,1,0,2451.97,-1641.41,14.066,2807.64,-1174.76,1025.57,500000,5,1,1,8,340,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(341,-1,-1,0,0,'Drzava',0,1,0,2413.84,-1646.79,14.012,2807.64,-1174.76,1025.57,500000,5,1,1,8,341,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(342,-1,-1,0,0,'Drzava',0,1,0,2409.01,-1674.94,14.375,2807.64,-1174.76,1025.57,500000,5,1,1,8,342,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(343,-1,-1,0,0,'Drzava',0,1,0,2393.2,-1646.03,13.905,2807.64,-1174.76,1025.57,500000,5,1,1,8,343,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(344,-1,-1,0,0,'Drzava',0,1,0,2384.63,-1675.83,15.246,2807.64,-1174.76,1025.57,500000,5,1,1,8,344,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(345,-1,-1,0,0,'Drzava',0,1,0,2362.82,-1643.15,14.352,2807.64,-1174.76,1025.57,500000,5,1,1,8,345,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(346,-1,-1,0,0,'Drzava',0,1,0,2368.31,-1675.34,14.168,2807.64,-1174.76,1025.57,500000,5,1,1,8,346,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(347,-1,-1,0,0,'Drzava',0,1,0,2326.89,-1681.98,14.93,2807.64,-1174.76,1025.57,500000,5,1,1,8,347,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(348,-1,-1,0,0,'Drzava',0,1,0,2385.46,-1711.66,14.242,2807.64,-1174.76,1025.57,500000,5,1,1,8,348,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(349,-1,-1,0,0,'Drzava',0,1,0,2402.55,-1714.99,14.133,2807.64,-1174.76,1025.57,500000,5,1,1,8,349,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(350,-1,-1,0,0,'Drzava',0,1,0,2326.7,-1716.7,14.238,2807.64,-1174.76,1025.57,500000,5,1,1,8,350,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(351,-1,-1,0,0,'Drzava',0,1,0,2308.85,-1714.33,14.98,2807.64,-1174.76,1025.57,500000,5,1,1,8,351,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(352,-1,-1,0,0,'Drzava',0,1,0,2306.97,-1679.2,14.332,2807.64,-1174.76,1025.57,500000,5,1,1,8,352,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(353,-1,-1,0,0,'Drzava',0,1,0,2067.05,-1731.67,14.207,2807.64,-1174.76,1025.57,500000,5,1,1,8,353,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(354,-1,-1,0,0,'Drzava',0,1,0,2066.24,-1717.12,14.136,2807.64,-1174.76,1025.57,500000,5,1,1,8,354,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(355,-1,-1,0,0,'Drzava',0,1,0,2065.1,-1703.55,14.148,2807.64,-1174.76,1025.57,500000,5,1,1,8,355,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(356,-1,-1,0,0,'Drzava',0,1,0,2066.74,-1656.55,14.133,2807.64,-1174.76,1025.57,500000,5,1,1,8,356,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(357,-1,-1,0,0,'Drzava',0,1,0,2067.56,-1643.77,14.136,2807.64,-1174.76,1025.57,500000,5,1,1,8,357,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(358,-1,-1,0,0,'Drzava',0,1,0,2067.7,-1628.84,14.207,2807.64,-1174.76,1025.57,500000,5,1,1,8,358,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(359,-1,-1,0,0,'Drzava',0,1,0,2018.05,-1629.9,14.043,2807.64,-1174.76,1025.57,500000,5,1,1,8,359,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(360,-1,-1,0,0,'Drzava',0,1,0,2016.54,-1641.71,14.113,2807.64,-1174.76,1025.57,500000,5,1,1,8,360,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(361,-1,-1,0,0,'Drzava',0,1,0,2013.58,-1656.33,14.136,2807.64,-1174.76,1025.57,500000,5,1,1,8,361,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(362,-1,-1,0,0,'Drzava',0,1,0,2018.23,-1703.2,14.234,2807.64,-1174.76,1025.57,500000,5,1,1,8,362,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(363,-1,-1,0,0,'Drzava',0,1,0,2016.19,-1716.9,14.125,2807.64,-1174.76,1025.57,500000,5,1,1,8,363,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(364,-1,-1,0,0,'Drzava',0,1,0,2015.35,-1732.54,14.234,2807.64,-1174.76,1025.57,500000,5,1,1,8,364,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(365,-1,-1,0,0,'Drzava',0,1,0,1980.38,-1718.97,17.03,2324.48,-1149.55,1050.71,750000,5,1,2,12,365,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0),(366,-1,-1,0,0,'Drzava',0,1,0,1980.99,-1682.82,17.054,2324.48,-1149.55,1050.71,750000,5,1,2,12,366,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Dorcol',0,0,0);
/*!40000 ALTER TABLE `propertys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `punishments`
--

DROP TABLE IF EXISTS `punishments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `punishments` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `p_user_id` int(11) NOT NULL,
  `p_admin` int(11) NOT NULL,
  `p_reason` varchar(64) NOT NULL,
  `p_jail_min` int(11) NOT NULL,
  `p_money_fine` int(11) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `punishments`
--

LOCK TABLES `punishments` WRITE;
/*!40000 ALTER TABLE `punishments` DISABLE KEYS */;
/*!40000 ALTER TABLE `punishments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quests` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `easy_quest_1` tinyint(1) DEFAULT '0',
  `easy_quest_2` tinyint(1) DEFAULT '0',
  `easy_quest_3` tinyint(1) DEFAULT '0',
  `easy_quest_4` tinyint(1) DEFAULT '0',
  `easy_quest_5` tinyint(1) DEFAULT '0',
  `easy_quest_6` tinyint(1) DEFAULT '0',
  `easy_quest_7` tinyint(1) DEFAULT '0',
  `easy_quest_8` tinyint(1) DEFAULT '0',
  `easy_quest_9` tinyint(1) DEFAULT '0',
  `easy_quest_10` tinyint(1) DEFAULT '0',
  `easy_reward_quest_1` tinyint(1) DEFAULT '0',
  `easy_reward_quest_2` tinyint(1) DEFAULT '0',
  `easy_reward_quest_3` tinyint(1) DEFAULT '0',
  `easy_reward_quest_4` tinyint(1) DEFAULT '0',
  `easy_reward_quest_5` tinyint(1) DEFAULT '0',
  `easy_reward_quest_6` tinyint(1) DEFAULT '0',
  `easy_reward_quest_7` tinyint(1) DEFAULT '0',
  `easy_reward_quest_8` tinyint(1) DEFAULT '0',
  `easy_reward_quest_9` tinyint(1) DEFAULT '0',
  `easy_reward_quest_10` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
INSERT INTO `quests` VALUES (1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rents`
--

DROP TABLE IF EXISTS `rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rents` (
  `vrSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `vrLiP_Pos_X` float NOT NULL,
  `vrLiP_Pos_Y` float NOT NULL,
  `vrLiP_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_X` float NOT NULL,
  `vrSpawn_Pos_Y` float NOT NULL,
  `vrSpawn_Pos_Z` float NOT NULL,
  `vrSpawn_Pos_A` float NOT NULL,
  PRIMARY KEY (`vrSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rents`
--

LOCK TABLES `rents` WRITE;
/*!40000 ALTER TABLE `rents` DISABLE KEYS */;
/*!40000 ALTER TABLE `rents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_clothes`
--

DROP TABLE IF EXISTS `user_clothes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_clothes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `cloth_slot_1` int(11) DEFAULT '-1',
  `cloth_slot_1_p1` float DEFAULT '0',
  `cloth_slot_1_p2` float DEFAULT '0',
  `cloth_slot_1_p3` float DEFAULT '0',
  `cloth_slot_1_p4` float DEFAULT '0',
  `cloth_slot_1_p5` float DEFAULT '0',
  `cloth_slot_1_p6` float DEFAULT '0',
  `cloth_slot_1_p7` float DEFAULT '0',
  `cloth_slot_1_p8` float DEFAULT '0',
  `cloth_slot_1_p9` float DEFAULT '0',
  `cloth_slot_2` int(11) DEFAULT '-1',
  `cloth_slot_2_p1` float DEFAULT '0',
  `cloth_slot_2_p2` float DEFAULT '0',
  `cloth_slot_2_p3` float DEFAULT '0',
  `cloth_slot_2_p4` float DEFAULT '0',
  `cloth_slot_2_p5` float DEFAULT '0',
  `cloth_slot_2_p6` float DEFAULT '0',
  `cloth_slot_2_p7` float DEFAULT '0',
  `cloth_slot_2_p8` float DEFAULT '0',
  `cloth_slot_2_p9` float DEFAULT '0',
  `cloth_slot_3` int(11) DEFAULT '-1',
  `cloth_slot_3_p1` float DEFAULT '0',
  `cloth_slot_3_p2` float DEFAULT '0',
  `cloth_slot_3_p3` float DEFAULT '0',
  `cloth_slot_3_p4` float DEFAULT '0',
  `cloth_slot_3_p5` float DEFAULT '0',
  `cloth_slot_3_p6` float DEFAULT '0',
  `cloth_slot_3_p7` float DEFAULT '0',
  `cloth_slot_3_p8` float DEFAULT '0',
  `cloth_slot_3_p9` float DEFAULT '0',
  `cloth_slot_4` int(11) DEFAULT '-1',
  `cloth_slot_4_p1` float DEFAULT '0',
  `cloth_slot_4_p2` float DEFAULT '0',
  `cloth_slot_4_p3` float DEFAULT '0',
  `cloth_slot_4_p4` float DEFAULT '0',
  `cloth_slot_4_p5` float DEFAULT '0',
  `cloth_slot_4_p6` float DEFAULT '0',
  `cloth_slot_4_p7` float DEFAULT NULL,
  `cloth_slot_4_p8` float DEFAULT '0',
  `cloth_slot_4_p9` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_clothes`
--

LOCK TABLES `user_clothes` WRITE;
/*!40000 ALTER TABLE `user_clothes` DISABLE KEYS */;
INSERT INTO `user_clothes` VALUES (1,1,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `user_clothes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `user_id` mediumint(7) NOT NULL AUTO_INCREMENT,
  `p_name` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `isonline` tinyint(1) DEFAULT '0',
  `user_ip` varchar(128) CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `registered` tinyint(1) DEFAULT '0',
  `sex` tinyint(1) NOT NULL,
  `age` tinyint(2) NOT NULL,
  `level` smallint(5) DEFAULT '1',
  `exp` smallint(6) DEFAULT '0',
  `xOnlineSati` smallint(6) DEFAULT '0',
  `money` int(11) DEFAULT '0',
  `xBRacun` int(11) DEFAULT '0',
  `xZlato` mediumint(9) DEFAULT '0',
  `xPlatiRacun` mediumint(9) DEFAULT '0',
  `payday` tinyint(2) DEFAULT '0',
  `upgrades` tinyint(3) DEFAULT '0',
  `admin_lvl` tinyint(1) DEFAULT '0',
  `admin_code` int(4) DEFAULT '0',
  `xSpecAdmin` tinyint(1) DEFAULT '0',
  `helper_level` tinyint(1) DEFAULT '0',
  `vip_level` tinyint(1) DEFAULT '0',
  `promoter_level` tinyint(1) NOT NULL DEFAULT '0',
  `spec_rank` tinyint(2) DEFAULT '0',
  `staff_min` smallint(6) DEFAULT '0',
  `vip_time` float DEFAULT '0',
  `skin_id` smallint(5) DEFAULT '0',
  `spawn` tinyint(1) DEFAULT '0',
  `lider` tinyint(2) NOT NULL DEFAULT '0',
  `clan` tinyint(2) NOT NULL DEFAULT '0',
  `rank` tinyint(2) NOT NULL DEFAULT '0',
  `materials` mediumint(9) DEFAULT '0',
  `job_id` tinyint(2) DEFAULT '0',
  `contract` tinyint(1) DEFAULT '0',
  `fight_style` tinyint(1) DEFAULT '0',
  `spawn_hp` float DEFAULT '0',
  `vehicle_license` tinyint(1) DEFAULT '0',
  `boat_license` tinyint(1) DEFAULT '0',
  `air_license` tinyint(1) DEFAULT '0',
  `gun_license` tinyint(1) DEFAULT '0',
  `toolkit` tinyint(1) DEFAULT '0',
  `property_id_1` smallint(4) DEFAULT '-1',
  `property_id_2` smallint(4) DEFAULT '-1',
  `property_id_3` smallint(4) DEFAULT '-1',
  `bussines_id` smallint(4) DEFAULT '0',
  `field_id` smallint(4) DEFAULT '-1',
  `garage_id` smallint(4) DEFAULT '0',
  `xTelefon` tinyint(1) NOT NULL DEFAULT '0',
  `phone_number` mediumint(9) DEFAULT '0',
  `phone_credit` mediumint(9) DEFAULT '0',
  `strenght` smallint(3) DEFAULT '0',
  `jail_type` tinyint(1) DEFAULT '0',
  `jail_time` smallint(4) DEFAULT '0',
  `wanted_level` tinyint(2) DEFAULT '0',
  `arrested` smallint(6) DEFAULT '0',
  `xPDUhapsio` mediumint(9) NOT NULL DEFAULT '0',
  `xPDStatsTicket` mediumint(9) NOT NULL DEFAULT '0',
  `xPDStatsTicketMoney` mediumint(9) NOT NULL DEFAULT '0',
  `xTakenWeps` mediumint(9) NOT NULL DEFAULT '0',
  `xTakenDrugs` mediumint(9) NOT NULL DEFAULT '0',
  `credit_rest` mediumint(9) DEFAULT '0',
  `credit_amount` mediumint(9) DEFAULT '0',
  `credit_installment` smallint(5) DEFAULT '0',
  `warn` tinyint(1) DEFAULT '0',
  `mute` smallint(4) DEFAULT '0',
  `mask_id` mediumint(9) DEFAULT '0',
  `rp_learn` tinyint(1) DEFAULT '0',
  `marker_p1` float DEFAULT '0',
  `marker_p2` float DEFAULT '0',
  `marker_p3` float DEFAULT '0',
  `gps_level` tinyint(1) DEFAULT '1',
  `org_contract` smallint(5) DEFAULT '0',
  `hitman_price` mediumint(9) DEFAULT '0',
  `country` tinyint(2) DEFAULT '0',
  `email` varchar(128) CHARACTER SET utf8 NOT NULL,
  `org_punishment` tinyint(3) DEFAULT '0',
  `offpjail` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpprison` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `offpmute` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `married` tinyint(1) DEFAULT '0',
  `married_to` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `xBundeve` smallint(6) NOT NULL DEFAULT '0',
  `xSemeBundeve` mediumint(9) DEFAULT '0',
  `lotto_number` smallint(3) DEFAULT '0',
  `lotto_money` mediumint(9) DEFAULT '0',
  `vehicle_slots` smallint(4) DEFAULT '1',
  `rob_time` tinyint(3) DEFAULT '0',
  `leave_jail` tinyint(1) DEFAULT '0',
  `bail_price` int(11) DEFAULT '0',
  `hangar_time` tinyint(3) DEFAULT '0',
  `event_first_place` smallint(5) DEFAULT '0',
  `event_second_place` smallint(5) DEFAULT '0',
  `event_third_place` smallint(5) DEFAULT '0',
  `dm_event_kills` mediumint(9) DEFAULT '0',
  `cstdm_score` mediumint(9) DEFAULT '0',
  `rent_id` smallint(4) DEFAULT '-1',
  `reserve_keys` int(11) DEFAULT '-1',
  `watch` smallint(5) DEFAULT '0',
  `dbo` tinyint(1) DEFAULT '0',
  `dbo_color` tinyint(2) DEFAULT '0',
  `rp_poen` smallint(3) DEFAULT '0',
  `upp_poen` smallint(3) DEFAULT '0',
  `xUPPCoin` tinyint(3) NOT NULL DEFAULT '0',
  `reaction_poen` smallint(3) DEFAULT '0',
  `taking_time` tinyint(3) DEFAULT '0',
  `gift` smallint(6) DEFAULT '0',
  `xPaketic` tinyint(1) DEFAULT '0',
  `gate_key` varchar(64) CHARACTER SET utf8 DEFAULT 'Niko',
  `mats_smugl` tinyint(1) DEFAULT '0',
  `robp_time` tinyint(3) DEFAULT '0',
  `law_appeals` smallint(4) DEFAULT '0',
  `law_skill` smallint(4) DEFAULT '0',
  `xTBan` smallint(6) NOT NULL DEFAULT '0',
  `xTWarn` smallint(6) NOT NULL DEFAULT '0',
  `xTKick` smallint(6) NOT NULL DEFAULT '0',
  `xTCharge` smallint(6) NOT NULL DEFAULT '0',
  `xTJail` smallint(6) NOT NULL DEFAULT '0',
  `xTUnjail` smallint(6) NOT NULL DEFAULT '0',
  `xTUnwarn` smallint(6) NOT NULL DEFAULT '0',
  `xTUnban` smallint(6) NOT NULL DEFAULT '0',
  `xTPM` smallint(6) NOT NULL DEFAULT '0',
  `xReputation` smallint(5) NOT NULL DEFAULT '0',
  `xBoombox` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Pizza` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Sok` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Pivo` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Hambi` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Piletina` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_Laptop` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Dinamit` tinyint(1) NOT NULL DEFAULT '0',
  `xTorba_Droga` mediumint(9) NOT NULL DEFAULT '0',
  `xTorba_Kantica` mediumint(9) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_1` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_2` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_Oruzje_3` smallint(3) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_1` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_2` smallint(6) NOT NULL DEFAULT '0',
  `xTorba_OruzjeM_3` smallint(6) NOT NULL DEFAULT '0',
  `xTdStyle` tinyint(1) NOT NULL DEFAULT '0',
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Saco',0,'255.255.255.255','C52C8924B0E457697A110B5D1641F9B27B654FD3B458B3B65C5EE8A0CBFF3896',1,1,24,1,0,0,50000,0,0,0,1,0,8,2410,0,0,0,0,1,1,0,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,2,'sacosamp@gmail.com',0,'2','2','2',0,'Niko',0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,'Niko',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2019-11-14 23:57:06','2019-11-14 23:53:35');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_salon`
--

DROP TABLE IF EXISTS `vehicle_salon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicle_salon` (
  `salon_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_bussines_id` int(11) NOT NULL,
  `veh_buyed_pos_x` float NOT NULL,
  `veh_buyed_pos_y` float NOT NULL,
  `veh_buyed_pos_z` float NOT NULL,
  `veh_buyed_pos_a` float NOT NULL,
  `pickup_pos_x` float NOT NULL,
  `pickup_pos_y` float NOT NULL,
  `pickup_pos_z` float NOT NULL,
  `s_interior` int(11) NOT NULL DEFAULT '0',
  `s_virtualw` int(11) NOT NULL DEFAULT '0',
  `veh_model_1` int(11) DEFAULT '0',
  `veh_model_2` int(11) DEFAULT '0',
  `veh_model_3` int(11) DEFAULT '0',
  `veh_model_4` int(11) DEFAULT '0',
  `veh_model_5` int(11) DEFAULT '0',
  `veh_model_6` int(11) DEFAULT '0',
  `veh_model_7` int(11) DEFAULT '0',
  `veh_model_8` int(11) DEFAULT '0',
  `veh_model_9` int(11) DEFAULT '0',
  `veh_model_10` int(11) DEFAULT '0',
  `veh_model_11` int(11) DEFAULT '0',
  `veh_model_12` int(11) DEFAULT '0',
  `veh_model_13` int(11) DEFAULT '0',
  `veh_model_14` int(11) DEFAULT '0',
  `veh_model_15` int(11) DEFAULT '0',
  `veh_model_16` int(11) DEFAULT '0',
  `veh_amount_1` int(11) DEFAULT '0',
  `veh_amount_2` int(11) DEFAULT '0',
  `veh_amount_3` int(11) DEFAULT '0',
  `veh_amount_4` int(11) DEFAULT '0',
  `veh_amount_5` int(11) DEFAULT '0',
  `veh_amount_6` int(11) DEFAULT '0',
  `veh_amount_7` int(11) DEFAULT '0',
  `veh_amount_8` int(11) DEFAULT '0',
  `veh_amount_9` int(11) DEFAULT '0',
  `veh_amount_10` int(11) DEFAULT '0',
  `veh_amount_11` int(11) DEFAULT '0',
  `veh_amount_12` int(11) DEFAULT '0',
  `veh_amount_13` int(11) DEFAULT '0',
  `veh_amount_14` int(11) DEFAULT '0',
  `veh_amount_15` int(11) DEFAULT '0',
  `veh_amount_16` int(11) DEFAULT '0',
  PRIMARY KEY (`salon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_salon`
--

LOCK TABLES `vehicle_salon` WRITE;
/*!40000 ALTER TABLE `vehicle_salon` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_salon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vehicles` (
  `veh_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_sqlID` int(11) DEFAULT '0',
  `v_price` int(11) NOT NULL,
  `v_locked` tinyint(1) DEFAULT '0',
  `v_pos_x` float NOT NULL,
  `v_pos_y` float NOT NULL,
  `v_pos_z` float NOT NULL,
  `v_pos_a` float NOT NULL,
  `v_virtualw` int(11) NOT NULL,
  `v_interior` int(11) NOT NULL,
  `v_usage` smallint(2) NOT NULL,
  `v_organization` smallint(2) DEFAULT '0',
  `v_job` smallint(2) DEFAULT '-1',
  `v_fuel_station` smallint(2) DEFAULT '-1',
  `v_color_1` int(11) NOT NULL,
  `v_color_2` int(11) NOT NULL,
  `v_model` int(11) NOT NULL,
  `v_teh` smallint(2) DEFAULT '0',
  `v_reg` smallint(2) DEFAULT '0',
  `v_reg_vreme` smallint(3) DEFAULT '0',
  `v_tablice` varchar(24) COLLATE utf8_unicode_ci DEFAULT 'NEMA',
  `v_gps` smallint(2) DEFAULT '0',
  `v_insurance` smallint(2) DEFAULT '0',
  `v_lock` smallint(2) DEFAULT '0',
  `v_alarm` smallint(2) DEFAULT '0',
  `v_fuel` smallint(2) DEFAULT '40',
  `v_fuel_type` smallint(2) DEFAULT '0',
  `v_neon` int(11) DEFAULT '0',
  `v_tuned` tinyint(1) DEFAULT '0',
  `v_imobilizator` int(11) DEFAULT '0',
  `v_spoiler` int(11) DEFAULT '0',
  `v_hood` int(11) DEFAULT '0',
  `v_roof` int(11) DEFAULT '0',
  `v_skirt` int(11) DEFAULT '0',
  `v_lamps` int(11) DEFAULT '0',
  `v_nitro` int(11) DEFAULT '0',
  `v_exhaust` int(11) DEFAULT '0',
  `v_wheels` int(11) DEFAULT '0',
  `v_stereo` int(11) DEFAULT '0',
  `v_hydraulics` int(11) DEFAULT '0',
  `v_front_bumper` int(11) DEFAULT '0',
  `v_rear_bumper` int(11) DEFAULT '0',
  `v_vents` int(11) DEFAULT '0',
  `v_paintjob` int(11) DEFAULT '255',
  `v_drug_ammount` int(11) DEFAULT '0',
  `v_mats` int(11) DEFAULT '0',
  `v_weapon_melee` int(11) DEFAULT '0',
  `v_weapon_slot_1` int(11) DEFAULT '0',
  `v_weapon_ammo_1` int(11) DEFAULT '0',
  `v_weapon_slot_2` int(11) DEFAULT '0',
  `v_weapon_ammo_2` int(11) DEFAULT '0',
  `v_gajbica_slot_1` int(11) DEFAULT '-1',
  `v_gajbica_slot_2` int(11) DEFAULT '-1',
  `v_gajbica_slot_3` int(11) DEFAULT '-1',
  `v_gajbica_slot_4` int(11) DEFAULT '-1',
  `v_gajbica_slot_5` int(11) DEFAULT '-1',
  `v_gajbica_kolicina_1` int(11) DEFAULT '0',
  `v_gajbica_kolicina_2` int(11) DEFAULT '0',
  `v_gajbica_kolicina_3` int(11) DEFAULT '0',
  `v_gajbica_kolicina_4` int(11) DEFAULT '0',
  `v_gajbica_kolicina_5` int(11) DEFAULT '0',
  `v_neaktivnost` int(11) DEFAULT '0',
  `v_kilometri` int(11) DEFAULT '0',
  `v_metri` int(11) DEFAULT '0',
  `vLastSpawn` varchar(44) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`veh_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmas_presents`
--

DROP TABLE IF EXISTS `xmas_presents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xmas_presents` (
  `presSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `presTaken` tinyint(1) NOT NULL DEFAULT '0',
  `presPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `presPos1` float NOT NULL,
  `presPos2` float NOT NULL,
  `presPos3` float NOT NULL,
  `presPos4` float NOT NULL,
  `presPos5` float NOT NULL,
  `presPos6` float NOT NULL,
  PRIMARY KEY (`presSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmas_presents`
--

LOCK TABLES `xmas_presents` WRITE;
/*!40000 ALTER TABLE `xmas_presents` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmas_presents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xmas_trees`
--

DROP TABLE IF EXISTS `xmas_trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `xmas_trees` (
  `ctSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `ctPlaced` tinyint(1) NOT NULL DEFAULT '1',
  `ctPos1` float NOT NULL,
  `ctPos2` float NOT NULL,
  `ctPos3` float NOT NULL,
  `ctPos4` float NOT NULL,
  `ctPos5` float NOT NULL,
  `ctPos6` float NOT NULL,
  PRIMARY KEY (`ctSQLID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xmas_trees`
--

LOCK TABLES `xmas_trees` WRITE;
/*!40000 ALTER TABLE `xmas_trees` DISABLE KEYS */;
/*!40000 ALTER TABLE `xmas_trees` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14 23:57:46
