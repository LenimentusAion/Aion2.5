/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_login

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 21:40:02
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_enquete`
-- ----------------------------
DROP TABLE IF EXISTS `tb_enquete`;
CREATE TABLE `tb_enquete` (
  `id_enquete` int(9) NOT NULL AUTO_INCREMENT,
  `pergunta` varchar(40) NOT NULL,
  `resposta1` varchar(35) DEFAULT NULL,
  `votos_resposta1` int(6) DEFAULT '0',
  `resposta2` varchar(35) DEFAULT NULL,
  `votos_resposta2` int(6) DEFAULT '0',
  `resposta3` varchar(35) DEFAULT NULL,
  `votos_resposta3` int(6) DEFAULT '0',
  `status_enquete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_enquete`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_enquete
-- ----------------------------
INSERT INTO tb_enquete VALUES ('1', 'This is just a test: are you like this?', 'I want more function.', '5', 'I want more style.', '5', 'I dont like...', '1', '1');
