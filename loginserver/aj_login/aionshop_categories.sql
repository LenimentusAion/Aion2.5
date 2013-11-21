/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_login

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:53:33
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `aionshop_categories`
-- ----------------------------
DROP TABLE IF EXISTS `aionshop_categories`;
CREATE TABLE `aionshop_categories` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aionshop_categories
-- ----------------------------
INSERT INTO aionshop_categories VALUES ('3', 'Tickets');
INSERT INTO aionshop_categories VALUES ('4', 'Armor');
INSERT INTO aionshop_categories VALUES ('5', 'Enchants');
INSERT INTO aionshop_categories VALUES ('6', 'Manastones');
INSERT INTO aionshop_categories VALUES ('7', 'Wings');
INSERT INTO aionshop_categories VALUES ('8', 'Consumables');
INSERT INTO aionshop_categories VALUES ('9', 'Weapons');
INSERT INTO aionshop_categories VALUES ('10', 'Godstones');
INSERT INTO aionshop_categories VALUES ('11', 'Foods');
INSERT INTO aionshop_categories VALUES ('12', 'Costumes');
INSERT INTO aionshop_categories VALUES ('13', 'Hat\'s');
INSERT INTO aionshop_categories VALUES ('14', 'Accesories');
INSERT INTO aionshop_categories VALUES ('15', 'Dyes');
INSERT INTO aionshop_categories VALUES ('16', 'Pets');
INSERT INTO aionshop_categories VALUES ('18', 'FUN');
INSERT INTO aionshop_categories VALUES ('19', 'Offerts');
