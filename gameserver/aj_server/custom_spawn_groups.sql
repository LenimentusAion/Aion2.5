/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:55:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `custom_spawn_groups`
-- ----------------------------
DROP TABLE IF EXISTS `custom_spawn_groups`;
CREATE TABLE `custom_spawn_groups` (
  `admin_id` int(11) NOT NULL,
  `group_name` varchar(255) NOT NULL,
  `spawned` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`admin_id`,`group_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of custom_spawn_groups
-- ----------------------------
INSERT INTO custom_spawn_groups VALUES ('81686', 'default', '1');
