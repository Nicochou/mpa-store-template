-- --------------------------------------------------------
-- Hôte :                        localhost
-- Version du serveur:           5.7.24 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Listage de la structure de la base pour admobdbtest
CREATE DATABASE IF NOT EXISTS `admobdbtest` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `admobdbtest`;

-- Listage de la structure de la table admobdbtest. customers
CREATE TABLE IF NOT EXISTS `customers` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `customerName` varchar(100) DEFAULT NULL,
  `customerLastname` varchar(100) DEFAULT NULL,
  `customerAddress` varchar(250) DEFAULT NULL,
  `login` varchar(100) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  PRIMARY KEY (`customerId`),
  KEY `FOREIGN KEY` (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table admobdbtest. orderdetails
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `detailId` int(11) NOT NULL AUTO_INCREMENT,
  `detailOrderId` int(11) DEFAULT NULL,
  `detailProductId` int(11) unsigned DEFAULT NULL,
  `detailName` varchar(250) DEFAULT NULL,
  `detailPrice` decimal(15,2) DEFAULT NULL,
  `detailQuantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`detailId`),
  KEY `FOREIGN KEY` (`detailProductId`),
  KEY `FOREIGN KEY2` (`detailOrderId`),
  CONSTRAINT `FK_orderdetails_orders` FOREIGN KEY (`detailOrderId`) REFERENCES `orders` (`orderId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orderdetails_products` FOREIGN KEY (`detailProductId`) REFERENCES `products` (`productId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table admobdbtest. orders
CREATE TABLE IF NOT EXISTS `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` int(11) DEFAULT NULL,
  `orderCustomerId` int(11) DEFAULT NULL,
  `orderAmount` decimal(15,2) DEFAULT NULL,
  `orderAddress` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  KEY `FOREIGN KEY` (`orderId`),
  KEY `FOREIGN KEY2` (`orderCustomerId`),
  CONSTRAINT `FK_orders_customers` FOREIGN KEY (`orderCustomerId`) REFERENCES `customers` (`customerId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

-- Listage de la structure de la table admobdbtest. products
CREATE TABLE IF NOT EXISTS `products` (
  `productId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productName` varchar(250) DEFAULT NULL,
  `productPrice` decimal(10,2) DEFAULT NULL,
  `productStock` smallint(6) DEFAULT NULL,
  `productImage` varchar(250) DEFAULT NULL,
  `productDesc` text,
  PRIMARY KEY (`productId`),
  KEY `FOREIGN KEY` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Les données exportées n'étaient pas sélectionnées.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
