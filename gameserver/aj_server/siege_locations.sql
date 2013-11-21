/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:57:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `siege_locations`
-- ----------------------------
DROP TABLE IF EXISTS `siege_locations`;
CREATE TABLE `siege_locations` (
  `id` int(11) NOT NULL,
  `race` enum('ELYOS','ASMODIANS','BALAUR') NOT NULL,
  `legion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of siege_locations
-- ----------------------------
INSERT INTO siege_locations VALUES ('1221', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1223', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1222', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1231', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1224', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1232', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('2021', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1233', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('2023', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('2022', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1241', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1242', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1243', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1134', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1135', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1254', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1132', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1253', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1133', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1252', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1251', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1131', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('2011', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('2111', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('2012', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('2013', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1146', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1145', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1144', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1143', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1142', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1141', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1016', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1017', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1018', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1019', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1020', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1011', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1012', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1013', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1014', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1015', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('3023', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('3022', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('3021', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('3011', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('3013', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('3012', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1211', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1214', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('3111', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1215', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1212', 'BALAUR', '0');
INSERT INTO siege_locations VALUES ('1213', 'BALAUR', '0');