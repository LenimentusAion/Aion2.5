/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_login

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:53:53
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `aionshop_transactions`
-- ----------------------------
DROP TABLE IF EXISTS `aionshop_transactions`;
CREATE TABLE `aionshop_transactions` (
  `transaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) NOT NULL,
  `item_unique_id` int(11) NOT NULL,
  `buy_timestamp` bigint(20) NOT NULL,
  `player_id` bigint(20) NOT NULL,
  `gift_receiver` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=377 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aionshop_transactions
-- ----------------------------
