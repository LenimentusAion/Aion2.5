/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:56:11
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `player_instancecd`
-- ----------------------------
DROP TABLE IF EXISTS `player_instancecd`;
CREATE TABLE `player_instancecd` (
  `playerId` int(11) NOT NULL DEFAULT '0',
  `instanceMapId` int(11) NOT NULL DEFAULT '0',
  `CDEnd` timestamp NULL DEFAULT NULL,
  `instanceId` int(5) NOT NULL,
  `groupId` int(11) DEFAULT '0',
  PRIMARY KEY (`playerId`,`instanceMapId`,`instanceId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_instancecd
-- ----------------------------
