/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:56:08
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `player_emotions`
-- ----------------------------
DROP TABLE IF EXISTS `player_emotions`;
CREATE TABLE `player_emotions` (
  `player_id` int(11) NOT NULL,
  `emotion_id` int(11) NOT NULL,
  `emotion_expires_time` bigint(20) NOT NULL DEFAULT '0',
  `emotion_date` timestamp NOT NULL DEFAULT '2010-01-01 00:00:01',
  PRIMARY KEY (`player_id`,`emotion_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_emotions
-- ----------------------------
