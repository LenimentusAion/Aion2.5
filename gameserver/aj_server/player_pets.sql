/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:56:26
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `player_pets`
-- ----------------------------
DROP TABLE IF EXISTS `player_pets`;
CREATE TABLE `player_pets` (
  `player_id` int(11) NOT NULL,
  `pet_id` int(11) NOT NULL,
  `decoration` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `birthday` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `feed_count` smallint(6) NOT NULL DEFAULT '0',
  `love_count` smallint(6) NOT NULL DEFAULT '0',
  `exp` smallint(6) NOT NULL DEFAULT '0',
  `feed_state` enum('HUNGRY','CONTENT','SEMIFULL','FULL') NOT NULL DEFAULT 'HUNGRY',
  `cd_started` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`player_id`,`pet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of player_pets
-- ----------------------------
