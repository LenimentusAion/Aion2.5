/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:55:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `custom_spawns`
-- ----------------------------
DROP TABLE IF EXISTS `custom_spawns`;
CREATE TABLE `custom_spawns` (
  `spawn_id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `npc_id` int(11) NOT NULL,
  `respawn` tinyint(1) NOT NULL DEFAULT '0',
  `map_id` int(11) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `h` tinyint(8) NOT NULL,
  `spawned` tinyint(1) NOT NULL DEFAULT '0',
  `staticid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spawn_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_spawns
-- ----------------------------
INSERT INTO custom_spawns VALUES ('1', '82638', '81686', 'default', '216183', '1', '300170000', '544.994', '1334.97', '223.529', '77', '0', '0');