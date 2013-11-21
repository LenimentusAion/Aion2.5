/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50517
Source Host           : localhost:3306
Source Database       : aj_login

Target Server Type    : MYSQL
Target Server Version : 50517
File Encoding         : 65001

Date: 2011-11-29 15:53:48
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `aionshop_items`
-- ----------------------------
DROP TABLE IF EXISTS `aionshop_items`;
CREATE TABLE `aionshop_items` (
  `itemUniqueId` bigint(20) NOT NULL AUTO_INCREMENT,
  `itemTemplateId` bigint(20) NOT NULL,
  `itemCount` int(11) NOT NULL,
  `itemCategory` int(11) NOT NULL DEFAULT '19',
  `itemPrice` int(11) NOT NULL DEFAULT '50',
  `itemName` varchar(255) NOT NULL,
  `itemDesc` varchar(255) NOT NULL,
  `itemEyecatch` tinyint(1) DEFAULT '0',
  `itemClassRestrict` varchar(255) DEFAULT NULL,
  `itemServerRestrict` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemUniqueId`)
) ENGINE=MyISAM AUTO_INCREMENT=319 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aionshop_items
-- ----------------------------
INSERT INTO aionshop_items VALUES ('6', '169650000', '1', '3', '100', 'Plastic Surgery', 'Plastic Surgery', '0', null, null);
INSERT INTO aionshop_items VALUES ('7', '169670000', '1', '3', '1000', 'Name Change', 'Name Change', '0', null, null);
INSERT INTO aionshop_items VALUES ('8', '169680000', '1', '3', '500', 'Legion Name Change', 'Legion Name Change', '0', null, null);
INSERT INTO aionshop_items VALUES ('9', '187000037', '1', '7', '3000', 'Lucky Wings', 'Lucky Wings', '0', null, null);
INSERT INTO aionshop_items VALUES ('10', '187060007', '1', '7', '500', 'Garkbinerk\'s Black Cloud Wings', 'Garkbinerk\'s Black Cloud Wings', '0', null, null);
INSERT INTO aionshop_items VALUES ('11', '187000031', '1', '7', '500', 'Orichalcum Key Wings', 'Orichalcum Key Wings', '0', null, null);
INSERT INTO aionshop_items VALUES ('12', '187000018', '1', '7', '1000', 'Storm Wings\r\n', 'Storm Wings', '0', null, null);
INSERT INTO aionshop_items VALUES ('13', '187000024', '1', '7', '500', 'Noble Chief Operative\'s Wings', 'Noble Chief Operative\'s Wings', '0', null, null);
INSERT INTO aionshop_items VALUES ('14', '187000011', '1', '7', '500', 'Noble Agony Wing Feather (Asmodian)', 'Noble Agony Wing Feather (Asmodian)', '0', null, null);
INSERT INTO aionshop_items VALUES ('15', '187000010', '1', '7', '500', 'Haroshunerk\'s Noble Wing Feather (Elyos)\r\n', 'Haroshunerk\'s Noble Wing Feather (Elyos)', '0', null, null);
INSERT INTO aionshop_items VALUES ('16', '187000007', '1', '7', '500', 'Sigyn\'s Wing Feather ', 'Sigyn\'s Wing Feather ', '0', null, null);
INSERT INTO aionshop_items VALUES ('17', '187000006', '1', '7', '500', 'Nestor\'s Wing Feather \r\n', 'Nestor\'s Wing Feather \r\n', '0', null, null);
INSERT INTO aionshop_items VALUES ('18', '166000190', '10', '5', '100', 'L190 Enchantment Stone (15)', 'L190 Enchantment Stone (15)', '0', null, null);
INSERT INTO aionshop_items VALUES ('19', '166000150', '15', '5', '100', 'L150 Enchantment Stone (15)', 'L150 Enchantment Stone (15)', '0', null, null);
INSERT INTO aionshop_items VALUES ('20', '166000140', '20', '5', '100', 'L140 Enchantment Stone (15)\r\n', 'L140 Enchantment Stone (15)\r\n', '0', null, null);
INSERT INTO aionshop_items VALUES ('21', '167000551', '20', '6', '100', 'Manastone HP + 95 (10)\r\nManastone HP + 95 (10)', 'Manastone HP + 95 (10)', '0', null, null);
INSERT INTO aionshop_items VALUES ('22', '167000552', '20', '6', '100', 'Manastone MP +95 (10)\r\n', 'Manastone MP +95 (10)\r\n', '0', null, null);
INSERT INTO aionshop_items VALUES ('23', '167000555', '20', '6', '100', 'Manastone Magic Boost +27 (10)', '', '0', null, null);
INSERT INTO aionshop_items VALUES ('24', '167000558', '20', '6', '100', 'Manastone Crit Strike +17  (10)\r\nManastone Crit Strike +17  (10)', 'Manastone Crit Strike +17  (10)', '0', null, null);
INSERT INTO aionshop_items VALUES ('25', '167000554', '20', '6', '100', 'Manastone Evasion +17 (10)', 'Manastone Evasion +17 (10)', '0', null, null);
INSERT INTO aionshop_items VALUES ('26', '167000557', '20', '6', '100', 'Manastone: Block +27 (10)', 'Manastone: Block +27 (10)', '0', null, null);
INSERT INTO aionshop_items VALUES ('27', '167000560', '20', '6', '100', 'Manastone: Magical Accuracy +14 (10)', 'Manastone: Magical Accuracy +14 (10)', '0', null, null);
INSERT INTO aionshop_items VALUES ('28', '167000556', '20', '6', '100', 'Manastone: Parry +27 (10)', 'Manastone: Parry +27 (10)', '0', null, null);
INSERT INTO aionshop_items VALUES ('29', '167000561', '20', '6', '100', 'Manastone: Resist Magic +14 (10)', '', '0', null, null);
INSERT INTO aionshop_items VALUES ('30', '168000052', '1', '10', '1000', 'Godstone: Kaisinel\'s Terror (Elyos)', 'Godstone: Kaisinel\'s Terror (Elyos)', '0', null, null);
INSERT INTO aionshop_items VALUES ('31', '168000056', '1', '10', '1000', 'Godstone: Lumiel\'s Magical Power (Asmodian)', 'Godstone: Lumiel\'s Magical Power (Asmodian)', '0', null, null);
INSERT INTO aionshop_items VALUES ('32', '168000118', '1', '10', '1000', 'Godstone: Ereshkigal\'s Honor', 'Godstone: Ereshkigal\'s Honor', '0', null, null);
INSERT INTO aionshop_items VALUES ('33', '168000051', '1', '10', '1000', 'Godstone: Nezekan\'s Valiance (Elyos)', 'Godstone: Nezekan\'s Valiance (Elyos)', '0', null, null);
INSERT INTO aionshop_items VALUES ('34', '168000058', '1', '10', '1000', 'Godstone: Triniel\'s Coolness (Asmodian)', 'Godstone: Triniel\'s Coolness (Asmodian)', '0', null, null);
INSERT INTO aionshop_items VALUES ('35', '169220032', '1', '15', '20', 'True Black', 'True Black', '0', null, null);
INSERT INTO aionshop_items VALUES ('36', '169220028', '1', '15', '20', 'True White', 'True White', '0', null, null);
INSERT INTO aionshop_items VALUES ('37', '169240002', '1', '15', '20', 'Omblic Petal', 'Omblic Petal', '0', null, null);
INSERT INTO aionshop_items VALUES ('38', '169240009', '1', '15', '20', 'Kirka Petal', 'Kirka Petal', '0', null, null);
INSERT INTO aionshop_items VALUES ('39', '169240010', '1', '15', '20', 'Brommel Petal', 'Brommel Petal', '0', null, null);
INSERT INTO aionshop_items VALUES ('40', '100000934', '1', '9', '1500', 'Archon Brigade General\'s Sword', 'Archon Brigade General\'s Sword', '0', null, null);
INSERT INTO aionshop_items VALUES ('41', '100000921', '1', '9', '1000', 'Enraged Mastarius\'s Sword', 'Enraged Mastarius\'s Sword', '0', null, null);
INSERT INTO aionshop_items VALUES ('42', '100000916', '1', '9', '1000', 'Enraged Veille\'s Sword', 'Enraged Veille\'s Sword', '0', null, null);
INSERT INTO aionshop_items VALUES ('43', '100100704', '1', '9', '1500', 'Archon Brigade General\'s Warhammer\r\n', 'Archon Brigade General\'s Warhammer\r\n', '0', null, null);
INSERT INTO aionshop_items VALUES ('44', '100100691', '1', '9', '1000', 'Enraged Mastarius\'s Warhammer\r\nEnraged Mastarius\'s Warhammer', 'Enraged Mastarius\'s Warhammer', '0', null, null);
INSERT INTO aionshop_items VALUES ('45', '100100686', '1', '9', '1000', 'Enraged Veille\'s Warhammer', 'Enraged Veille\'s Warhammer', '0', null, null);
INSERT INTO aionshop_items VALUES ('46', '100200834', '1', '9', '1500', 'Archon Brigade General\'s Dagger', 'Archon Brigade General\'s Dagger', '0', null, null);
INSERT INTO aionshop_items VALUES ('47', '100200821', '1', '9', '1000', 'Enraged Mastarius\'s Dagger', 'Enraged Mastarius\'s Dagger', '0', null, null);
INSERT INTO aionshop_items VALUES ('48', '100200816', '1', '9', '1000', 'Enraged Veille\'s Dagger', 'Enraged Veille\'s Dagger', '0', null, null);
INSERT INTO aionshop_items VALUES ('49', '100500725', '1', '9', '1500', 'Archon Brigade General\'s Jewel', 'Archon Brigade General\'s Jewel', '0', null, null);
INSERT INTO aionshop_items VALUES ('50', '100500712', '1', '9', '1000', 'Enraged Mastarius\'s Jewel', 'Enraged Mastarius\'s Jewel', '0', null, null);
INSERT INTO aionshop_items VALUES ('51', '100500707', '1', '9', '1000', 'Enraged Veille\'s Jewel', 'Enraged Veille\'s Jewel', '0', null, null);
INSERT INTO aionshop_items VALUES ('52', '100600782', '1', '9', '1500', 'Archon Brigade General\'s Tome', 'Archon Brigade General\'s Tome', '0', null, null);
INSERT INTO aionshop_items VALUES ('53', '100900711', '1', '9', '1000', 'Enraged Mastarius\'s Tome', 'Enraged Mastarius\'s Tome', '0', null, null);
INSERT INTO aionshop_items VALUES ('54', '100600764', '1', '9', '1000', 'Enraged Veille\'s Tome', 'Enraged Veille\'s Tome', '0', null, null);
INSERT INTO aionshop_items VALUES ('55', '100900711', '1', '9', '1500', 'Archon Brigade General\'s Greatsword', 'Archon Brigade General\'s Greatsword', '0', null, null);
INSERT INTO aionshop_items VALUES ('56', '100900698', '1', '9', '1000', 'Enraged Mastarius\'s Greatsword', 'Enraged Mastarius\'s Greatsword', '0', null, null);
INSERT INTO aionshop_items VALUES ('57', '100900693', '1', '9', '1000', 'Enraged Veille\'s Greatsword', 'Enraged Veille\'s Greatsword', '0', null, null);
INSERT INTO aionshop_items VALUES ('58', '101300681', '1', '9', '1500', 'Archon Brigade General\'s Spear', 'Archon Brigade General\'s Spear', '0', null, null);
INSERT INTO aionshop_items VALUES ('59', '101300668', '1', '9', '1000', 'Enraged Mastarius\'s Spear', 'Enraged Mastarius\'s Spear', '0', null, null);
INSERT INTO aionshop_items VALUES ('60', '101300663', '1', '9', '1000', 'Enraged Veille\'s Spear', 'Enraged Veille\'s Spear', '0', null, null);
INSERT INTO aionshop_items VALUES ('61', '101700749', '1', '9', '1500', 'Archon Brigade General\'s Longbow', 'Archon Brigade General\'s Longbow', '0', null, null);
INSERT INTO aionshop_items VALUES ('62', '101700736', '1', '9', '1000', 'Enraged Mastarius\'s Longbow', 'Enraged Mastarius\'s Longbow', '0', null, null);
INSERT INTO aionshop_items VALUES ('63', '101700731', '1', '9', '1000', 'Enraged Veille\'s Longbow', 'Enraged Veille\'s Longbow', '0', null, null);
INSERT INTO aionshop_items VALUES ('64', '101500726', '1', '9', '1500', 'Archon Brigade General\'s Staff', 'Archon Brigade General\'s Staff', '0', null, null);
INSERT INTO aionshop_items VALUES ('65', '101500713', '1', '9', '1000', 'Enraged Mastarius\'s Staff', 'Enraged Mastarius\'s Staff', '0', null, null);
INSERT INTO aionshop_items VALUES ('66', '101500707', '1', '9', '1000', 'Enraged Veille\'s Staff', 'Enraged Veille\'s Staff', '0', null, null);
INSERT INTO aionshop_items VALUES ('67', '115000998', '1', '9', '1500', 'Archon Brigade General\'s Shield', 'Archon Brigade General\'s Shield', '0', null, null);
INSERT INTO aionshop_items VALUES ('68', '115001018', '1', '9', '1000', 'Enraged Mastarius\'s Shield', 'Enraged Mastarius\'s Shield', '0', null, null);
INSERT INTO aionshop_items VALUES ('69', '115001016', '1', '9', '1000', 'Enraged Veille\'s Shield', 'Enraged Veille\'s Shield', '0', null, null);
INSERT INTO aionshop_items VALUES ('70', '162000066', '10', '8', '100', 'Recovery Crystal (100)', 'Recovery Crystal (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('71', '162000080', '50', '8', '100', 'Fine Recovery Serum (100)', 'Fine Recovery Serum (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('72', '162000077', '100', '8', '100', 'Fine Life Serum (100)', 'Fine Life Serum (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('73', '162000081', '50', '8', '100', 'Fine Recovery Potion (100)', 'Fine Recovery Potion (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('74', '162000078', '100', '8', '100', 'Fine Mana Serum (100)', 'Fine Mana Serum (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('75', '162000069', '50', '8', '100', 'Major Divine Life Serum (100)', 'Major Divine Life Serum (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('76', '162000070', '50', '8', '100', 'Major Divine Mana Serum (100)', 'Major Divine Mana Serum (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('77', '162000071', '100', '8', '100', 'Major Divine Wind Serum (100)', 'Major Divine Wind Serum (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('79', '120001069', '1', '14', '250', 'Archon Brigade General\'s Corundum Earrings', 'Archon Brigade General\'s Corundum Earrings', '0', null, null);
INSERT INTO aionshop_items VALUES ('80', '120001070', '1', '14', '250', 'Archon Brigade General\'s Turquoise Earrings', 'Archon Brigade General\'s Turquoise Earrings', '0', null, null);
INSERT INTO aionshop_items VALUES ('81', '122001206', '1', '14', '250', 'Archon Brigade General\'s Corundum Ring', 'Archon Brigade General\'s Corundum Ring', '0', null, null);
INSERT INTO aionshop_items VALUES ('82', '122001207', '1', '14', '250', 'Archon Brigade General\'s Turquoise Ring', 'Archon Brigade General\'s Turquoise Ring', '0', null, null);
INSERT INTO aionshop_items VALUES ('83', '121000979', '1', '14', '500', 'Archon Brigade General\'s Corundum Necklace', 'Archon Brigade General\'s Corundum Necklace', '0', null, null);
INSERT INTO aionshop_items VALUES ('84', '121000980', '1', '14', '500', 'Archon Brigade General\'s Turquoise Necklace', 'Archon Brigade General\'s Turquoise Necklace', '0', null, null);
INSERT INTO aionshop_items VALUES ('85', '169660000', '1', '3', '100', 'Gender Switch Ticket', 'Gender Switch Ticket', '0', null, null);
INSERT INTO aionshop_items VALUES ('86', '164000076', '50', '8', '100', 'Greater Running Scroll (100)', 'Greater Running Scroll (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('87', '164000079', '50', '8', '100', 'Greater Raging Wind Scroll (100)', 'Greater Raging Wind Scroll (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('88', '164000075', '100', '8', '100', 'Running Scroll (100)', 'Running Scroll (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('89', '164000078', '100', '8', '100', 'Raging Wind Scroll (100)', 'Raging Wind Scroll (100)', '0', null, null);
INSERT INTO aionshop_items VALUES ('90', '190020031', '1', '16', '250', 'Aqua Griffo', 'Aqua Griffo\r\n', '0', null, null);
INSERT INTO aionshop_items VALUES ('91', '190020012', '1', '16', '250', 'Bluehair Steren', 'Bluehair Steren', '0', null, null);
INSERT INTO aionshop_items VALUES ('92', '190020002', '1', '16', '250', 'Bottlenose Tion', 'Bottlenose Tion', '0', null, null);
INSERT INTO aionshop_items VALUES ('93', '190020016', '1', '16', '250', 'Goldmane Trico', 'Goldmane Trico', '0', null, null);
INSERT INTO aionshop_items VALUES ('94', '190020006', '1', '16', '250', 'Jumpy Shugo', 'Jumpy Shugo', '0', null, null);
INSERT INTO aionshop_items VALUES ('95', '190020022', '1', '16', '250', 'Mean Poroco', 'Mean Poroco', '0', null, null);
INSERT INTO aionshop_items VALUES ('96', '190020059', '1', '16', '250', 'Palmist Acarun', 'Palmist Acarun', '0', null, null);
INSERT INTO aionshop_items VALUES ('97', '190020024', '1', '16', '250', 'Azure Drakie', 'Azure Drakie', '0', null, null);
INSERT INTO aionshop_items VALUES ('98', '190020008', '1', '16', '250', 'Golden Nyanco', 'Golden Nyanco', '0', null, null);
INSERT INTO aionshop_items VALUES ('99', '190020049', '1', '16', '250', 'Dapper Taegeuk Shugo', 'Dapper Taegeuk Shugo', '0', null, null);
INSERT INTO aionshop_items VALUES ('100', '110900206', '1', '12', '500', 'Banded Party Outfit', 'Banded Party Outfit', '0', null, null);
INSERT INTO aionshop_items VALUES ('101', '110900205', '1', '12', '500', 'Colorblock Citywear', 'Colorblock Citywear', '0', null, null);
INSERT INTO aionshop_items VALUES ('102', '110900203', '1', '12', '500', 'One-shoulder Special', 'One-shoulder Special', '0', null, null);
INSERT INTO aionshop_items VALUES ('103', '110900214', '1', '12', '500', '\"My Other Half\" T-Shirt', '\"My Other Half\" T-Shirt', '0', null, null);
INSERT INTO aionshop_items VALUES ('104', '110900136', '1', '12', '500', 'Foxtail Hot Pants Outfit', 'Foxtail Hot Pants Outfit', '0', null, null);
INSERT INTO aionshop_items VALUES ('105', '110900215', '1', '12', '500', 'Couture Clothing', 'Couture Clothing', '0', null, null);
INSERT INTO aionshop_items VALUES ('106', '110900139', '1', '12', '500', 'Sorcerer\'s Robe', 'Sorcerer\'s Robe', '0', null, null);
INSERT INTO aionshop_items VALUES ('107', '110900201', '1', '12', '500', 'Sheer Envy Outfit', 'Sheer Envy Outfit', '0', null, null);
INSERT INTO aionshop_items VALUES ('108', '110900198', '1', '12', '500', 'Red Vine Wrapper', 'Red Vine Wrapper', '0', null, null);
INSERT INTO aionshop_items VALUES ('109', '110900193', '1', '12', '500', 'Long Sleeved Seduction', 'Long Sleeved Seduction', '0', null, null);
INSERT INTO aionshop_items VALUES ('110', '110900087', '1', '12', '500', 'Cute Denim Dress', 'Cute Denim Dress', '0', null, null);
INSERT INTO aionshop_items VALUES ('111', '110900069', '1', '12', '500', 'Raiments of Mastery', 'Raiments of Mastery', '0', null, null);
INSERT INTO aionshop_items VALUES ('112', '110900111', '1', '12', '500', 'Beatific Outfit', 'Beatific Outfit', '0', null, null);
INSERT INTO aionshop_items VALUES ('113', '110900050', '1', '12', '500', 'Dynasty Robes', 'Dynasty Robes', '0', null, null);
INSERT INTO aionshop_items VALUES ('114', '110900049', '1', '12', '500', 'Dynasty Light Armor', 'Dynasty Light Armor', '0', null, null);
INSERT INTO aionshop_items VALUES ('115', '110900048', '1', '12', '500', 'Dynasty Heavy Armor', 'Dynasty Heavy Armor', '0', null, null);
INSERT INTO aionshop_items VALUES ('116', '110101099', '1', '4', '250', 'Archon Brigade General\'s Tunic', 'Archon Brigade General\'s Tunic', '0', null, null);
INSERT INTO aionshop_items VALUES ('117', '111100999', '1', '4', '250', 'Archon Brigade General\'s Gloves', 'Archon Brigade General\'s Gloves', '0', null, null);
INSERT INTO aionshop_items VALUES ('120', '112100955', '1', '4', '250', 'Archon Brigade General\'s Pauldrons', 'Archon Brigade General\'s Pauldrons', '0', null, null);
INSERT INTO aionshop_items VALUES ('121', '113101011', '1', '4', '250', 'Archon Brigade General\'s Leggings', 'Archon Brigade General\'s Leggings', '0', null, null);
INSERT INTO aionshop_items VALUES ('122', '114101040', '1', '4', '250', 'Archon Brigade General\'s Shoes', 'Archon Brigade General\'s Shoes', '0', null, null);
INSERT INTO aionshop_items VALUES ('123', '110301048', '1', '4', '250', 'Archon Brigade General\'s Jerkin', 'Archon Brigade General\'s Jerkin', '0', null, null);
INSERT INTO aionshop_items VALUES ('124', '111301004', '1', '4', '250', 'Archon Brigade General\'s Vambrace', 'Archon Brigade General\'s Vambrace', '0', null, null);
INSERT INTO aionshop_items VALUES ('125', '112300953', '1', '4', '250', 'Archon Brigade General\'s Shoulderguards', 'Archon Brigade General\'s Shoulderguards', '0', null, null);
INSERT INTO aionshop_items VALUES ('126', '113301024', '1', '4', '250', 'Archon Brigade General\'s Breeches', 'Archon Brigade General\'s Breeches', '0', null, null);
INSERT INTO aionshop_items VALUES ('127', '114301060', '1', '4', '250', 'Archon Brigade General\'s Boots', 'Archon Brigade General\'s Boots', '0', null, null);
INSERT INTO aionshop_items VALUES ('128', '110501016', '1', '4', '250', 'Archon Brigade General\'s Hauberk', 'Archon Brigade General\'s Hauberk', '0', null, null);
INSERT INTO aionshop_items VALUES ('129', '111500991', '1', '4', '250', 'Archon Brigade General\'s Handguards', 'Archon Brigade General\'s Handguards', '0', null, null);
INSERT INTO aionshop_items VALUES ('130', '112500940', '1', '4', '250', 'Archon Brigade General\'s Spaulders', 'Archon Brigade General\'s Spaulders', '0', null, null);
INSERT INTO aionshop_items VALUES ('131', '113500994', '1', '4', '250', 'Archon Brigade General\'s Chausses', 'Archon Brigade General\'s Chausses', '0', null, null);
INSERT INTO aionshop_items VALUES ('132', '114501003', '1', '4', '250', 'Archon Brigade General\'s Brogans', 'Archon Brigade General\'s Brogans', '0', null, null);
INSERT INTO aionshop_items VALUES ('133', '110600996', '1', '4', '250', 'Archon Brigade General\'s Breastplate', 'Archon Brigade General\'s Breastplate', '0', null, null);
INSERT INTO aionshop_items VALUES ('134', '111600982', '1', '4', '250', 'Archon Brigade General\'s Gauntlets', 'Archon Brigade General\'s Gauntlets', '0', null, null);
INSERT INTO aionshop_items VALUES ('135', '112600955', '1', '4', '250', 'Archon Brigade General\'s Shoulderplates', 'Archon Brigade General\'s Shoulderplates', '0', null, null);
INSERT INTO aionshop_items VALUES ('136', '113600965', '1', '4', '250', 'Archon Brigade General\'s Greaves', 'Archon Brigade General\'s Greaves', '0', null, null);
INSERT INTO aionshop_items VALUES ('137', '114600962', '1', '4', '250', 'Archon Brigade General\'s Sabatons', 'Archon Brigade General\'s Sabatons', '0', null, null);
INSERT INTO aionshop_items VALUES ('139', '125040115', '1', '18', '50', 'Springwater Spirit Hat', 'Springwater Spirit Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('140', '125040116', '1', '18', '50', 'Ember Spirit Hat', 'Ember Spirit Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('141', '125040118', '1', '18', '50', 'Agrint Hat', 'Agrint Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('142', '125040120', '1', '18', '50', 'Moonflower Hat', 'Moonflower Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('143', '125040117', '1', '18', '50', 'Wind Spirit Hat', 'Wind Spirit Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('144', '125040119', '1', '18', '50', 'Kerubiel Hat', 'Kerubiel Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('145', '100000879', '1', '18', '100', 'Aether Blade', 'Aether Blade', '0', null, null);
INSERT INTO aionshop_items VALUES ('146', '100100613', '1', '18', '100', 'Sartuan\'s Snack', 'Sartuan\'s Snack', '0', null, null);
INSERT INTO aionshop_items VALUES ('147', '100200803', '1', '18', '100', 'Mellin\'s Treat', 'Mellin\'s Treat', '0', null, null);
INSERT INTO aionshop_items VALUES ('148', '100500695', '1', '18', '100', 'Siel\'s Timepiece', 'Siel\'s Timepiece', '0', null, null);
INSERT INTO aionshop_items VALUES ('149', '100600752', '1', '18', '100', 'Rosetta\'s Tablet', 'Rosetta\'s Tablet', '0', null, null);
INSERT INTO aionshop_items VALUES ('150', '100900681', '1', '18', '100', 'Cataclysm\'s Jaws', 'Cataclysm\'s Jaws', '0', null, null);
INSERT INTO aionshop_items VALUES ('151', '101300813', '1', '18', '100', 'Seafoam\'s Glow', 'Seafoam\'s Glow', '0', null, null);
INSERT INTO aionshop_items VALUES ('152', '101500695', '1', '18', '100', 'Israphel\'s Might', 'Israphel\'s Might', '0', null, null);
INSERT INTO aionshop_items VALUES ('153', '101700719', '1', '18', '100', 'Artemana\'s Antlers', 'Artemana\'s Antlers', '0', null, null);
INSERT INTO aionshop_items VALUES ('154', '115000959', '1', '18', '100', 'Aquilon\'s Crystal', 'Aquilon\'s Crystal', '0', null, null);
INSERT INTO aionshop_items VALUES ('155', '125002355', '1', '13', '500', 'Archon Brigade General\'s Chain Hood', 'Archon Brigade General\'s Chain Hood', '0', null, null);
INSERT INTO aionshop_items VALUES ('156', '125002354', '1', '13', '500', 'Archon Brigade General\'s Hat', 'Archon Brigade General\'s Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('157', '125002353', '1', '13', '500', 'Archon Brigade General\'s Headband', 'Archon Brigade General\'s Headband', '0', null, null);
INSERT INTO aionshop_items VALUES ('158', '125002356', '1', '13', '500', 'Archon Brigade General\'s Helm', 'Archon Brigade General\'s Helm', '0', null, null);
INSERT INTO aionshop_items VALUES ('5', '169630001', '1', '3', '50', 'Expand Cube Ticket', 'Expand Cube Ticket', '0', null, null);
INSERT INTO aionshop_items VALUES ('159', '110500988', '1', '4', '150', 'Stormwing\'s Hauberk', 'Stormwing\'s Hauberk', '0', null, null);
INSERT INTO aionshop_items VALUES ('160', '113500960', '1', '4', '150', 'Stormwing\'s Chausses', 'Stormwing\'s Chausses', '0', null, null);
INSERT INTO aionshop_items VALUES ('161', '112500907', '1', '4', '150', 'Stormwing\'s Spaulders', 'Stormwing\'s Spaulders', '0', null, null);
INSERT INTO aionshop_items VALUES ('162', '111500955', '1', '4', '150', 'Stormwing\'s Handguards', 'Stormwing\'s Handguards', '0', null, null);
INSERT INTO aionshop_items VALUES ('163', '114500967', '1', '4', '150', 'Stormwing\'s Brogans', 'Stormwing\'s Brogans', '0', null, null);
INSERT INTO aionshop_items VALUES ('164', '110101071', '1', '4', '150', 'Stormwing\'s Tunic', 'Stormwing\'s Tunic', '0', null, null);
INSERT INTO aionshop_items VALUES ('165', '113100977', '1', '4', '150', 'Stormwing\'s Leggings', 'Stormwing\'s Leggings', '0', null, null);
INSERT INTO aionshop_items VALUES ('166', '112100922', '1', '4', '150', 'Stormwing\'s Pauldrons', 'Stormwing\'s Pauldrons', '0', null, null);
INSERT INTO aionshop_items VALUES ('167', '111100964', '1', '4', '150', 'Stormwing\'s Gloves', 'Stormwing\'s Gloves', '0', null, null);
INSERT INTO aionshop_items VALUES ('168', '114101003', '1', '4', '150', 'Stormwing\'s Shoes', 'Stormwing\'s Shoes', '0', null, null);
INSERT INTO aionshop_items VALUES ('169', '110301020', '1', '4', '150', 'Stormwing\'s Jerkin', 'Stormwing\'s Jerkin', '0', null, null);
INSERT INTO aionshop_items VALUES ('170', '113300990', '1', '4', '150', 'Stormwing\'s Breeches', 'Stormwing\'s Breeches', '0', null, null);
INSERT INTO aionshop_items VALUES ('171', '112300920', '1', '4', '150', 'Stormwing\'s Shoulderguards', 'Stormwing\'s Shoulderguards', '0', null, null);
INSERT INTO aionshop_items VALUES ('172', '111300969', '1', '4', '150', 'Stormwing\'s Vambrace', 'Stormwing\'s Vambrace', '0', null, null);
INSERT INTO aionshop_items VALUES ('173', '114301024', '1', '4', '150', 'Stormwing\'s Boots', 'Stormwing\'s Boots', '0', null, null);
INSERT INTO aionshop_items VALUES ('174', '110600968', '1', '4', '150', 'Stormwing\'s Breastplate', 'Stormwing\'s Breastplate', '0', null, null);
INSERT INTO aionshop_items VALUES ('175', '113600931', '1', '4', '150', 'Stormwing\'s Greaves', 'Stormwing\'s Greaves', '0', null, null);
INSERT INTO aionshop_items VALUES ('176', '112600922', '1', '4', '150', 'Stormwing\'s Shoulderplates', 'Stormwing\'s Shoulderplates', '0', null, null);
INSERT INTO aionshop_items VALUES ('177', '111600947', '1', '4', '150', 'Stormwing\'s Gauntlets', 'Stormwing\'s Gauntlets', '0', null, null);
INSERT INTO aionshop_items VALUES ('178', '114600926', '1', '4', '150', 'Stormwing\'s Sabatons', 'Stormwing\'s Sabatons', '0', null, null);
INSERT INTO aionshop_items VALUES ('179', '100000893', '1', '9', '250', 'Stormwing\'s Azure Scale Sword', 'Stormwing\'s Azure Scale Sword', '0', null, null);
INSERT INTO aionshop_items VALUES ('180', '115000966', '1', '9', '250', 'Stormwing\'s Shield', 'Stormwing\'s Shield', '0', null, null);
INSERT INTO aionshop_items VALUES ('181', '100100676', '1', '9', '250', 'Stormwing\'s Warhammer', 'Stormwing\'s Warhammer', '0', null, null);
INSERT INTO aionshop_items VALUES ('182', '115000967', '1', '9', '250', 'Stormwing Scale Shield', 'Stormwing Scale Shield', '0', null, null);
INSERT INTO aionshop_items VALUES ('183', '100001080', '1', '9', '250', 'Stormwing Scale Sword', 'Stormwing Scale Sword', '0', null, null);
INSERT INTO aionshop_items VALUES ('184', '100001081', '1', '9', '250', 'Flarestorm\'s Sword', 'Flarestorm\'s Sword', '0', null, null);
INSERT INTO aionshop_items VALUES ('185', '100200807', '1', '9', '250', 'Stormwing\'s Dagger', 'Stormwing\'s Dagger', '0', null, null);
INSERT INTO aionshop_items VALUES ('186', '100200954', '1', '9', '250', 'Flarestorm\'s Dagger', 'Flarestorm\'s Dagger', '0', null, null);
INSERT INTO aionshop_items VALUES ('187', '100900684', '1', '9', '500', 'Stormwing\'s Greatsword', 'Stormwing\'s Greatsword', '0', null, null);
INSERT INTO aionshop_items VALUES ('188', '100500698', '1', '9', '500', 'Stormwing\'s Jewel', 'Stormwing\'s Jewel', '0', null, null);
INSERT INTO aionshop_items VALUES ('189', '101700722', '1', '9', '500', 'Stormwing\'s Longbow', 'Stormwing\'s Longbow', '0', null, null);
INSERT INTO aionshop_items VALUES ('190', '101300655', '1', '9', '500', 'Stormwing\'s Spear', 'Stormwing\'s Spear', '0', null, null);
INSERT INTO aionshop_items VALUES ('191', '101500698', '1', '9', '500', 'Stormwing\'s Staff', 'Stormwing\'s Staff', '0', null, null);
INSERT INTO aionshop_items VALUES ('193', '100200820', '1', '9', '100', 'Padmarashka\'s Dagger', 'Padmarashka\'s Dagger', '0', null, null);
INSERT INTO aionshop_items VALUES ('194', '100900697', '1', '9', '200', 'Padmarashka\'s Greatsword', 'Padmarashka\'s Greatsword', '0', null, null);
INSERT INTO aionshop_items VALUES ('195', '100500711', '1', '9', '200', 'Padmarashka\'s Jewel', 'Padmarashka\'s Jewel', '0', null, null);
INSERT INTO aionshop_items VALUES ('196', '101700735', '1', '9', '200', 'Padmarashka\'s Longbow', 'Padmarashka\'s Longbow', '0', null, null);
INSERT INTO aionshop_items VALUES ('197', '100600768', '1', '9', '200', 'Padmarashka\'s Tome', 'Padmarashka\'s Tome', '0', null, null);
INSERT INTO aionshop_items VALUES ('192', '100600755', '1', '9', '500', 'Stormwing\'s Tome', 'Stormwing\'s Tome', '0', null, null);
INSERT INTO aionshop_items VALUES ('198', '168000038', '1', '10', '1500', 'Godstone: Bollvig\'s Love', 'Godstone: Bollvig\'s Love', '0', null, null);
INSERT INTO aionshop_items VALUES ('199', '168000037', '1', '10', '1500', 'Godstone: Khrudgelmir\'s Silence', 'Godstone: Khrudgelmir\'s Silence', '0', null, null);
INSERT INTO aionshop_items VALUES ('200', '186000031', '50', '19', '100', 'Silver Medal', 'Silver Medal', '0', null, null);
INSERT INTO aionshop_items VALUES ('201', '186000030', '20', '19', '100', 'Gold Medal', 'Gold Medal', '0', null, null);
INSERT INTO aionshop_items VALUES ('202', '186000096', '10', '19', '100', 'Platinum Medal', 'Platinum Medal', '0', null, null);
INSERT INTO aionshop_items VALUES ('203', '141000001', '20', '19', '20', 'Stigma Shard', 'Stigma Shard', '0', null, null);
INSERT INTO aionshop_items VALUES ('204', '186000130', '500', '19', '100', 'Crucible Insignia', 'Crucible Insignia', '0', null, null);
INSERT INTO aionshop_items VALUES ('205', '186000115', '500', '19', '100', 'Circle Token (Asmodian)', 'Circle Token (Asmodian)', '0', null, null);
INSERT INTO aionshop_items VALUES ('206', '186000104', '500', '19', '100', 'Crusader Token (Asmodian)', 'Crusader Token (Asmodian)', '0', null, null);
INSERT INTO aionshop_items VALUES ('207', '186000105', '500', '19', '100', 'Daemon Token (Asmodian)', 'Daemon Token (Asmodian)', '0', null, null);
INSERT INTO aionshop_items VALUES ('208', '186000103', '500', '19', '100', 'Ward Token (Asmodian)', 'Ward Token (Asmodian)', '0', null, null);
INSERT INTO aionshop_items VALUES ('209', '186000114', '500', '19', '100', 'Orichalcum Token (Elyos)', 'Orichalcum Token (Elyos)', '0', null, null);
INSERT INTO aionshop_items VALUES ('210', '186000101', '500', '19', '100', 'Radiant Token (Elyos)', 'Radiant Token (Elyos)', '0', null, null);
INSERT INTO aionshop_items VALUES ('211', '186000102', '500', '19', '100', 'Fortuneers Token (Elyos)', 'Fortuneers Token (Elyos)', '0', null, null);
INSERT INTO aionshop_items VALUES ('212', '186000100', '500', '19', '100', 'Progress Token (Elyos)', 'Progress Token (Elyos)', '0', null, null);
INSERT INTO aionshop_items VALUES ('213', '187000032', '1', '7', '100', 'Wings of The Circle', 'Wings of The Circle', '0', null, null);
INSERT INTO aionshop_items VALUES ('218', '188020000', '10', '19', '50', 'Temporal Stone', 'Temporal Stone', '0', null, null);
INSERT INTO aionshop_items VALUES ('219', '188020001', '10', '19', '50', 'Greater Temporal Stone', 'Greater Temporal Stone', '0', null, null);
INSERT INTO aionshop_items VALUES ('220', '160002396', '25', '11', '50', 'Tasty Horned Dragon Emperor\'s Savory Food', 'Tasty Horned Dragon Emperor\'s Savory Food', '0', null, null);
INSERT INTO aionshop_items VALUES ('221', '160001398', '25', '11', '50', 'Tasty Sky Dragon Emperor\'s Savory Food', 'Tasty Sky Dragon Emperor\'s Savory Food', '0', null, null);
INSERT INTO aionshop_items VALUES ('222', '160002339', '25', '11', '50', 'Poma Wine Herb Dumpling', 'Poma Wine Herb Dumpling', '0', null, null);
INSERT INTO aionshop_items VALUES ('223', '160001341', '25', '11', '50', 'Innesi Herb Dumpling', 'Innesi Herb Dumpling', '0', null, null);
INSERT INTO aionshop_items VALUES ('224', '160002274', '25', '11', '50', 'Cippo Aether Jelly', 'Cippo Aether Jelly', '0', null, null);
INSERT INTO aionshop_items VALUES ('225', '160010101', '15', '11', '50', 'Summer-Loving Inquin Form Candy', 'Summer-Loving Inquin Form Candy', '0', null, null);
INSERT INTO aionshop_items VALUES ('226', '160010102', '15', '11', '50', 'Summer-Loving Inquin Form Candy', 'Summer-Loving Inquin Form Candy', '0', null, null);
INSERT INTO aionshop_items VALUES ('227', '164000122', '25', '8', '50', 'Major Crit Spell Scroll', 'Major Crit Spell Scroll', '0', null, null);
INSERT INTO aionshop_items VALUES ('228', '164000118', '25', '8', '50', 'Major Crit Strike Scroll', 'Major Crit Strike Scroll', '0', null, null);
INSERT INTO aionshop_items VALUES ('229', '164000131', '25', '8', '50', 'Fine Anti-Shock Scroll', 'Fine Anti-Shock Scroll', '0', null, null);
INSERT INTO aionshop_items VALUES ('230', '162000023', '50', '8', '50', 'Greater Healing Potion', 'Greater Healing Potion', '0', null, null);
INSERT INTO aionshop_items VALUES ('231', '160002350', '50', '8', '50', 'Kuvano Juice (Asmodian)', 'Kuvano Juice (Asmodian)', '0', null, null);
INSERT INTO aionshop_items VALUES ('232', '160001352', '50', '8', '50', 'Kuvano Juice (Elyos)', 'Kuvano Juice (Elyos)', '0', null, null);
INSERT INTO aionshop_items VALUES ('233', '164000073', '50', '8', '50', 'Greater Courage Scroll', 'Greater Courage Scroll', '0', null, null);
INSERT INTO aionshop_items VALUES ('234', '164000134', '50', '8', '50', 'Greater Awakening Scroll', 'Greater Awakening Scroll', '0', null, null);
INSERT INTO aionshop_items VALUES ('235', '184000010', '5', '8', '10', '(A) Large Kisk', '(A) Large Kisk', '0', null, null);
INSERT INTO aionshop_items VALUES ('236', '184000007', '5', '8', '10', '(E) Large Kisk', '(E) Large Kisk', '0', null, null);
INSERT INTO aionshop_items VALUES ('237', '161000004', '5', '8', '10', 'Tombstone of Revival', 'Tombstone of Revival', '0', null, null);
INSERT INTO aionshop_items VALUES ('238', '101700716', '1', '9', '500', 'Noble Horned Dragon Emperor\'s Bow', 'Noble Horned Dragon Emperor\'s Bow', '0', null, null);
INSERT INTO aionshop_items VALUES ('239', '100200802', '1', '9', '250', 'Noble Horned Dragon Emperor\'s Dagger', 'Noble Horned Dragon Emperor\'s Dagger', '0', null, null);
INSERT INTO aionshop_items VALUES ('240', '100900680', '1', '9', '500', 'Noble Horned Dragon Emperor\'s Greatsword', 'Noble Horned Dragon Emperor\'s Greatsword', '0', null, null);
INSERT INTO aionshop_items VALUES ('241', '100100672', '1', '9', '250', 'Noble Horned Dragon Emperor\'s Mace', 'Noble Horned Dragon Emperor\'s Mace', '0', null, null);
INSERT INTO aionshop_items VALUES ('242', '101500694', '1', '9', '500', 'Noble Horned Dragon Emperor\'s Staff', 'Noble Horned Dragon Emperor\'s Staff', '0', null, null);
INSERT INTO aionshop_items VALUES ('243', '115000958', '1', '9', '250', 'Noble Horned Dragon Emperor\'s Shield', 'Noble Horned Dragon Emperor\'s Shield', '0', null, null);
INSERT INTO aionshop_items VALUES ('244', '101300651', '1', '9', '500', 'Noble Horned Dragon Emperor\'s Polearm', 'Noble Horned Dragon Emperor\'s Polearm', '0', null, null);
INSERT INTO aionshop_items VALUES ('245', '100000878', '1', '9', '250', 'Noble Horned Dragon Emperor\'s Sword', 'Noble Horned Dragon Emperor\'s Sword', '0', null, null);
INSERT INTO aionshop_items VALUES ('246', '100600751', '1', '9', '500', 'Noble Horned Dragon Emperor\'s Tome', 'Noble Horned Dragon Emperor\'s Tome', '0', null, null);
INSERT INTO aionshop_items VALUES ('247', '100500694', '1', '9', '500', 'Noble Horned Dragon Emperor\'s Orb', 'Noble Horned Dragon Emperor\'s Orb', '0', null, null);
INSERT INTO aionshop_items VALUES ('248', '125002225', '1', '13', '100', 'Noble Horned Dragon Emperor\'s Malevite Glasses', 'Noble Horned Dragon Emperor\'s Malevite Glasses', '0', null, null);
INSERT INTO aionshop_items VALUES ('249', '169000002', '100', '19', '50', '+100 Attack Power Shard', '+100 Attack Power Shard', '0', null, null);
INSERT INTO aionshop_items VALUES ('250', '160003556', '10', '8', '10', 'Fine Rally Serum', 'Fine Rally Serum', '0', null, null);
INSERT INTO aionshop_items VALUES ('251', '166100008', '500', '19', '50', 'Greater Supplements (Eternal)', 'Greater Supplements (Eternal)', '0', null, null);
INSERT INTO aionshop_items VALUES ('252', '123001069', '1', '14', '500', 'Archon Brigade General\'s Sash', 'Archon Brigade General\'s Sash', '0', null, null);
INSERT INTO aionshop_items VALUES ('253', '123001068', '1', '14', '500', 'Archon Brigade General\'s Leather Belt', 'Archon Brigade General\'s Leather Belt', '0', null, null);
INSERT INTO aionshop_items VALUES ('254', '169610331', '1', '3', '1000', '[Title] The Circle Leader', '[Title] The Circle Leader', '0', null, null);
INSERT INTO aionshop_items VALUES ('255', '169610311', '1', '3', '500', '[Title] Daemon', '[Title] Daemon', '0', null, null);
INSERT INTO aionshop_items VALUES ('256', '169610308', '1', '3', '500', '[Title] Fixer', '[Title] Fixer', '0', null, null);
INSERT INTO aionshop_items VALUES ('257', '169610303', '1', '3', '1000', '[Title] Field Director', '[Title] Field Director', '0', null, null);
INSERT INTO aionshop_items VALUES ('258', '169610103', '1', '3', '1000', '[Title] Alabaster Hand', '[Title] Alabaster Hand', '0', null, null);
INSERT INTO aionshop_items VALUES ('259', '169610111', '1', '3', '500', '[Title] Fortuneer', '[Title] Fortuneer', '0', null, null);
INSERT INTO aionshop_items VALUES ('260', '169640000', '1', '3', '50', 'Expand Warehouse Ticket', 'Expand Warehouse Ticket', '0', null, null);
INSERT INTO aionshop_items VALUES ('261', '125002357', '1', '13', '150', 'Master Carved Corundum Glasses', 'Master Carved Corundum Glasses', '0', null, null);
INSERT INTO aionshop_items VALUES ('262', '125002365', '1', '13', '150', 'Master Carved Turquoise Glasses', 'Master Carved Turquoise Glasses', '0', null, null);
INSERT INTO aionshop_items VALUES ('263', '125002195', '1', '13', '150', 'Noble Sky Dragon Emperor\'s Malevite Glasses', 'Noble Sky Dragon Emperor\'s Malevite Glasses', '0', null, null);
INSERT INTO aionshop_items VALUES ('264', '125002231', '1', '13', '150', 'Noble Horned Dragon Emperor\'s Bandana', 'Noble Horned Dragon Emperor\'s Bandana', '0', null, null);
INSERT INTO aionshop_items VALUES ('265', '123001071', '1', '14', '150', 'Master Carved Gossam Sash', 'Master Carved Gossam Sash', '0', null, null);
INSERT INTO aionshop_items VALUES ('266', '123001029', '1', '14', '150', 'Noble Horned Dragon Emperor\'s Belt', 'Noble Horned Dragon Emperor\'s Belt', '0', null, null);
INSERT INTO aionshop_items VALUES ('267', '123001028', '1', '14', '150', 'Noble Horned Dragon Emperor\'s Leather Belt', 'Noble Horned Dragon Emperor\'s Leather Belt', '0', null, null);
INSERT INTO aionshop_items VALUES ('268', '100100690', '1', '9', '100', 'Padmarashka\'s Warhammer', 'Padmarashka\'s Warhammer', '0', null, null);
INSERT INTO aionshop_items VALUES ('269', '101500712', '1', '9', '200', 'Padmarashka\'s Staff', 'Padmarashka\'s Staff', '0', null, null);
INSERT INTO aionshop_items VALUES ('270', '110900105', '1', '12', '500', 'Hot Swimsuit', 'Hot Swimsuit', '0', null, null);
INSERT INTO aionshop_items VALUES ('271', '190020019', '1', '16', '500', 'Shugo Lass Egg', 'Shugo Lass Egg', '0', null, null);
INSERT INTO aionshop_items VALUES ('280', '110900213', '1', '12', '100', 'Beatific Outfit', 'Beatific Outfit', '0', null, null);
INSERT INTO aionshop_items VALUES ('281', '110900185', '1', '12', '100', 'Mini Dress Whites', 'Mini Dress Whites', '0', null, null);
INSERT INTO aionshop_items VALUES ('282', '125040042', '1', '12', '100', 'Summer Sunglasses', 'Summer Sunglasses', '0', null, null);
INSERT INTO aionshop_items VALUES ('283', '125040046', '1', '12', '100', 'Beach Hat', 'Beach Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('284', '110900217', '1', '12', '100', '\'I-Can-Hear-Only-You\' Matching T-Shirt', '\'I-Can-Hear-Only-You\' Matching T-Shirt', '0', null, null);
INSERT INTO aionshop_items VALUES ('285', '110900218', '1', '12', '100', '\'I-Am-Yours\' Matching T-Shirt', '\'I-Am-Yours\' Matching T-Shirt', '0', null, null);
INSERT INTO aionshop_items VALUES ('286', '110900126', '1', '12', '100', 'Cinna\'s Leather Chic', 'Cinna\'s Leather Chic', '0', null, null);
INSERT INTO aionshop_items VALUES ('287', '125040112', '1', '12', '100', 'Sorcerer\'s Hat', 'Sorcerer\'s Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('288', '125040108', '1', '12', '100', 'Breathe Cap', 'Breathe Cap', '0', null, null);
INSERT INTO aionshop_items VALUES ('289', '125040148', '1', '12', '100', '[Event] Perching Light', '[Event] Perching Light', '0', null, null);
INSERT INTO aionshop_items VALUES ('290', '114000012', '1', '12', '100', 'Jester Shoes', 'Jester Shoes', '0', null, null);
INSERT INTO aionshop_items VALUES ('291', '111000012', '1', '12', '100', 'Jester Gloves', 'Jester Gloves', '0', null, null);
INSERT INTO aionshop_items VALUES ('292', '125040059', '1', '12', '100', 'Jester Hat', 'Jester Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('293', '110900112', '1', '12', '100', 'Jester Tunic', 'Jester Tunic', '0', null, null);
INSERT INTO aionshop_items VALUES ('294', '110900089', '1', '12', '100', 'Nobody Retro Dress', 'Nobody Retro Dress', '0', null, null);
INSERT INTO aionshop_items VALUES ('295', '110900090', '1', '12', '100', 'Spangled Outfit', 'Spangled Outfit', '0', null, null);
INSERT INTO aionshop_items VALUES ('296', '125040003', '1', '12', '100', 'Rabbit Ear Headband', 'Rabbit Ear Headband', '0', null, null);
INSERT INTO aionshop_items VALUES ('297', '110900060', '1', '12', '100', 'Wedding Dress/Tuxedo', 'Wedding Dress/Tuxedo', '0', null, null);
INSERT INTO aionshop_items VALUES ('298', '125040053', '1', '12', '100', 'Truelove Accessory', 'Truelove Accessory', '0', null, null);
INSERT INTO aionshop_items VALUES ('299', '125040054', '1', '12', '100', 'Truelove Waltz Hat', 'Truelove Waltz Hat', '0', null, null);
INSERT INTO aionshop_items VALUES ('300', '125040055', '1', '12', '100', 'Truelove Headwear', 'Truelove Headwear', '0', null, null);
INSERT INTO aionshop_items VALUES ('301', '110900088', '1', '12', '100', 'Tell Me Ensemble', 'Tell Me Ensemble', '0', null, null);
INSERT INTO aionshop_items VALUES ('302', '125040041', '1', '12', '50', '[Event] Devil Horns', '[Event] Devil Horns', '0', null, null);
INSERT INTO aionshop_items VALUES ('303', '160010113', '10', '11', '50', 'Harvest Revel Form Candy', 'Harvest Revel Form Candy', '0', null, null);
INSERT INTO aionshop_items VALUES ('304', '160010114', '10', '11', '50', 'Harvest Revel Form Candy', 'Harvest Revel Form Candy', '0', null, null);
INSERT INTO aionshop_items VALUES ('305', '164000135', '20', '8', '50', 'Fine Recovery Potion', 'Fine Recovery Potion', '0', null, null);
INSERT INTO aionshop_items VALUES ('306', '164000108', '20', '8', '50', 'Fine Life Potion', 'Fine Life Potion', '0', null, null);
INSERT INTO aionshop_items VALUES ('307', '162000076', '20', '8', '50', 'Fine Mana Potion', 'Fine Mana Potion', '0', null, null);
INSERT INTO aionshop_items VALUES ('308', '101700761', '1', '18', '100', 'Athana\'s Fate Bow', 'Athana\'s Fate Bow', '0', null, null);
INSERT INTO aionshop_items VALUES ('309', '100200846', '1', '18', '50', 'Athana\'s Fate Dagger', 'Athana\'s Fate Dagger', '0', null, null);
INSERT INTO aionshop_items VALUES ('310', '100900723', '1', '18', '100', 'Athana\'s Fate Greatsword', 'Athana\'s Fate Greatsword', '0', null, null);
INSERT INTO aionshop_items VALUES ('311', '100100718', '1', '18', '50', 'Athana\'s Fate Mace', 'Athana\'s Fate Mace', '0', null, null);
INSERT INTO aionshop_items VALUES ('312', '100500737', '1', '18', '100', 'Athana\'s Fate Orb', 'Athana\'s Fate Orb', '0', null, null);
INSERT INTO aionshop_items VALUES ('313', '101300693', '1', '18', '20', 'Athana\'s Fate Polearm', 'Athana\'s Fate Polearm', '0', null, null);
INSERT INTO aionshop_items VALUES ('314', '100600794', '1', '18', '20', 'Athana\'s Fate Spellbook', 'Athana\'s Fate Spellbook', '0', null, null);
INSERT INTO aionshop_items VALUES ('315', '101500738', '1', '18', '20', 'Athana\'s Fate Staff', 'Athana\'s Fate Staff', '0', null, null);
INSERT INTO aionshop_items VALUES ('316', '100000946', '1', '18', '20', 'Athana\'s Fate Sword', 'Athana\'s Fate Sword', '0', null, null);
INSERT INTO aionshop_items VALUES ('317', '190020080', '1', '16', '500', 'Worg of the Dead Egg', 'Worg of the Dead Egg', '0', null, null);
INSERT INTO aionshop_items VALUES ('318', '115001188', '1', '9', '250', 'Tac Officer\'s Divine Shield', 'Tac Officer\'s Divine Shield', '0', null, null);
