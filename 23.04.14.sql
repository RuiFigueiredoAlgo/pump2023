-- --------------------------------------------------------
-- Host:                         192.168.1.175
-- Server version:               10.6.12-MariaDB-0ubuntu0.22.04.1 - Ubuntu 22.04
-- Server OS:                    debian-linux-gnu
-- HeidiSQL Version:             12.4.0.6670
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for Pump
DROP DATABASE IF EXISTS `Pump`;
CREATE DATABASE IF NOT EXISTS `Pump` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `Pump`;

-- Dumping structure for table Pump.FinraVolumes23h
DROP TABLE IF EXISTS `FinraVolumes23h`;
CREATE TABLE IF NOT EXISTS `FinraVolumes23h` (
  `IdSeq` int(10) unsigned NOT NULL,
  `IdStock` int(10) unsigned DEFAULT NULL,
  `Data` date NOT NULL,
  `TotalVolume` int(10) unsigned NOT NULL,
  `ShortVolume` int(10) unsigned NOT NULL,
  `ShortExemptVolume` int(10) unsigned NOT NULL,
  `ShortPerc` smallint(5) unsigned NOT NULL,
  `ShortExemptPerc` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`IdSeq`),
  UNIQUE KEY `IdSeq_UNIQUE` (`IdSeq`),
  UNIQUE KEY `Unico` (`IdStock`,`Data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table Pump.FinraVolumes23h: ~0 rows (approximately)

-- Dumping structure for table Pump.Stock
DROP TABLE IF EXISTS `Stock`;
CREATE TABLE IF NOT EXISTS `Stock` (
  `IdStock` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ticker` varchar(6) NOT NULL,
  `CompanyName` varchar(100) DEFAULT 'Vazio',
  `ThresHoldList` tinyint(1) unsigned NOT NULL DEFAULT 100,
  `SSR` tinyint(1) unsigned NOT NULL DEFAULT 100,
  UNIQUE KEY `idStock_UNIQUE` (`IdStock`),
  UNIQUE KEY `Ticker_UNIQUE` (`Ticker`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table Pump.Stock: ~0 rows (approximately)

-- Dumping structure for table Pump.TempShort
DROP TABLE IF EXISTS `TempShort`;
CREATE TABLE IF NOT EXISTS `TempShort` (
  `Data` date NOT NULL,
  `Ticker` varchar(6) NOT NULL,
  `ShortVolume` int(10) unsigned NOT NULL,
  `ShortExemptVolume` int(10) unsigned NOT NULL,
  `TotalVolume` int(10) unsigned NOT NULL,
  `IdSeq` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`IdSeq`),
  UNIQUE KEY `IdSeq_UNIQUE` (`IdSeq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table Pump.TempShort: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
