/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_server

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:57:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `siege_log`
-- ----------------------------
DROP TABLE IF EXISTS `siege_log`;
CREATE TABLE `siege_log` (
  `log_uuid` bigint(20) NOT NULL AUTO_INCREMENT,
  `legion_name` varchar(255) NOT NULL DEFAULT '',
  `action` enum('CAPTURE','DEFEND') NOT NULL,
  `tstamp` bigint(20) NOT NULL,
  `siegeloc_id` bigint(20) NOT NULL,
  PRIMARY KEY (`log_uuid`)
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of siege_log
-- ----------------------------
INSERT INTO siege_log VALUES ('1', 'Balaurs', 'CAPTURE', '0', '1251');
INSERT INTO siege_log VALUES ('2', 'Balaurs', 'CAPTURE', '0', '3011');
INSERT INTO siege_log VALUES ('3', 'Balaurs', 'CAPTURE', '0', '3012');
INSERT INTO siege_log VALUES ('4', 'Balaurs', 'CAPTURE', '0', '3012');
INSERT INTO siege_log VALUES ('5', 'Balaurs', 'CAPTURE', '0', '3012');
INSERT INTO siege_log VALUES ('6', 'Balaurs', 'CAPTURE', '0', '3023');
INSERT INTO siege_log VALUES ('7', 'Balaurs', 'CAPTURE', '0', '3023');
INSERT INTO siege_log VALUES ('8', 'Balaurs', 'CAPTURE', '0', '3023');
INSERT INTO siege_log VALUES ('9', 'Balaurs', 'CAPTURE', '0', '3021');
INSERT INTO siege_log VALUES ('10', 'Balaurs', 'CAPTURE', '0', '1212');
INSERT INTO siege_log VALUES ('11', 'Balaurs', 'CAPTURE', '0', '1212');
INSERT INTO siege_log VALUES ('12', 'Balaurs', 'CAPTURE', '0', '1212');
INSERT INTO siege_log VALUES ('13', 'Balaurs', 'CAPTURE', '0', '2021');
INSERT INTO siege_log VALUES ('14', 'Balaurs', 'CAPTURE', '0', '2023');
INSERT INTO siege_log VALUES ('15', 'Balaurs', 'CAPTURE', '0', '2023');
INSERT INTO siege_log VALUES ('16', 'Balaurs', 'CAPTURE', '0', '2023');
INSERT INTO siege_log VALUES ('17', 'Balaurs', 'CAPTURE', '0', '2023');
INSERT INTO siege_log VALUES ('18', 'Balaurs', 'CAPTURE', '0', '2022');
INSERT INTO siege_log VALUES ('19', 'Balaurs', 'CAPTURE', '0', '2022');
INSERT INTO siege_log VALUES ('20', 'Balaurs', 'CAPTURE', '0', '2022');
INSERT INTO siege_log VALUES ('21', 'Balaurs', 'CAPTURE', '0', '2022');
INSERT INTO siege_log VALUES ('22', 'Balaurs', 'CAPTURE', '0', '2013');
INSERT INTO siege_log VALUES ('23', 'Balaurs', 'CAPTURE', '0', '2013');
INSERT INTO siege_log VALUES ('24', 'Balaurs', 'CAPTURE', '0', '2013');
INSERT INTO siege_log VALUES ('25', 'Balaurs', 'CAPTURE', '0', '2013');
INSERT INTO siege_log VALUES ('26', 'Balaurs', 'CAPTURE', '0', '2011');
INSERT INTO siege_log VALUES ('27', 'Balaurs', 'CAPTURE', '0', '2012');
INSERT INTO siege_log VALUES ('28', 'Balaurs', 'CAPTURE', '0', '2012');
INSERT INTO siege_log VALUES ('29', 'Balaurs', 'CAPTURE', '0', '2012');
INSERT INTO siege_log VALUES ('30', 'Balaurs', 'CAPTURE', '0', '2012');
INSERT INTO siege_log VALUES ('31', 'Balaurs', 'CAPTURE', '0', '1141');
INSERT INTO siege_log VALUES ('32', 'Balaurs', 'CAPTURE', '0', '1142');
INSERT INTO siege_log VALUES ('33', 'Balaurs', 'CAPTURE', '0', '1142');
INSERT INTO siege_log VALUES ('34', 'Balaurs', 'CAPTURE', '0', '1142');
INSERT INTO siege_log VALUES ('35', 'Balaurs', 'CAPTURE', '0', '1142');
INSERT INTO siege_log VALUES ('36', 'Balaurs', 'CAPTURE', '0', '1145');
INSERT INTO siege_log VALUES ('37', 'Balaurs', 'CAPTURE', '0', '1145');
INSERT INTO siege_log VALUES ('38', 'Balaurs', 'CAPTURE', '0', '1145');
INSERT INTO siege_log VALUES ('39', 'Balaurs', 'CAPTURE', '0', '1145');
INSERT INTO siege_log VALUES ('40', 'Balaurs', 'CAPTURE', '0', '1146');
INSERT INTO siege_log VALUES ('41', 'Balaurs', 'CAPTURE', '0', '1146');
INSERT INTO siege_log VALUES ('42', 'Balaurs', 'CAPTURE', '0', '1146');
INSERT INTO siege_log VALUES ('43', 'Balaurs', 'CAPTURE', '0', '1146');
INSERT INTO siege_log VALUES ('44', 'Balaurs', 'CAPTURE', '0', '1011');
INSERT INTO siege_log VALUES ('45', 'Balaurs', 'CAPTURE', '0', '1224');
INSERT INTO siege_log VALUES ('46', 'Balaurs', 'CAPTURE', '0', '1224');
INSERT INTO siege_log VALUES ('47', 'Balaurs', 'CAPTURE', '0', '1224');
INSERT INTO siege_log VALUES ('48', 'Balaurs', 'CAPTURE', '0', '1224');
INSERT INTO siege_log VALUES ('49', 'Balaurs', 'CAPTURE', '0', '1224');
INSERT INTO siege_log VALUES ('50', 'Balaurs', 'CAPTURE', '0', '1231');
INSERT INTO siege_log VALUES ('51', 'Balaurs', 'CAPTURE', '0', '1241');
INSERT INTO siege_log VALUES ('52', 'Balaurs', 'CAPTURE', '0', '1243');
INSERT INTO siege_log VALUES ('53', 'Balaurs', 'CAPTURE', '0', '1243');
INSERT INTO siege_log VALUES ('54', 'Balaurs', 'CAPTURE', '0', '1243');
INSERT INTO siege_log VALUES ('55', 'Balaurs', 'CAPTURE', '0', '1243');
INSERT INTO siege_log VALUES ('56', 'Balaurs', 'CAPTURE', '0', '1243');
INSERT INTO siege_log VALUES ('57', 'Balaurs', 'CAPTURE', '0', '1242');
INSERT INTO siege_log VALUES ('58', 'Balaurs', 'CAPTURE', '0', '1242');
INSERT INTO siege_log VALUES ('59', 'Balaurs', 'CAPTURE', '0', '1242');
INSERT INTO siege_log VALUES ('60', 'Balaurs', 'CAPTURE', '0', '1242');
INSERT INTO siege_log VALUES ('61', 'Balaurs', 'CAPTURE', '0', '1242');
INSERT INTO siege_log VALUES ('62', 'Balaurs', 'CAPTURE', '0', '1221');