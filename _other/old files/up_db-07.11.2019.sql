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
INSERT INTO `_stats` VALUES (1,2,0,0,0,162,4,0,2,1,50000,0,1,1,1,2,1,1,7500,'No-one');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bussines`
--

LOCK TABLES `bussines` WRITE;
/*!40000 ALTER TABLE `bussines` DISABLE KEYS */;
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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `events` (
  `eventSQLID` smallint(6) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(64) NOT NULL,
  `veh_id` smallint(3) NOT NULL,
  `MaxCP` tinyint(2) NOT NULL,
  `TCPX` float NOT NULL,
  `TCPY` float NOT NULL,
  `TCPZ` float NOT NULL,
  `TCPA` float NOT NULL,
  `TCPX2` float NOT NULL,
  `TCPY2` float NOT NULL,
  `TCPZ2` float NOT NULL,
  `TCPA2` float NOT NULL,
  `CPX0` float NOT NULL DEFAULT '0',
  `CPY0` float NOT NULL DEFAULT '0',
  `CPZ0` float NOT NULL DEFAULT '0',
  `CPX1` float NOT NULL DEFAULT '0',
  `CPY1` float NOT NULL DEFAULT '0',
  `CPZ1` float NOT NULL DEFAULT '0',
  `CPX2` float NOT NULL DEFAULT '0',
  `CPY2` float NOT NULL DEFAULT '0',
  `CPZ2` float NOT NULL DEFAULT '0',
  `CPX3` float NOT NULL DEFAULT '0',
  `CPY3` float NOT NULL DEFAULT '0',
  `CPZ3` float NOT NULL DEFAULT '0',
  `CPX4` float NOT NULL DEFAULT '0',
  `CPY4` float NOT NULL DEFAULT '0',
  `CPZ4` float NOT NULL DEFAULT '0',
  `CPX5` float NOT NULL DEFAULT '0',
  `CPY5` float NOT NULL DEFAULT '0',
  `CPZ5` float NOT NULL DEFAULT '0',
  `CPX6` float NOT NULL DEFAULT '0',
  `CPY6` float NOT NULL DEFAULT '0',
  `CPZ6` float NOT NULL DEFAULT '0',
  `CPX7` float NOT NULL DEFAULT '0',
  `CPY7` float NOT NULL DEFAULT '0',
  `CPZ7` float NOT NULL DEFAULT '0',
  `CPX8` float NOT NULL DEFAULT '0',
  `CPY8` float NOT NULL DEFAULT '0',
  `CPZ8` float NOT NULL DEFAULT '0',
  `CPX9` float NOT NULL DEFAULT '0',
  `CPY9` float NOT NULL DEFAULT '0',
  `CPZ9` float NOT NULL DEFAULT '0',
  `CPX10` float NOT NULL DEFAULT '0',
  `CPY10` float NOT NULL DEFAULT '0',
  `CPZ10` float NOT NULL DEFAULT '0',
  `CPX11` float NOT NULL DEFAULT '0',
  `CPY11` float NOT NULL DEFAULT '0',
  `CPZ11` float NOT NULL DEFAULT '0',
  `CPX12` float NOT NULL DEFAULT '0',
  `CPY12` float NOT NULL DEFAULT '0',
  `CPZ12` float NOT NULL DEFAULT '0',
  `CPX13` float NOT NULL DEFAULT '0',
  `CPY13` float NOT NULL DEFAULT '0',
  `CPZ13` float NOT NULL DEFAULT '0',
  `CPX14` float NOT NULL DEFAULT '0',
  `CPY14` float NOT NULL DEFAULT '0',
  `CPZ14` float NOT NULL DEFAULT '0',
  `CPX15` float NOT NULL DEFAULT '0',
  `CPY15` float NOT NULL DEFAULT '0',
  `CPZ15` float NOT NULL DEFAULT '0',
  `CPX16` float NOT NULL DEFAULT '0',
  `CPY16` float NOT NULL DEFAULT '0',
  `CPZ16` float NOT NULL DEFAULT '0',
  `CPX17` float NOT NULL DEFAULT '0',
  `CPY17` float NOT NULL DEFAULT '0',
  `CPZ17` float NOT NULL DEFAULT '0',
  `CPX18` float NOT NULL DEFAULT '0',
  `CPY18` float NOT NULL DEFAULT '0',
  `CPZ18` float NOT NULL DEFAULT '0',
  `CPX19` float NOT NULL DEFAULT '0',
  `CPY19` float NOT NULL DEFAULT '0',
  `CPZ19` float NOT NULL DEFAULT '0',
  `CPX20` float NOT NULL DEFAULT '0',
  `CPY20` float NOT NULL DEFAULT '0',
  `CPZ20` float NOT NULL DEFAULT '0',
  `CPX21` float NOT NULL DEFAULT '0',
  `CPY21` float NOT NULL DEFAULT '0',
  `CPZ21` float NOT NULL DEFAULT '0',
  `CPX22` float NOT NULL DEFAULT '0',
  `CPY22` float NOT NULL DEFAULT '0',
  `CPZ22` float NOT NULL DEFAULT '0',
  `CPX23` float NOT NULL DEFAULT '0',
  `CPY23` float NOT NULL DEFAULT '0',
  `CPZ23` float NOT NULL DEFAULT '0',
  `CPX24` float NOT NULL DEFAULT '0',
  `CPY24` float NOT NULL DEFAULT '0',
  `CPZ24` float NOT NULL DEFAULT '0',
  `CPX25` float NOT NULL DEFAULT '0',
  `CPY25` float NOT NULL DEFAULT '0',
  `CPZ25` float NOT NULL DEFAULT '0',
  `CPX26` float NOT NULL DEFAULT '0',
  `CPY26` float NOT NULL DEFAULT '0',
  `CPZ26` float NOT NULL DEFAULT '0',
  `CPX27` float NOT NULL DEFAULT '0',
  `CPY27` float NOT NULL DEFAULT '0',
  `CPZ27` float NOT NULL DEFAULT '0',
  `CPX28` float NOT NULL DEFAULT '0',
  `CPY28` float NOT NULL DEFAULT '0',
  `CPZ28` float NOT NULL DEFAULT '0',
  `CPX29` float NOT NULL DEFAULT '0',
  `CPY29` float NOT NULL DEFAULT '0',
  `CPZ29` float NOT NULL DEFAULT '0',
  `CPX30` float NOT NULL DEFAULT '0',
  `CPY30` float NOT NULL DEFAULT '0',
  `CPZ30` float NOT NULL DEFAULT '0',
  `CPX31` float NOT NULL DEFAULT '0',
  `CPY31` float NOT NULL DEFAULT '0',
  `CPZ31` float NOT NULL DEFAULT '0',
  `CPX32` float NOT NULL DEFAULT '0',
  `CPY32` float NOT NULL DEFAULT '0',
  `CPZ32` float NOT NULL DEFAULT '0',
  `CPX33` float NOT NULL DEFAULT '0',
  `CPY33` float NOT NULL DEFAULT '0',
  `CPZ33` float NOT NULL DEFAULT '0',
  `CPX34` float NOT NULL DEFAULT '0',
  `CPY34` float NOT NULL DEFAULT '0',
  `CPZ34` float NOT NULL DEFAULT '0',
  `CPX35` float NOT NULL DEFAULT '0',
  `CPY35` float NOT NULL DEFAULT '0',
  `CPZ35` float NOT NULL DEFAULT '0',
  `CPX36` float NOT NULL DEFAULT '0',
  `CPY36` float NOT NULL DEFAULT '0',
  `CPZ36` float NOT NULL DEFAULT '0',
  `CPX37` float NOT NULL DEFAULT '0',
  `CPY37` float NOT NULL DEFAULT '0',
  `CPZ37` float NOT NULL DEFAULT '0',
  `CPX38` float NOT NULL DEFAULT '0',
  `CPY38` float NOT NULL DEFAULT '0',
  `CPZ38` float NOT NULL DEFAULT '0',
  `CPX39` float NOT NULL DEFAULT '0',
  `CPY39` float NOT NULL DEFAULT '0',
  `CPZ39` float NOT NULL DEFAULT '0',
  `CPX40` float NOT NULL DEFAULT '0',
  `CPY40` float NOT NULL DEFAULT '0',
  `CPZ40` float NOT NULL DEFAULT '0',
  `CPX41` float NOT NULL DEFAULT '0',
  `CPY41` float NOT NULL DEFAULT '0',
  `CPZ41` float NOT NULL DEFAULT '0',
  `CPX42` float NOT NULL DEFAULT '0',
  `CPY42` float NOT NULL DEFAULT '0',
  `CPZ42` float NOT NULL DEFAULT '0',
  `CPX43` float NOT NULL DEFAULT '0',
  `CPY43` float NOT NULL DEFAULT '0',
  `CPZ43` float NOT NULL DEFAULT '0',
  `CPX44` float NOT NULL DEFAULT '0',
  `CPY44` float NOT NULL DEFAULT '0',
  `CPZ44` float NOT NULL DEFAULT '0',
  `CPX45` float NOT NULL DEFAULT '0',
  `CPY45` float NOT NULL DEFAULT '0',
  `CPZ45` float NOT NULL DEFAULT '0',
  `CPX46` float NOT NULL DEFAULT '0',
  `CPY46` float NOT NULL DEFAULT '0',
  `CPZ46` float NOT NULL DEFAULT '0',
  `CPX47` float NOT NULL DEFAULT '0',
  `CPY47` float NOT NULL DEFAULT '0',
  `CPZ47` float NOT NULL DEFAULT '0',
  `CPX48` float NOT NULL DEFAULT '0',
  `CPY48` float NOT NULL DEFAULT '0',
  `CPZ48` float NOT NULL DEFAULT '0',
  `CPX49` float NOT NULL DEFAULT '0',
  `CPY49` float NOT NULL DEFAULT '0',
  `CPZ49` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventSQLID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'test event v3',560,22,1589.7,-2279.02,13.573,91.157,1579.06,-2277.26,13.347,92.411,0,0,0,0,0,0,1579.65,-2280.37,12.924,1579.68,-2280.33,12.926,1579.68,-2280.33,12.927,1579.68,-2280.33,12.927,1578.82,-2294.18,12.903,1598.86,-2321.73,12.954,1613.39,-2320.77,12.954,1640.46,-2319.99,12.953,1665.6,-2319.8,12.954,1696.57,-2319.77,12.954,1723.63,-2319.74,12.954,1756.82,-2319.71,12.948,1798.46,-2295.82,10.868,1798.76,-2275.58,7.693,1794.71,-2259.69,5.796,1785.16,-2253.75,5.529,1772.03,-2252.78,2.584,1758.16,-2253.22,-0.2,1745.67,-2253.53,-2.648,1730.41,-2253.71,-3.277,1717.14,-2253.86,-3.289,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(2,'test event v3',560,3,1589.7,-2279.02,13.573,91.157,1551.87,-2289.01,13.383,88.337,0,0,0,0,0,0,1528.45,-2285.66,13.383,1528,-2285.61,13.383,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(3,'test event v3',560,0,1589.7,-2279.02,13.573,91.157,1579.06,-2277.26,13.347,92.411,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(4,'event system',411,4,1597.47,-2278.21,13.573,86.353,1596.85,-2273.49,13.573,86.771,1582.12,-2277.03,13.54,1566.39,-2285.48,13.383,1547.92,-2286.75,13.383,1529.75,-2286.23,14.104,1517.91,-2277.97,13.383,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(5,'event system test 2',502,49,1592.8,-2277.86,13.573,88.755,1591,-2273.02,13.573,88.755,1576.59,-2279.77,13.276,1556.21,-2286.01,14.094,1543.29,-2286.14,13.974,1534.72,-2285.09,14.233,1526.64,-2280.81,14.155,1521.36,-2274.29,14.06,1517.21,-2269.1,13.383,1513.59,-2264.66,13.383,1507.86,-2258.12,13.554,1503.48,-2254.41,13.547,1498.81,-2251.3,13.554,1493.53,-2248.75,13.547,1489,-2247.52,13.554,1484.73,-2246.95,13.547,1480.3,-2246.52,13.547,1475.4,-2246.41,13.547,1471.86,-2246.48,13.547,1468.11,-2246.81,13.547,1464.01,-2247.3,13.547,1445.48,-2253.63,13.547,1439.65,-2258.49,14.353,1432.56,-2265.16,14.107,1424.35,-2272.31,14.244,1418.03,-2276.79,14.277,1412.28,-2280.68,13.547,1408.82,-2282.39,13.383,1404.9,-2283.93,13.383,1401.33,-2285.33,13.383,1397.42,-2286.86,13.374,1394.49,-2288.01,13.361,1391.2,-2289.3,13.347,1388.15,-2290.5,13.333,1385.1,-2291.69,13.485,1381.68,-2293.04,13.479,1378.7,-2294.21,13.503,1375.57,-2295.43,13.538,1372.75,-2296.64,13.547,1370.16,-2298.41,13.547,1367.71,-2300.08,13.547,1364.73,-2302.16,13.547,1362.08,-2304.35,13.547,1359.85,-2306.61,13.547,1357.84,-2309.02,13.547,1356.07,-2311.64,13.547,1354.6,-2314.73,13.547,1353.45,-2317.66,13.547,1352.2,-2320.86,13.547,1351.06,-2323.79,13.383,1349.73,-2327.17,13.383,1348.64,-2329.98,13.383),(6,'esystem ',400,50,1588.76,-2256.32,13.379,90.949,1587.61,-2250.83,13.381,90.531,1574.22,-2265.86,13.382,1572.51,-2274.64,13.384,1572.02,-2276.94,13.379,1571.28,-2279.04,13.402,1569.82,-2280.86,13.383,1567.96,-2282.09,13.383,1566.02,-2282.95,13.39,1563.96,-2283.81,13.383,1561.96,-2284.64,13.383,1559.65,-2285.6,13.383,1557.6,-2286.48,13.383,1555.75,-2287.5,13.383,1554.14,-2288.82,13.383,1552.81,-2290.29,13.383,1551.58,-2292.19,13.405,1549.54,-2298.1,13.548,1549.14,-2299.5,13.547,1548.71,-2301.3,13.545,1548.47,-2302.67,13.545,1548.29,-2304.02,13.545,1548.11,-2305.31,13.545,1547.96,-2306.4,13.545,1547.82,-2307.41,13.545,1547.68,-2308.37,13.545,1547.56,-2309.29,13.545,1547.41,-2310.32,13.555,1547.29,-2311.23,13.555,1547.15,-2312.24,13.555,1547.01,-2313.21,13.555,1546.91,-2313.98,13.555,1546.74,-2315.15,13.555,1546.62,-2316.05,13.555,1546.46,-2317.16,13.555,1546.34,-2318.07,13.555,1546.21,-2318.97,13.555,1546.06,-2320.04,13.555,1545.94,-2320.94,13.555,1545.79,-2322,13.555,1545.65,-2323.02,13.555,1545.5,-2324.09,13.555,1545.38,-2325,13.555,1545.23,-2326.03,13.555,1545.08,-2327.12,13.555,1544.94,-2328.14,13.555,1544.8,-2329.14,13.555,1544.68,-2330.03,13.555,1544.51,-2331.22,13.555,1544.38,-2332.17,13.555,1542.84,-2338.61,13.555,1541.89,-2341.09,13.547),(7,'Sultan Race',560,4,1530.35,-2289.06,13.383,90.453,1530.24,-2284.03,13.383,90.453,1512.87,-2258.04,13.091,1469.98,-2241.02,13.088,1434.11,-2261.26,13.087,1380.96,-2286.52,13.016,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0),(8,'Infernus Race',411,7,1588.65,-2279.21,13.573,89.274,1588.1,-2273.56,13.573,86.976,1564.4,-2285.82,12.948,1525.95,-2288.97,12.956,1516.2,-2310.62,12.945,1478.06,-2332.92,12.952,1424.06,-2336.8,13.116,1386.26,-2355.12,13.118,1334.41,-2404.85,12.916,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
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
  `is_popular` tinyint(1) DEFAULT '0',
  `gz_radius` smallint(3) NOT NULL DEFAULT '100',
  `color` varchar(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pickup_pos_x` float DEFAULT NULL,
  `pickup_pos_y` float DEFAULT NULL,
  `pickup_pos_z` float DEFAULT NULL,
  PRIMARY KEY (`gzone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gangzones`
--

LOCK TABLES `gangzones` WRITE;
/*!40000 ALTER TABLE `gangzones` DISABLE KEYS */;
INSERT INTO `gangzones` VALUES (2,0,1,0,0,0,250,'FFFFFF',671.469,-519.967,16.336),(3,1,1,1,0,0,150,'FFFFFF',2667.75,-1474.22,30.594),(4,0,1,0,0,1,50,'',1474.43,-1722.8,13.547);
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
  `user_id` int(10) unsigned NOT NULL,
  `skill_mehanicar` tinyint(3) NOT NULL,
  `skill_advokat` tinyint(3) NOT NULL,
  `skill_pilot` tinyint(3) NOT NULL,
  `skill_rudar` tinyint(3) NOT NULL,
  `skill_pnovca` tinyint(3) NOT NULL,
  `skill_uber` tinyint(3) NOT NULL,
  `skill_pnamjestaja` tinyint(3) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_skills`
--

LOCK TABLES `job_skills` WRITE;
/*!40000 ALTER TABLE `job_skills` DISABLE KEYS */;
INSERT INTO `job_skills` VALUES (3,0,0,0,0,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizations`
--

LOCK TABLES `organizations` WRITE;
/*!40000 ALTER TABLE `organizations` DISABLE KEYS */;
INSERT INTO `organizations` VALUES (1,'Black Dragon Triads','BDT',NULL,2,0,50,1,2,3,4,5,6,1,2,3,4,5,6,'Enforcer','Vanguard','_','_','_','_',1581.89,-2307.62,13.54,2258.06,-1080.92,1048.97,6,1,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,600,0,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertys`
--

LOCK TABLES `propertys` WRITE;
/*!40000 ALTER TABLE `propertys` DISABLE KEYS */;
INSERT INTO `propertys` VALUES (1,2,0,1,0,'almightymumitza',0,1,18,766.922,-1605.89,13.804,2468.84,-1698.33,1013.51,500000,5,0,1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ada Ciganlija',0,0,0);
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
  `user_id` int(10) unsigned NOT NULL,
  `easy_quest_1` tinyint(1) NOT NULL,
  `easy_quest_2` tinyint(1) NOT NULL,
  `easy_quest_3` tinyint(1) NOT NULL,
  `easy_quest_4` tinyint(1) NOT NULL,
  `easy_quest_5` tinyint(1) NOT NULL,
  `easy_quest_6` tinyint(1) NOT NULL,
  `easy_quest_7` tinyint(1) NOT NULL,
  `easy_quest_8` tinyint(1) NOT NULL,
  `easy_quest_9` tinyint(1) NOT NULL,
  `easy_quest_10` tinyint(1) NOT NULL,
  `easy_reward_quest_1` tinyint(1) NOT NULL,
  `easy_reward_quest_2` tinyint(1) NOT NULL,
  `easy_reward_quest_3` tinyint(1) NOT NULL,
  `easy_reward_quest_4` tinyint(1) NOT NULL,
  `easy_reward_quest_5` tinyint(1) NOT NULL,
  `easy_reward_quest_6` tinyint(1) NOT NULL,
  `easy_reward_quest_7` tinyint(1) NOT NULL,
  `easy_reward_quest_8` tinyint(1) NOT NULL,
  `easy_reward_quest_9` tinyint(1) NOT NULL,
  `easy_reward_quest_10` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
INSERT INTO `quests` VALUES (3,1,1,1,0,0,0,1,0,0,1,1,1,0,0,0,0,0,0,0,0),(8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rents`
--

LOCK TABLES `rents` WRITE;
/*!40000 ALTER TABLE `rents` DISABLE KEYS */;
INSERT INTO `rents` VALUES (1,1596.59,-2286.62,13.698,1591.16,-2279.16,13.278,85.227);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_clothes`
--

LOCK TABLES `user_clothes` WRITE;
/*!40000 ALTER TABLE `user_clothes` DISABLE KEYS */;
INSERT INTO `user_clothes` VALUES (1,1,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0),(2,3,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0),(3,4,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0),(4,5,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0),(5,6,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0),(6,7,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0),(7,8,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0,0);
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
  `lider` smallint(5) NOT NULL DEFAULT '0',
  `clan` smallint(5) NOT NULL DEFAULT '0',
  `rank` smallint(5) NOT NULL DEFAULT '0',
  `admin_lvl` tinyint(1) DEFAULT '0',
  `admin_code` int(4) DEFAULT '0',
  `xSpecAdmin` tinyint(1) DEFAULT '0',
  `helper_level` tinyint(1) DEFAULT '0',
  `vip_level` tinyint(1) DEFAULT '0',
  `spec_rank` tinyint(2) DEFAULT '0',
  `staff_min` smallint(6) DEFAULT '0',
  `vip_time` float DEFAULT '0',
  `skin_id` smallint(5) DEFAULT '0',
  `spawn` tinyint(1) DEFAULT '0',
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
  `last_login` varchar(64) CHARACTER SET utf8 DEFAULT '2',
  `reg_date` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'almightymumitza',0,'255.255.255.255','7A52DE551D859DF9E5F8F76FD3011CD28CC595EF6F8682A6FADF8BAC151ADA34',1,1,21,21,6,4,3389243,15937,400,0,1,0,0,0,0,6,1,0,0,0,2,243,0,60,0,0,0,0,0,0,0,0,0,0,0,1,-1,-1,2,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,640201,1296.21,-14.675,1493.34,1,0,0,5,'magician@zyx-ogc.com',0,'2','2','2',0,'Niko',0,0,0,0,10,0,0,0,0,1,0,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,'Niko',0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,31,0,0,69,0,0,'2019-08-29 22:52:32','28/03/2019 - 0:27:21'),(2,'Test_Sys',0,'255.255.255.255','65D334B70AB5E08544B46A434871D7C0451D6A0EDD3BABA7BAAF6641E989FED5',1,1,21,1,0,0,50000,0,0,0,3,0,0,0,0,0,0,0,0,0,0,2,0,22,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,6,'test@reg.sys',0,'2','2','2',0,'Niko',0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,'Niko',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2019-05-30 18:57:54','2019-05-30 18:50:14'),(3,'Saco',0,'255.255.255.255','05BB68A513FD40BD92104AE5E6D0F79025C36C17B598C8326AF759A77068468B',1,1,24,10,34,11,1686765,304761,30,0,52,0,0,0,0,8,1,0,0,0,1,722,0,21,0,0,7,0,0,0,1,0,1,0,0,-1,-1,-1,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,640203,862.572,-1254.31,14.818,1,0,0,2,'sacosamp@gmail.com',0,'2','2','2',0,'Niko',0,0,0,0,3,0,0,0,0,20,0,0,0,0,-1,-1,0,0,0,0,0,0,1,0,0,0,'Niko',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,510,0,10,0,10,0,0,0,0,0,0,0,0,0,0,'2019-11-06 18:30:52','2019-10-18 06:35:24'),(8,'Saco_T',0,'255.255.255.255','3B92CCADAD537D8D5B5759F38AE4A3D388B564971FCA26E9E66B22688A8DF4E0',1,1,24,1,0,0,50000,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,0,-1,-1,-1,0,-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,2,'sa@gmail.com',0,'2','2','2',0,'Niko',0,0,0,0,1,0,0,0,0,0,0,0,0,0,-1,-1,0,0,0,0,0,0,0,0,0,0,'Niko',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'2019-11-06 04:23:13','2019-10-27 03:39:53');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_salon`
--

LOCK TABLES `vehicle_salon` WRITE;
/*!40000 ALTER TABLE `vehicle_salon` DISABLE KEYS */;
INSERT INTO `vehicle_salon` VALUES (2,0,1598.7,-2272.43,13.278,94.326,1604.9,-2272.68,13.573,0,0,400,401,403,0,0,0,0,0,0,0,0,0,0,0,0,0,5,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0);
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

-- Dump completed on 2019-11-07  0:27:47
