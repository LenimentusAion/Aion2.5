/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:56:19
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `player_motions`
-- ----------------------------
DROP TABLE IF EXISTS `player_motions`;
CREATE TABLE `player_motions` (
  `player_id` int(11) NOT NULL,
  `motion_state` int(11) NOT NULL,
  `motion_active` tinyint(1) NOT NULL DEFAULT '0',
  `motion_expires_time` bigint(20) NOT NULL DEFAULT '0',
  `motion_date` timestamp NOT NULL DEFAULT '2011-01-01 00:00:01',
  PRIMARY KEY (`player_id`,`motion_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_motions
-- ----------------------------
