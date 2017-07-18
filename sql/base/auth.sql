/*
Navicat MySQL Data Transfer

Source Server         : 201.219.220.32
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : auth

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2017-07-18 10:27:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for chat_censor
-- ----------------------------
DROP TABLE IF EXISTS `chat_censor`;
CREATE TABLE `chat_censor` (
  `text` varchar(255) DEFAULT NULL,
  `action` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat_censor
-- ----------------------------
INSERT INTO `chat_censor` VALUES ('sytes', '0');
INSERT INTO `chat_censor` VALUES ('instant', '0');
INSERT INTO `chat_censor` VALUES ('dyndns', '0');
INSERT INTO `chat_censor` VALUES ('.eu', '0');
INSERT INTO `chat_censor` VALUES ('.fr', '0');
INSERT INTO `chat_censor` VALUES ('.bg', '0');
INSERT INTO `chat_censor` VALUES ('.info', '0');
INSERT INTO `chat_censor` VALUES ('no-ip', '0');
INSERT INTO `chat_censor` VALUES ('.zapto', '0');
INSERT INTO `chat_censor` VALUES ('.biz', '0');
INSERT INTO `chat_censor` VALUES ('.servegame', '2');
INSERT INTO `chat_censor` VALUES ('trevonwow', '2');
INSERT INTO `chat_censor` VALUES ('megawow', '2');
INSERT INTO `chat_censor` VALUES ('fatalwow', '2');
INSERT INTO `chat_censor` VALUES ('uniforgiven-wow', '2');
INSERT INTO `chat_censor` VALUES ('wow-autolouco', '2');
INSERT INTO `chat_censor` VALUES ('heaven-wow', '2');
INSERT INTO `chat_censor` VALUES ('fireballwow', '2');
INSERT INTO `chat_censor` VALUES ('wowbrasilpa', '2');
INSERT INTO `chat_censor` VALUES ('fatalitywow', '2');
INSERT INTO `chat_censor` VALUES ('demonic-wow', '2');
INSERT INTO `chat_censor` VALUES ('revenge-wow', '2');
INSERT INTO `chat_censor` VALUES ('heavenwow', '2');
INSERT INTO `chat_censor` VALUES ('undead-wow', '2');
INSERT INTO `chat_censor` VALUES ('linebr', '1');
INSERT INTO `chat_censor` VALUES ('azralon', '1');
INSERT INTO `chat_censor` VALUES ('wow-', '0');
INSERT INTO `chat_censor` VALUES ('spectrallwow', '2');
INSERT INTO `chat_censor` VALUES ('wowrean', '2');
INSERT INTO `chat_censor` VALUES ('.tk', '0');
INSERT INTO `chat_censor` VALUES ('.ml', '0');
INSERT INTO `chat_censor` VALUES ('.org', '0');
INSERT INTO `chat_censor` VALUES ('.cf', '0');
INSERT INTO `chat_censor` VALUES ('wow-mx', '2');
INSERT INTO `chat_censor` VALUES ('reinodelcaos', '2');
INSERT INTO `chat_censor` VALUES ('reinodelcaos.net', '2');
INSERT INTO `chat_censor` VALUES ('.com', '1');
INSERT INTO `chat_censor` VALUES ('.net', '1');
INSERT INTO `chat_censor` VALUES ('sulvus', '2');
INSERT INTO `chat_censor` VALUES ('vgaming', '2');
INSERT INTO `chat_censor` VALUES ('Wow-destro', '2');
INSERT INTO `chat_censor` VALUES ('destrowow', '3');
INSERT INTO `chat_censor` VALUES ('wowdestro.com', '2');
INSERT INTO `chat_censor` VALUES ('wowdestro.com', '2');
INSERT INTO `chat_censor` VALUES ('sulvus', '2');
INSERT INTO `chat_censor` VALUES ('wowzakrash', '2');
INSERT INTO `chat_censor` VALUES ('wowbolivian', '2');

-- ----------------------------
-- Table structure for chat_registro
-- ----------------------------
DROP TABLE IF EXISTS `chat_registro`;
CREATE TABLE `chat_registro` (
  `accid` int(11) NOT NULL,
  `pjid` int(11) DEFAULT NULL,
  `pj` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `canal` varchar(255) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`accid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of chat_registro
-- ----------------------------

-- ----------------------------
-- Table structure for navidad
-- ----------------------------
DROP TABLE IF EXISTS `navidad`;
CREATE TABLE `navidad` (
  `ip` varchar(255) DEFAULT NULL,
  `noip` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `reino` int(11) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `character` varchar(255) DEFAULT NULL,
  `charname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `regalo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of navidad
-- ----------------------------

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `ip` varchar(255) DEFAULT NULL,
  `noip` int(1) DEFAULT '0',
  `fecha` varchar(255) NOT NULL,
  `reino` int(11) DEFAULT NULL,
  `account` varchar(255) NOT NULL,
  `character` varchar(255) DEFAULT NULL,
  `charname` varchar(255) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `pvp` varchar(255) DEFAULT NULL,
  `pvpfecha` varchar(255) DEFAULT NULL,
  `pve` varchar(255) DEFAULT NULL,
  `pvefecha` varchar(255) DEFAULT NULL,
  `medallon` varchar(255) DEFAULT NULL,
  `medallonfecha` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fecha`,`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo
-- ----------------------------

-- ----------------------------
-- Table structure for promoconf
-- ----------------------------
DROP TABLE IF EXISTS `promoconf`;
CREATE TABLE `promoconf` (
  `reino` int(11) NOT NULL,
  `activa` int(1) DEFAULT NULL,
  `rango` int(1) DEFAULT NULL,
  `ip` int(1) DEFAULT NULL,
  `player` int(1) DEFAULT NULL,
  `vip` int(1) DEFAULT NULL,
  `moderador` int(1) DEFAULT NULL,
  `gm` int(1) DEFAULT NULL,
  `pvp` int(1) DEFAULT NULL,
  `pvp_gm` int(1) DEFAULT NULL,
  `pvp_limite` int(1) DEFAULT NULL,
  `pve` int(1) DEFAULT NULL,
  `pve_gm` int(1) DEFAULT NULL,
  `pve_limite` int(1) DEFAULT NULL,
  PRIMARY KEY (`reino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promoconf
-- ----------------------------
INSERT INTO `promoconf` VALUES ('1', '1', '0', '2', '2', '3', '3', '0', '1', '0', '1', '1', '0', '1');
INSERT INTO `promoconf` VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '3', '0');

-- ----------------------------
-- Table structure for promonoip
-- ----------------------------
DROP TABLE IF EXISTS `promonoip`;
CREATE TABLE `promonoip` (
  `account` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promonoip
-- ----------------------------
INSERT INTO `promonoip` VALUES ('886');
INSERT INTO `promonoip` VALUES ('881');
INSERT INTO `promonoip` VALUES ('882');
INSERT INTO `promonoip` VALUES ('731');
INSERT INTO `promonoip` VALUES ('911');
INSERT INTO `promonoip` VALUES ('909');
INSERT INTO `promonoip` VALUES ('910');
INSERT INTO `promonoip` VALUES ('918');
INSERT INTO `promonoip` VALUES ('924');
INSERT INTO `promonoip` VALUES ('928');
INSERT INTO `promonoip` VALUES ('962');
INSERT INTO `promonoip` VALUES ('973');
INSERT INTO `promonoip` VALUES ('1001');
INSERT INTO `promonoip` VALUES ('1004');
INSERT INTO `promonoip` VALUES ('1012');
INSERT INTO `promonoip` VALUES ('929');
INSERT INTO `promonoip` VALUES ('1014');
INSERT INTO `promonoip` VALUES ('1032');
INSERT INTO `promonoip` VALUES ('1033');
INSERT INTO `promonoip` VALUES ('1077');
INSERT INTO `promonoip` VALUES ('1053');
INSERT INTO `promonoip` VALUES ('1095');
INSERT INTO `promonoip` VALUES ('1066');
INSERT INTO `promonoip` VALUES ('1112');
INSERT INTO `promonoip` VALUES ('1136');
INSERT INTO `promonoip` VALUES ('1131');
INSERT INTO `promonoip` VALUES ('1132');
INSERT INTO `promonoip` VALUES ('1134');
INSERT INTO `promonoip` VALUES ('1140');
INSERT INTO `promonoip` VALUES ('1143');
INSERT INTO `promonoip` VALUES ('1096');
INSERT INTO `promonoip` VALUES ('1163');
INSERT INTO `promonoip` VALUES ('1164');
INSERT INTO `promonoip` VALUES ('1168');
INSERT INTO `promonoip` VALUES ('968');
INSERT INTO `promonoip` VALUES ('1248');

-- ----------------------------
-- Table structure for promoset
-- ----------------------------
DROP TABLE IF EXISTS `promoset`;
CREATE TABLE `promoset` (
  `setid` int(11) NOT NULL,
  `set` varchar(255) DEFAULT NULL,
  `faccion` varchar(255) DEFAULT NULL,
  `clase` varchar(255) DEFAULT NULL,
  `talentos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`setid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promoset
-- ----------------------------
INSERT INTO `promoset` VALUES ('1', 'pvp', 'neutral', 'guerrero', 'dps');
INSERT INTO `promoset` VALUES ('2', 'pvp', 'neutral', 'paladin', 'dps');
INSERT INTO `promoset` VALUES ('3', 'pvp', 'neutral', 'paladin', 'heal');
INSERT INTO `promoset` VALUES ('4', 'pvp', 'neutral', 'cazador', 'dps');
INSERT INTO `promoset` VALUES ('5', 'pvp', 'neutral', 'picaro', 'dps');
INSERT INTO `promoset` VALUES ('6', 'pvp', 'neutral', 'sacerdote', 'dps');
INSERT INTO `promoset` VALUES ('7', 'pvp', 'neutral', 'sacerdote', 'heal');
INSERT INTO `promoset` VALUES ('8', 'pvp', 'neutral', 'dk', 'dps');
INSERT INTO `promoset` VALUES ('9', 'pvp', 'neutral', 'chaman', 'elemental');
INSERT INTO `promoset` VALUES ('10', 'pvp', 'neutral', 'chaman', 'mejora');
INSERT INTO `promoset` VALUES ('11', 'pvp', 'neutral', 'chaman', 'heal');
INSERT INTO `promoset` VALUES ('12', 'pvp', 'neutral', 'mago', 'dps');
INSERT INTO `promoset` VALUES ('13', 'pvp', 'neutral', 'brujo', 'dps');
INSERT INTO `promoset` VALUES ('14', 'pvp', 'neutral', 'druida', 'equilibrio');
INSERT INTO `promoset` VALUES ('15', 'pvp', 'neutral', 'druida', 'fereal');
INSERT INTO `promoset` VALUES ('16', 'pvp', 'neutral', 'druida', 'heal');
INSERT INTO `promoset` VALUES ('17', 'pvp', 'neutral', 'dk', 'escarcha');
INSERT INTO `promoset` VALUES ('18', 'pvp', 'neutral', 'guerrero', 'furia');
INSERT INTO `promoset` VALUES ('21', 'pve', 'alianza', 'guerrero', 'tank');
INSERT INTO `promoset` VALUES ('22', 'pve', 'alianza', 'guerrero', 'dps');
INSERT INTO `promoset` VALUES ('23', 'pve', 'alianza', 'paladin', 'tank');
INSERT INTO `promoset` VALUES ('24', 'pve', 'alianza', 'paladin', 'heal');
INSERT INTO `promoset` VALUES ('25', 'pve', 'alianza', 'paladin', 'dps');
INSERT INTO `promoset` VALUES ('26', 'pve', 'alianza', 'cazador', 'dps');
INSERT INTO `promoset` VALUES ('27', 'pve', 'alianza', 'picaro', 'dps');
INSERT INTO `promoset` VALUES ('28', 'pve', 'alianza', 'sacerdote', 'heal');
INSERT INTO `promoset` VALUES ('29', 'pve', 'alianza', 'sacerdote', 'dps');
INSERT INTO `promoset` VALUES ('30', 'pve', 'alianza', 'dk', 'tank');
INSERT INTO `promoset` VALUES ('31', 'pve', 'alianza', 'dk', 'dps');
INSERT INTO `promoset` VALUES ('32', 'pve', 'alianza', 'chaman', 'heal');
INSERT INTO `promoset` VALUES ('33', 'pve', 'alianza', 'chaman', 'elemental');
INSERT INTO `promoset` VALUES ('34', 'pve', 'alianza', 'chaman', 'mejora');
INSERT INTO `promoset` VALUES ('35', 'pve', 'alianza', 'mago', 'dps');
INSERT INTO `promoset` VALUES ('36', 'pve', 'alianza', 'brujo', 'dps');
INSERT INTO `promoset` VALUES ('37', 'pve', 'alianza', 'druida', 'tank');
INSERT INTO `promoset` VALUES ('38', 'pve', 'alianza', 'druida', 'heal');
INSERT INTO `promoset` VALUES ('39', 'pve', 'alianza', 'druida', 'equilibrio');
INSERT INTO `promoset` VALUES ('40', 'pve', 'alianza', 'druida', 'fereal');
INSERT INTO `promoset` VALUES ('41', 'pve', 'horda', 'guerrero', 'tank');
INSERT INTO `promoset` VALUES ('42', 'pve', 'horda', 'guerrero', 'dps');
INSERT INTO `promoset` VALUES ('43', 'pve', 'horda', 'paladin', 'tank');
INSERT INTO `promoset` VALUES ('44', 'pve', 'horda', 'paladin', 'heal');
INSERT INTO `promoset` VALUES ('45', 'pve', 'horda', 'paladin', 'dps');
INSERT INTO `promoset` VALUES ('46', 'pve', 'horda', 'cazador', 'dps');
INSERT INTO `promoset` VALUES ('47', 'pve', 'horda', 'picaro', 'dps');
INSERT INTO `promoset` VALUES ('48', 'pve', 'horda', 'sacerdote', 'heal');
INSERT INTO `promoset` VALUES ('49', 'pve', 'horda', 'sacerdote', 'dps');
INSERT INTO `promoset` VALUES ('50', 'pve', 'horda', 'dk', 'tank');
INSERT INTO `promoset` VALUES ('51', 'pve', 'horda', 'dk', 'dps');
INSERT INTO `promoset` VALUES ('52', 'pve', 'horda', 'chaman', 'heal');
INSERT INTO `promoset` VALUES ('53', 'pve', 'horda', 'chaman', 'elemental');
INSERT INTO `promoset` VALUES ('54', 'pve', 'horda', 'chaman', 'mejora');
INSERT INTO `promoset` VALUES ('55', 'pve', 'horda', 'mago', 'dps');
INSERT INTO `promoset` VALUES ('56', 'pve', 'horda', 'brujo', 'dps');
INSERT INTO `promoset` VALUES ('57', 'pve', 'horda', 'druida', 'tank');
INSERT INTO `promoset` VALUES ('58', 'pve', 'horda', 'druida', 'heal');
INSERT INTO `promoset` VALUES ('59', 'pve', 'horda', 'druida', 'equilibrio');
INSERT INTO `promoset` VALUES ('60', 'pve', 'horda', 'druida', 'fereal');

-- ----------------------------
-- Table structure for promosetitems
-- ----------------------------
DROP TABLE IF EXISTS `promosetitems`;
CREATE TABLE `promosetitems` (
  `setid` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `realm` int(11) DEFAULT NULL,
  PRIMARY KEY (`setid`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promosetitems
-- ----------------------------
INSERT INTO `promosetitems` VALUES ('1', '40790', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '40810', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '40829', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '40850', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '40870', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '40881', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '40882', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '40889', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '42035', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '42209', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '42486', '1', '-1');
INSERT INTO `promosetitems` VALUES ('1', '42560', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '40792', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '40812', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '40831', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '40852', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '40872', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '40881', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '40882', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '40889', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '42035', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '42333', '1', '-1');
INSERT INTO `promosetitems` VALUES ('2', '42853', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '40910', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '40928', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '40934', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '40940', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '40964', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '40976', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '40977', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '40983', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '42038', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '42069', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '42132', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '42353', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '42565', '1', '-1');
INSERT INTO `promosetitems` VALUES ('3', '42615', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '41088', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '41144', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '41158', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '41206', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '41218', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '41225', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '41230', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '41235', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '42034', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '42328', '1', '-1');
INSERT INTO `promosetitems` VALUES ('4', '42491', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '41651', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '41656', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '41673', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '41684', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '41768', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '41832', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '41836', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '41840', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '42034', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '42243', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '42256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('5', '42451', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '41898', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '41903', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '41909', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '41916', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '41922', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '41928', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '41935', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '41941', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '42036', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '42069', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '42130', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '42503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('6', '44421', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '41855', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '41860', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '41865', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '41870', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '41875', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '41881', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '41885', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '41893', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '42039', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '42072', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '42132', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '42385', '1', '-1');
INSERT INTO `promosetitems` VALUES ('7', '42503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '40791', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '40811', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '40830', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '40851', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '40871', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '40881', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '40882', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '40889', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '42035', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '42318', '1', '-1');
INSERT INTO `promosetitems` VALUES ('8', '42621', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '40995', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '41008', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '41020', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '41034', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '41045', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '41065', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '41070', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '41075', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '42036', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '42069', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '42129', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '42353', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '42565', '1', '-1');
INSERT INTO `promosetitems` VALUES ('9', '42608', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '41082', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '41138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '41152', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '41200', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '41212', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '41225', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '41230', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '41235', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '42034', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '42261', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '42271', '1', '-1');
INSERT INTO `promosetitems` VALUES ('10', '42608', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '40994', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '41002', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '41014', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '41028', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '41039', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '41051', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '41055', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '41060', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '42040', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '42072', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '42132', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '42353', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '42571', '1', '-1');
INSERT INTO `promosetitems` VALUES ('11', '42598', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '41898', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '41903', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '41909', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '41947', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '41954', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '41960', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '41966', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '41972', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '42036', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '42069', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '42130', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '42503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('12', '44421', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '41898', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '41903', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '41909', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '41994', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '41999', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '42006', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '42012', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '42018', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '42036', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '42069', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '42130', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '42503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('13', '44421', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '41282', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '41294', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '41305', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '41317', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '41328', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '41621', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '41630', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '41640', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '42036', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '42069', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '42129', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '42584', '1', '-1');
INSERT INTO `promosetitems` VALUES ('14', '45953', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '41662', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '41668', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '41679', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '41716', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '41774', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '41832', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '41836', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '41840', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '42034', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '42589', '1', '-1');
INSERT INTO `promosetitems` VALUES ('15', '45952', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '41276', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '41288', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '41299', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '41311', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '41322', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '41617', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '41621', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '41625', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '42036', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '42072', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '42116', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '42130', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '42385', '1', '-1');
INSERT INTO `promosetitems` VALUES ('16', '42579', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '40791', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '40811', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '40830', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '40851', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '40871', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '40881', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '40882', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '40889', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '42035', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('17', '42209', '2', '-1');
INSERT INTO `promosetitems` VALUES ('17', '42621', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '40790', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '40810', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '40829', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '40850', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '40870', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '40881', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '40882', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '40889', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '42035', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '42074', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '42117', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '42131', '1', '-1');
INSERT INTO `promosetitems` VALUES ('18', '42318', '2', '-1');
INSERT INTO `promosetitems` VALUES ('18', '42486', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '40257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '40372', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '40385', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '40387', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '45111', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '45112', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '45319', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '45326', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '45542', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '45825', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '45877', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '48433', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '48447', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '48451', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '48453', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '48455', '1', '-1');
INSERT INTO `promosetitems` VALUES ('21', '50290', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '40385', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '45138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '45250', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '45501', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '45540', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '45888', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '46040', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '46041', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '48381', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '48382', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '48383', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '48384', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '48385', '1', '-1');
INSERT INTO `promosetitems` VALUES ('22', '50267', '2', '-1');
INSERT INTO `promosetitems` VALUES ('23', '40257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '40372', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '40387', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '45111', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '45112', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '45139', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '45145', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '45319', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '45326', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '45542', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '45877', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '48642', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '48643', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '48644', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '48645', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '48646', '1', '-1');
INSERT INTO `promosetitems` VALUES ('23', '50290', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '40258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '40399', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '40592', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '45147', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '45235', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '45252', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '45436', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '45505', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '45887', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '46047', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '48580', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '48581', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '48582', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '48583', '1', '-1');
INSERT INTO `promosetitems` VALUES ('24', '48584', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '40591', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '45106', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '45138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '45193', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '45250', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '45510', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '45824', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '45888', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '48612', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '48613', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '48614', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '48615', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '48616', '1', '-1');
INSERT INTO `promosetitems` VALUES ('25', '49299', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '40549', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '45157', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '45327', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '45454', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '45456', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '45498', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '45827', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '45945', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '48260', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '48261', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '48262', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '48263', '1', '-1');
INSERT INTO `promosetitems` VALUES ('26', '48264', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '40371', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '44664', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '45086', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '45108', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '45157', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '45162', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '45456', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '45547', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '48228', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '48229', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '48230', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '48231', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '48232', '1', '-1');
INSERT INTO `promosetitems` VALUES ('27', '50203', '2', '-1');
INSERT INTO `promosetitems` VALUES ('28', '40258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '45113', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '45146', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '45257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '45483', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '45508', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '45529', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '46047', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '46096', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '48029', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '48031', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '48033', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '48035', '1', '-1');
INSERT INTO `promosetitems` VALUES ('28', '48037', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '40255', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '45257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '45258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '45275', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '45508', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '48082', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '48083', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '48084', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '48085', '1', '-1');
INSERT INTO `promosetitems` VALUES ('29', '48086', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '40257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '40372', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45108', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45111', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45112', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45144', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45319', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45542', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45551', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45821', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '45871', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '48543', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '48544', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '48545', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '48546', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '48547', '1', '-1');
INSERT INTO `promosetitems` VALUES ('30', '50268', '2', '-1');
INSERT INTO `promosetitems` VALUES ('31', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '40591', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '45106', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '45138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '45193', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '45250', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '45254', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '45824', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '45888', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '48486', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '48487', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '48488', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '48489', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '48490', '1', '-1');
INSERT INTO `promosetitems` VALUES ('31', '50191', '2', '-1');
INSERT INTO `promosetitems` VALUES ('32', '40258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '40399', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '45114', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '45147', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '45187', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '45235', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '45513', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '45828', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '45887', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '46047', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '48290', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '48291', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '48292', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '48293', '1', '-1');
INSERT INTO `promosetitems` VALUES ('32', '48294', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '40401', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '45151', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '45187', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '45255', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '45513', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '46035', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '48321', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '48322', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '48323', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '48324', '1', '-1');
INSERT INTO `promosetitems` VALUES ('33', '48325', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '40375', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '40549', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '45169', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '45454', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '45467', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '45503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '45945', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '46048', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '48351', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '48352', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '48353', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '48354', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '48355', '1', '-1');
INSERT INTO `promosetitems` VALUES ('34', '50191', '2', '-1');
INSERT INTO `promosetitems` VALUES ('35', '40255', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '45257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '45258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '45275', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '45508', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '47758', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '47759', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '47760', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '47761', '1', '-1');
INSERT INTO `promosetitems` VALUES ('35', '47762', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '40255', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '45257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '45258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '45275', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '45508', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '47788', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '47789', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '47790', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '47791', '1', '-1');
INSERT INTO `promosetitems` VALUES ('36', '47792', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '40257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '40372', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '44664', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '45108', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '45162', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '45503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '45509', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '45547', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '46048', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '47834', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '48203', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '48204', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '48205', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '48206', '1', '-1');
INSERT INTO `promosetitems` VALUES ('37', '48207', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '40258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '40566', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '45113', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '45149', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '45260', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '45529', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '46047', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '46096', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '46138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '48138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '48139', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '48140', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '48141', '1', '-1');
INSERT INTO `promosetitems` VALUES ('38', '48142', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '45149', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '45260', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '45270', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '45830', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '48168', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '48169', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '48170', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '48171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '48172', '1', '-1');
INSERT INTO `promosetitems` VALUES ('39', '50273', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '44664', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '45108', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '45157', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '45162', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '45498', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '45503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '45509', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '45547', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '48203', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '48204', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '48205', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '48206', '1', '-1');
INSERT INTO `promosetitems` VALUES ('40', '48207', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '40257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '40372', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '40387', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '45111', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '45112', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '45137', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '45319', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '45326', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '45542', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '45825', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '45877', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '48466', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '48467', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '48468', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '48469', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '48470', '1', '-1');
INSERT INTO `promosetitems` VALUES ('41', '50290', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '45137', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '45138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '45250', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '45501', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '45540', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '45888', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '46040', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '46041', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '48396', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '48397', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '48398', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '48399', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '48400', '1', '-1');
INSERT INTO `promosetitems` VALUES ('42', '50267', '2', '-1');
INSERT INTO `promosetitems` VALUES ('43', '40257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '40372', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '40387', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '45111', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '45112', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '45145', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '45319', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '45326', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '45542', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '45825', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '45877', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '48647', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '48648', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '48649', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '48650', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '48651', '1', '-1');
INSERT INTO `promosetitems` VALUES ('43', '50290', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '40258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '40399', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '40592', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '45147', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '45235', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '45252', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '45436', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '45505', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '45887', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '46047', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '48585', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '48586', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '48587', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '48588', '1', '-1');
INSERT INTO `promosetitems` VALUES ('44', '48589', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '40591', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '45106', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '45138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '45193', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '45250', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '45510', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '45824', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '45888', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '48617', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '48618', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '48619', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '48620', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '48621', '1', '-1');
INSERT INTO `promosetitems` VALUES ('45', '49299', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '264', '0', '-1');
INSERT INTO `promosetitems` VALUES ('46', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '40549', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '45327', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '45454', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '45498', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '45503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '45827', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '45945', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '47868', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '48265', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '48266', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '48267', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '48268', '1', '-1');
INSERT INTO `promosetitems` VALUES ('46', '48269', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '40371', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '44664', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '45086', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '45108', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '45157', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '45162', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '45456', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '45547', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '48233', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '48234', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '48235', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '48236', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '48237', '1', '-1');
INSERT INTO `promosetitems` VALUES ('47', '50203', '2', '-1');
INSERT INTO `promosetitems` VALUES ('48', '40258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '45113', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '45146', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '45257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '45483', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '45508', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '45529', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '46047', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '46096', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '48057', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '48058', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '48059', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '48060', '1', '-1');
INSERT INTO `promosetitems` VALUES ('48', '48061', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '40255', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '45257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '45258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '45275', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '45508', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '48087', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '48088', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '48089', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '48090', '1', '-1');
INSERT INTO `promosetitems` VALUES ('49', '48091', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '40257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '40372', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '45108', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '45111', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '45112', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '45144', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '45319', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '45542', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '45821', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '45871', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '48548', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '48549', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '48550', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '48551', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '48552', '1', '-1');
INSERT INTO `promosetitems` VALUES ('50', '50268', '2', '-1');
INSERT INTO `promosetitems` VALUES ('51', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '40591', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '45106', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '45138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '45193', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '45250', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '45254', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '45824', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '45888', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '48491', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '48492', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '48493', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '48494', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '48495', '1', '-1');
INSERT INTO `promosetitems` VALUES ('51', '50191', '2', '-1');
INSERT INTO `promosetitems` VALUES ('52', '40258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '40399', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '45114', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '45147', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '45187', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '45235', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '45513', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '45828', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '45887', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '46047', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '48305', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '48306', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '48307', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '48308', '1', '-1');
INSERT INTO `promosetitems` VALUES ('52', '48309', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '45151', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '45187', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '45255', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '45513', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '45887', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '46035', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '48326', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '48327', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '48328', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '48329', '1', '-1');
INSERT INTO `promosetitems` VALUES ('53', '48330', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '40549', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '44664', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '45157', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '45169', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '45454', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '45456', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '45467', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '48356', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '48357', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '48358', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '48359', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '48360', '1', '-1');
INSERT INTO `promosetitems` VALUES ('54', '50191', '2', '-1');
INSERT INTO `promosetitems` VALUES ('55', '40255', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '45257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '45258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '45275', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '45508', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '47763', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '47764', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '47765', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '47766', '1', '-1');
INSERT INTO `promosetitems` VALUES ('55', '47767', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '40255', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '45257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '45258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '45275', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '45508', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '47793', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '47794', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '47795', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '47796', '1', '-1');
INSERT INTO `promosetitems` VALUES ('56', '47797', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '40256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '40257', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '44664', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '45108', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '45162', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '45256', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '45503', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '45509', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '45547', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '46048', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '48198', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '48199', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '48200', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '48201', '1', '-1');
INSERT INTO `promosetitems` VALUES ('57', '48202', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '40258', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '40566', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '45113', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '45149', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '45171', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '45260', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '45529', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '46047', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '46096', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '46138', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '48143', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '48144', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '48145', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '48146', '1', '-1');
INSERT INTO `promosetitems` VALUES ('58', '48147', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '40373', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '40432', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '44005', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '44661', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '45149', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '45260', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '45270', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '45515', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '45830', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '46046', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '48173', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '48174', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '48175', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '48176', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '48177', '1', '-1');
INSERT INTO `promosetitems` VALUES ('59', '50273', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '40403', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '40431', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '44664', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '45108', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '45112', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '45157', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '45162', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '45498', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '45509', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '45547', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '48198', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '48199', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '48200', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '48201', '1', '-1');
INSERT INTO `promosetitems` VALUES ('60', '48202', '1', '-1');

-- ----------------------------
-- Table structure for promospells
-- ----------------------------
DROP TABLE IF EXISTS `promospells`;
CREATE TABLE `promospells` (
  `class` int(11) NOT NULL,
  `spell` int(11) NOT NULL,
  `reino` int(11) NOT NULL,
  PRIMARY KEY (`class`,`spell`,`reino`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promospells
-- ----------------------------
INSERT INTO `promospells` VALUES ('1', '266', '-1');
INSERT INTO `promospells` VALUES ('1', '674', '-1');
INSERT INTO `promospells` VALUES ('1', '750', '-1');
INSERT INTO `promospells` VALUES ('2', '0', '-1');
INSERT INTO `promospells` VALUES ('2', '196', '-1');
INSERT INTO `promospells` VALUES ('2', '750', '-1');
INSERT INTO `promospells` VALUES ('3', '0', '-1');
INSERT INTO `promospells` VALUES ('3', '200', '-1');
INSERT INTO `promospells` VALUES ('3', '264', '-1');
INSERT INTO `promospells` VALUES ('3', '8737', '-1');
INSERT INTO `promospells` VALUES ('4', '0', '-1');
INSERT INTO `promospells` VALUES ('5', '0', '-1');
INSERT INTO `promospells` VALUES ('6', '0', '-1');
INSERT INTO `promospells` VALUES ('7', '196', '-1');
INSERT INTO `promospells` VALUES ('7', '8737', '-1');
INSERT INTO `promospells` VALUES ('8', '0', '-1');
INSERT INTO `promospells` VALUES ('9', '0', '-1');
INSERT INTO `promospells` VALUES ('11', '0', '-1');
INSERT INTO `promospells` VALUES ('11', '200', '-1');
INSERT INTO `promospells` VALUES ('11', '5487', '-1');

-- ----------------------------
-- Table structure for worldchat_clase
-- ----------------------------
DROP TABLE IF EXISTS `worldchat_clase`;
CREATE TABLE `worldchat_clase` (
  `clase` int(11) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `realm` int(11) NOT NULL,
  PRIMARY KEY (`clase`,`realm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worldchat_clase
-- ----------------------------
INSERT INTO `worldchat_clase` VALUES ('0', 'FFFFFF', '-1');
INSERT INTO `worldchat_clase` VALUES ('1', 'C79C6E', '-1');
INSERT INTO `worldchat_clase` VALUES ('2', 'F58CBA', '-1');
INSERT INTO `worldchat_clase` VALUES ('3', 'ABD473', '-1');
INSERT INTO `worldchat_clase` VALUES ('4', 'FFF569', '-1');
INSERT INTO `worldchat_clase` VALUES ('5', 'FFFFFF', '-1');
INSERT INTO `worldchat_clase` VALUES ('6', 'C41F3B', '-1');
INSERT INTO `worldchat_clase` VALUES ('7', '0070DE', '-1');
INSERT INTO `worldchat_clase` VALUES ('8', '69CCF0', '-1');
INSERT INTO `worldchat_clase` VALUES ('9', '9482C9', '-1');
INSERT INTO `worldchat_clase` VALUES ('10', 'FFFFFF', '-1');
INSERT INTO `worldchat_clase` VALUES ('11', 'FF7d0A', '-1');

-- ----------------------------
-- Table structure for worldchat_rango
-- ----------------------------
DROP TABLE IF EXISTS `worldchat_rango`;
CREATE TABLE `worldchat_rango` (
  `rango` int(11) DEFAULT NULL,
  `rango_nombre` varchar(255) DEFAULT NULL,
  `rango_color` varchar(255) DEFAULT NULL,
  `chat_color` varchar(255) DEFAULT NULL,
  `realm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worldchat_rango
-- ----------------------------
INSERT INTO `worldchat_rango` VALUES ('0', 'Jugador', 'FFA81E', '7DFF00', '-1');
INSERT INTO `worldchat_rango` VALUES ('1', 'Moderador', 'E700B1', 'FFA81E', '-1');
INSERT INTO `worldchat_rango` VALUES ('2', 'GM', '00f6ff', 'FFA81E', '-1');
INSERT INTO `worldchat_rango` VALUES ('3', 'GM', '00f6ff', 'FFA81E', '-1');
INSERT INTO `worldchat_rango` VALUES ('4', 'GM', '00f6ff', 'FFA81E', '-1');
INSERT INTO `worldchat_rango` VALUES ('5', 'GM', '00f6ff', 'FFA81E', '-1');
INSERT INTO `worldchat_rango` VALUES ('6', 'GM Lider', 'ff3232', '217fdd', '-1');
INSERT INTO `worldchat_rango` VALUES ('7', 'Devoleper', 'a500ff', 'a500ff', '-1');
INSERT INTO `worldchat_rango` VALUES ('8', 'Administrador', '6b0000', 'FFA81E', '-1');
INSERT INTO `worldchat_rango` VALUES ('9', 'Dev/Administrador', 'FF0000', 'FF0000', '-1');
