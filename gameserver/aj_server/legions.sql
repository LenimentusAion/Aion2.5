/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:55:30
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `legions`
-- ----------------------------
DROP TABLE IF EXISTS `legions`;
CREATE TABLE `legions` (
  `id` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `oldrank` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1',
  `contribution_points` int(11) NOT NULL DEFAULT '0',
  `deputy_permission1` int(1) NOT NULL DEFAULT '0',
  `deputy_permission2` int(1) NOT NULL DEFAULT '0',
  `legionary_permission1` int(1) NOT NULL DEFAULT '0',
  `legionary_permission2` int(1) NOT NULL DEFAULT '0',
  `centurion_permission1` int(1) NOT NULL DEFAULT '0',
  `centurion_permission2` int(1) NOT NULL DEFAULT '0',
  `volunteer_permission1` int(1) NOT NULL DEFAULT '0',
  `volunteer_permission2` int(1) NOT NULL DEFAULT '0',
  `disband_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of legions
-- ----------------------------

