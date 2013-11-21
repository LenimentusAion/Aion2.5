/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:56:56
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `purchase_limit`
-- ----------------------------
DROP TABLE IF EXISTS `purchase_limit`;
CREATE TABLE `purchase_limit` (
  `player_id` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `itemCount` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`,`itemId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase_limit
-- ----------------------------
