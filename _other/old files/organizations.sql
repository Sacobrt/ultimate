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
INSERT INTO `organizations` VALUES (1,'Los Sanatos Police Deparment','LSPD',NULL,1,0,50,280,281,282,302,310,283,307,307,307,307,307,309,'Cadet','Officer','Sergeant','','Commander','Chief',1550.58,-1671.44,13.366,246.784,63.9,1003.64,6,1,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(2,'Federal Bureau of Investigation','FBI',NULL,1,0,40,165,165,166,163,164,286,306,306,306,306,306,306,'Agent','Agent II','Agent III','Chief','Deputy','Director',1219.23,-1811.71,16.594,246.784,63.9,1003.64,6,2,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(3,'Black Dragon Triads','BDT',NULL,3,0,50,117,117,118,112,111,120,169,169,169,169,169,169,'Ordinary','','Dragon II','Enforcer','Deputy','Dragon',1259.64,-785.43,92.03,93.926,643.12,1392.06,6,3,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(4,'Grove Street Family','GSF',NULL,2,0,50,105,107,106,269,270,271,195,195,195,195,195,195,'Soulja','Thug','Homeboy','Gangsta','Origianal','Top O.G',2495.41,-1691.14,14.766,2258.06,-1080.92,1048.97,6,4,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(5,'Ballas Family','Ball',NULL,2,0,50,103,102,104,290,293,296,13,13,13,13,13,13,'Thug','Solider','','Warlord','','Top O.G',1912.62,-1070.64,24.237,2258.06,-1080.92,1048.97,6,5,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(6,'The Elitez Mafia','LSV',NULL,2,0,50,108,108,109,110,293,292,13,13,13,13,13,13,'Novato','Soldato','Capo','Sottocapo','Diestra','Donn',2385.34,-1892.35,13.939,93.926,643.12,1392.06,6,6,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(7,'La Cosa Nostra','LCN',NULL,3,0,50,125,127,126,111,124,113,216,216,216,216,216,216,'','Soliders','Consig','Underboss','Boss','Godfather',1122.91,-2036.76,69.893,93.926,643.12,1392.06,6,7,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(8,'Yakuza','Yaku',NULL,3,0,50,121,121,122,123,208,294,224,224,224,225,225,225,'','','','','','',1317.77,-2637.7,17.547,93.926,643.12,1392.06,6,8,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(9,'Russian Mafia','RM',NULL,3,0,50,112,112,127,123,111,272,216,216,216,216,216,216,'','Sovyak','Brodyaga','Brigadier','Sovietnik','Pakhan',1566.96,201.428,35.725,93.926,643.12,1392.06,6,9,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(11,'Los Santos Vagos','LV',NULL,2,0,50,108,108,109,110,293,292,65,65,65,65,65,65,'Lil Ese','Soldado','Hermano','Corner','El Padre','El Jefe',2279.28,-1916.92,14.136,2258.06,-1080.92,1048.97,6,10,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0),(12,'The Escobar Cartel','TEC',NULL,3,0,50,1,2,3,4,5,6,224,224,224,224,224,224,'Solider','Capo','Consiglie','Mafioso','Vendetta','Godfather',1423.53,-1045.07,23.828,93.926,643.12,1392.06,6,11,0,0,0,0,0,0,0,500,0,0,0,0,0,0,0,0,0,0,0,-1,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `organizations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-14 19:39:28
