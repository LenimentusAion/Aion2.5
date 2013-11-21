/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:55:20
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `inventory`
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory` (
  `itemUniqueId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `itemCount` bigint(20) NOT NULL DEFAULT '0',
  `itemColor` int(11) NOT NULL DEFAULT '0',
  `itemOwner` int(11) NOT NULL,
  `itemCreator` varchar(50) NOT NULL,
  `itemCreationTime` timestamp NOT NULL DEFAULT '2010-01-01 00:00:01',
  `itemExistTime` bigint(20) NOT NULL DEFAULT '0',
  `itemTradeTime` int(11) NOT NULL DEFAULT '0',
  `isEquiped` tinyint(1) NOT NULL DEFAULT '0',
  `isSoulBound` tinyint(1) NOT NULL DEFAULT '0',
  `slot` int(11) NOT NULL DEFAULT '0',
  `itemLocation` tinyint(1) DEFAULT '0',
  `enchant` int(1) DEFAULT '0',
  `itemSkin` int(11) NOT NULL DEFAULT '0',
  `fusionedItem` int(11) DEFAULT '0',
  `optionalSocket` int(1) DEFAULT '0',
  `optionalFusionSocket` int(1) DEFAULT '0',
  PRIMARY KEY (`itemUniqueId`),
  KEY `item_owner` (`itemOwner`),
  KEY `item_location` (`itemLocation`),
  KEY `is_equiped` (`isEquiped`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of inventory
-- ----------------------------
