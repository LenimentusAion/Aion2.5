/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:55:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `npc_shouts`
-- ----------------------------
DROP TABLE IF EXISTS `npc_shouts`;
CREATE TABLE `npc_shouts` (
  `message_id` int(11) NOT NULL,
  `npc_id` int(11) NOT NULL,
  `event` enum('NONE','ATK','CAST','DESPAWN','DIE','DIRECTION','FAIL','FLEE','HELP','IDLE','LEAVE','QUEST','RESETHATE','SEEUSER','SKILL','SLEEP','START','SWICHTARGET','WAKEUP','WAYPOINT','WIN','WOUNDED','YELL') NOT NULL DEFAULT 'NONE',
  `param` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`message_id`,`npc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of npc_shouts
-- ----------------------------
