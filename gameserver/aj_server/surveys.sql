/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:57:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `surveys`
-- ----------------------------
DROP TABLE IF EXISTS `surveys`;
CREATE TABLE `surveys` (
  `survey_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `message` varchar(1024) NOT NULL,
  `select_text` varchar(50) NOT NULL,
  `itemId` int(11) NOT NULL DEFAULT '0',
  `itemCount` bigint(20) NOT NULL DEFAULT '0',
  `itemTradeTime` int(11) NOT NULL DEFAULT '0',
  `itemExistTime` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`survey_id`),
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of surveys
-- ----------------------------
