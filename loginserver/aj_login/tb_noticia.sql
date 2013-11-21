/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_login

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 21:40:07
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `tb_noticia`
-- ----------------------------
DROP TABLE IF EXISTS `tb_noticia`;
CREATE TABLE `tb_noticia` (
  `id_noticia` int(9) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `chamada` varchar(250) NOT NULL,
  `noticia` text,
  `imagem` varchar(150) DEFAULT NULL,
  `autor` varchar(150) DEFAULT NULL,
  `data_cadastro` date NOT NULL,
  `status_noticia` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_noticia
-- ----------------------------
INSERT INTO tb_noticia VALUES ('1', 'Welcome to Aion Java Free Private Server!', '', '<p><font face=\"Tahoma\" size=\"2\"><span style=\"font-weight: bold;\" class=\"titlehd\">Account Registration</span><br><br>Create your Account: <a href=\"http://localhost/register.php\" class=\"linkY\">Click Here to Register</a><br><br><span style=\"font-weight: bold;\" class=\"titlehd\">Download and Install Aion</span><br><br>1. Download &amp; Install NCSoft Launcher: <a href=\"http://us.ncsoft.com/en/launcher/ncsoft-launcher.html\" class=\"linkY\">Click Here</a><br><br>2. Make sure the Region is North America (File-&gt;Settings-&gt;Advance) in your NCSoft Launcher.<br><br>3. Install Aion using the NCSoft Launcher.<br><br><br><span style=\"font-weight: bold;\" class=\"titlehd\">Connecting to Aion Java Free Private Server:</span><br><br>1. Download &amp; Install Game Launcher: <a href=\"http://localhost/PrivateServerInstaller.exe\" class=\"linkY\">Click Here</a><br><br>2. Run AionJfree Launcher to connect!</font></p>-------------------<br><br>Have fun, Good luck to you!<br><br>', '', 'Administrator', '2011-11-29', '1');
