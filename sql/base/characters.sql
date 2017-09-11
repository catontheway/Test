/*
Navicat MySQL Data Transfer

Source Server         : 201.219.220.32
Source Server Version : 50555
Source Host           : localhost:3306
Source Database       : characters

Target Server Type    : MYSQL
Target Server Version : 50555
File Encoding         : 65001

Date: 2017-07-18 10:26:07
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
-- Table structure for custom_reforging
-- ----------------------------
DROP TABLE IF EXISTS `custom_reforging`;
CREATE TABLE `custom_reforging` (
  `GUID` int(10) unsigned NOT NULL COMMENT 'item guid low',
  `increase` int(10) unsigned NOT NULL COMMENT 'stat_type',
  `decrease` int(10) unsigned NOT NULL COMMENT 'stat_type',
  `stat_value` int(10) NOT NULL DEFAULT '0' COMMENT 'stat change',
  `Owner` int(10) unsigned DEFAULT NULL COMMENT 'player guid',
  PRIMARY KEY (`GUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of custom_reforging
-- ----------------------------

-- ----------------------------
-- Table structure for custom_transmogrification
-- ----------------------------
DROP TABLE IF EXISTS `custom_transmogrification`;
CREATE TABLE `custom_transmogrification` (
  `GUID` int(10) unsigned NOT NULL COMMENT 'Item guidLow',
  `FakeEntry` int(10) unsigned NOT NULL COMMENT 'Item entry',
  `Owner` int(10) unsigned NOT NULL COMMENT 'Player guidLow',
  PRIMARY KEY (`GUID`),
  KEY `Owner` (`Owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='6_2';

-- ----------------------------
-- Table structure for custom_transmogrification_sets
-- ----------------------------
DROP TABLE IF EXISTS `custom_transmogrification_sets`;
CREATE TABLE `custom_transmogrification_sets` (
  `Owner` int(10) unsigned NOT NULL COMMENT 'Player guidlow',
  `PresetID` tinyint(3) unsigned NOT NULL COMMENT 'Preset identifier',
  `SetName` text COMMENT 'SetName',
  `SetData` text COMMENT 'Slot1 Entry1 Slot2 Entry2',
  PRIMARY KEY (`Owner`,`PresetID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='6_1';

-- ----------------------------
-- Records of custom_transmogrification_sets
-- ----------------------------

-- ----------------------------
-- Table structure for evc_controles
-- ----------------------------
DROP TABLE IF EXISTS `evc_controles`;
CREATE TABLE `evc_controles` (
  `punto` int(10) NOT NULL,
  `zone` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `x` float(255,0) DEFAULT NULL,
  `y` float(255,0) DEFAULT NULL,
  `z` float(255,0) DEFAULT NULL,
  `map` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `guid` int(11) DEFAULT NULL,
  `sx` float DEFAULT NULL,
  `sy` float DEFAULT NULL,
  `sz` float DEFAULT NULL,
  `so` float DEFAULT NULL,
  `smap` int(11) DEFAULT NULL,
  PRIMARY KEY (`punto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for evc_registro
-- ----------------------------
DROP TABLE IF EXISTS `evc_registro`;
CREATE TABLE `evc_registro` (
  `evcid` int(11) NOT NULL AUTO_INCREMENT,
  `acc` int(11) DEFAULT NULL,
  `account` varchar(11) DEFAULT NULL,
  `player` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `inicio` int(255) DEFAULT NULL,
  `fin` int(255) DEFAULT NULL,
  `tiempo` int(255) DEFAULT NULL,
  `r` int(1) DEFAULT '0',
  PRIMARY KEY (`evcid`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evc_registro
-- ----------------------------

-- ----------------------------
-- Table structure for evc_tiempos
-- ----------------------------
DROP TABLE IF EXISTS `evc_tiempos`;
CREATE TABLE `evc_tiempos` (
  `evcid` int(11) NOT NULL,
  `punto` int(10) NOT NULL,
  `tiempo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`evcid`,`punto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of evc_tiempos
-- ----------------------------

-- ----------------------------
-- Table structure for promo
-- ----------------------------
DROP TABLE IF EXISTS `promo`;
CREATE TABLE `promo` (
  `promo_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `fecha` varchar(255) CHARACTER SET utf8 NOT NULL,
  `account` int(11) NOT NULL DEFAULT '0',
  `pjid` int(11) DEFAULT NULL,
  `pjname` varchar(30) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `detalles` varchar(255) DEFAULT NULL,
  `class` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `recskill` int(11) DEFAULT '1',
  `secpro` int(11) DEFAULT '0',
  PRIMARY KEY (`promo_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6453 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of promo
-- ----------------------------

-- ----------------------------
-- Table structure for promo_conf
-- ----------------------------
DROP TABLE IF EXISTS `promo_conf`;
CREATE TABLE `promo_conf` (
  `activa` int(1) DEFAULT NULL,
  `rango` int(1) DEFAULT NULL,
  `player` int(1) DEFAULT NULL,
  `vip` int(1) DEFAULT NULL,
  `moderador` int(1) DEFAULT NULL,
  `gm` int(1) DEFAULT NULL,
  `pvp` int(1) DEFAULT NULL,
  `pvp_rango` int(1) DEFAULT NULL,
  `pvp_limite` int(1) DEFAULT NULL,
  `pve` int(1) DEFAULT NULL,
  `pve_rango` int(1) DEFAULT NULL,
  `pve_limite` int(1) DEFAULT NULL,
  `prof` int(1) DEFAULT NULL,
  `proflimite` int(1) DEFAULT NULL,
  `proflimiterece` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo_conf
-- ----------------------------
INSERT INTO `promo_conf` VALUES ('1', '0', '2', '3', '3', '0', '1', '0', '1', '1', '0', '1', '1', '0', '2');

-- ----------------------------
-- Table structure for promo_excluir_ip
-- ----------------------------
DROP TABLE IF EXISTS `promo_excluir_ip`;
CREATE TABLE `promo_excluir_ip` (
  `ip` varchar(255) DEFAULT NULL,
  `lider` varchar(255) DEFAULT NULL,
  `detalles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo_excluir_ip
-- ----------------------------

-- ----------------------------
-- Table structure for promo_get
-- ----------------------------
DROP TABLE IF EXISTS `promo_get`;
CREATE TABLE `promo_get` (
  `promo_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `promo_id` int(11) DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `set` int(11) DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `detalles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`promo_class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19178 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo_get
-- ----------------------------

-- ----------------------------
-- Table structure for promo_items
-- ----------------------------
DROP TABLE IF EXISTS `promo_items`;
CREATE TABLE `promo_items` (
  `set` varchar(255) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT '0',
  `hitem` int(11) DEFAULT '0',
  `cantidad` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo_items
-- ----------------------------
INSERT INTO `promo_items` VALUES ('pvp', '1', '40790', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '40810', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '40829', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '40850', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '40870', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '40881', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '40882', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '40889', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '42035', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '42209', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '42486', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '42560', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '1', '42318', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '40790', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '40810', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '40829', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '40850', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '40870', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '40881', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '40882', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '40889', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '42035', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '2', '42318', null, '2');
INSERT INTO `promo_items` VALUES ('pvp', '2', '42486', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '40792', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '40812', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '40831', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '40852', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '40872', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '40881', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '40882', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '40889', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '42035', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '42333', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '3', '42853', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '40910', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '40928', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '40934', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '40940', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '40964', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '40976', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '40977', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '40983', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '42038', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '42069', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '42132', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '42353', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '42565', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '4', '42615', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '41088', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '41144', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '41158', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '41206', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '41218', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '41225', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '41230', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '41235', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '42034', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '42328', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '5', '42491', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '41651', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '41656', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '41673', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '41684', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '41768', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '41832', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '41836', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '41840', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '42034', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '42243', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '42256', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '6', '42451', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '41898', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '41903', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '41909', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '41916', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '41922', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '41928', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '41935', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '41941', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '42036', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '42069', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '42130', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '42503', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '7', '44421', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '41855', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '41860', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '41865', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '41870', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '41875', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '41881', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '41885', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '41893', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '42039', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '42072', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '42132', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '42385', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '8', '42503', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '40791', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '40811', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '40830', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '40851', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '40871', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '40881', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '40882', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '40889', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '42035', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '42318', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '9', '42621', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '40791', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '40811', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '40830', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '40851', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '40871', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '40881', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '40882', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '40889', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '42035', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '10', '42209', null, '2');
INSERT INTO `promo_items` VALUES ('pvp', '10', '42621', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '40995', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '41008', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '41020', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '41034', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '41045', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '41065', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '41070', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '41075', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '42036', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '42069', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '42129', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '42353', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '42565', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '11', '42603', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '41082', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '41138', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '41152', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '41200', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '41212', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '41225', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '41230', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '41235', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '42034', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '42261', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '42271', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '12', '42608', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '40994', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '41002', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '41014', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '41028', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '41039', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '41051', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '41055', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '41060', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '42040', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '42072', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '42132', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '42353', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '42571', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '13', '42598', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '41898', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '41903', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '41909', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '41947', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '41954', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '41960', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '41966', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '41972', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '42036', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '42069', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '42130', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '42503', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '14', '44421', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '41898', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '41903', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '41909', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '41994', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '41999', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '42006', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '42012', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '42018', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '42036', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '42069', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '42130', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '42503', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '15', '44421', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '41282', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '41294', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '41305', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '41317', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '41328', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '41621', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '41630', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '41640', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '42036', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '42069', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '42129', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '42584', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '16', '45953', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '41662', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '41668', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '41679', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '41716', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '41774', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '41832', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '41836', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '41840', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '42034', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '42074', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '42117', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '42131', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '42589', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '17', '45952', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '41276', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '41288', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '41299', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '41311', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '41322', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '41617', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '41621', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '41625', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '42036', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '42072', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '42116', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '42130', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '42385', null, '1');
INSERT INTO `promo_items` VALUES ('pvp', '18', '42579', null, '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '40257', '40257', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '40372', '40372', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '45137', '40387', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '40387', '45111', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '45111', '45112', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '45112', '45137', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '45319', '45319', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '45326', '45326', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '45542', '45542', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '45825', '45825', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '45877', '45877', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '48433', '48466', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '48447', '48467', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '48451', '48468', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '48453', '48469', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '48455', '48470', '1');
INSERT INTO `promo_items` VALUES ('pve', '1', '50290', '50290', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '40256', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '45261', '40431', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '40431', '45261', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '45138', '45138', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '45250', '45250', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '45501', '45501', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '45540', '45540', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '45888', '45888', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '46040', '46040', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '46041', '46041', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '48381', '48396', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '48382', '48397', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '48383', '48398', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '48384', '48399', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '48385', '48400', '1');
INSERT INTO `promo_items` VALUES ('pve', '2', '50267', '50267', '2');
INSERT INTO `promo_items` VALUES ('pve', '3', '40257', '40257', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '40372', '40372', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '40387', '40387', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '45111', '45111', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '45112', '45112', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '45139', '45145', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '45145', '45319', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '45319', '45326', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '45326', '45542', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '45542', '45825', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '45877', '45877', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '48642', '48647', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '48643', '48648', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '48644', '48649', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '48645', '48650', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '48646', '48651', '1');
INSERT INTO `promo_items` VALUES ('pve', '3', '50290', '50290', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '40258', '40258', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '40399', '40399', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '40432', '40432', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '40592', '40592', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '44005', '44005', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '45147', '45147', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '45235', '45235', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '45252', '45252', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '45436', '45436', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '45505', '45505', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '45887', '45887', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '46047', '46047', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '48580', '48585', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '48581', '48586', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '48582', '48587', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '48583', '48588', '1');
INSERT INTO `promo_items` VALUES ('pve', '4', '48584', '48589', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '40256', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '40431', '40431', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '40591', '40591', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '45106', '45106', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '45138', '45138', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '45193', '45193', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '45250', '45250', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '45510', '45510', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '45824', '45824', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '45888', '45888', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '48612', '48617', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '48613', '48618', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '48614', '48619', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '48615', '48620', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '48616', '48621', '1');
INSERT INTO `promo_items` VALUES ('pve', '5', '49299', '49299', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '40256', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '40403', '40403', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '40431', '40431', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '40549', '40549', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '45157', '45327', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '45327', '45454', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '45454', '45498', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '45456', '45503', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '45498', '45827', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '45827', '45945', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '45945', '47868', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '48260', '48265', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '48261', '48266', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '48262', '48267', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '48263', '48268', '1');
INSERT INTO `promo_items` VALUES ('pve', '6', '48264', '48269', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '40256', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '40371', '40371', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '40403', '40403', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '44664', '44664', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '45086', '45086', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '45108', '45108', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '45157', '45157', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '45162', '45162', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '45456', '45456', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '45547', '45547', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '48228', '48233', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '48229', '48234', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '48230', '48235', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '48231', '48236', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '48232', '48237', '1');
INSERT INTO `promo_items` VALUES ('pve', '7', '50203', '50203', '2');
INSERT INTO `promo_items` VALUES ('pve', '8', '40258', '40258', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '40432', '40432', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '45113', '45113', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '45146', '45146', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '45171', '45171', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '45257', '45257', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '45483', '45483', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '45508', '45508', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '45529', '45529', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '46047', '46047', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '46096', '46096', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '48029', '48057', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '48031', '48058', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '48033', '48059', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '48035', '48060', '1');
INSERT INTO `promo_items` VALUES ('pve', '8', '48037', '48061', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '40255', '40255', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '40373', '40373', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '44005', '44005', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '44661', '44661', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '45171', '45171', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '45257', '45257', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '45258', '45258', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '45275', '45275', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '45508', '45508', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '45515', '45515', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '46046', '46046', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '48082', '48087', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '48083', '48088', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '48084', '48089', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '48085', '48090', '1');
INSERT INTO `promo_items` VALUES ('pve', '9', '48086', '48091', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '40257', '40257', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '40372', '40372', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '45111', '45111', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '45112', '45112', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '45144', '45144', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '45319', '45319', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '45542', '45542', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '45551', '45551', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '45821', '45821', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '45871', '45871', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '48543', '48548', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '48544', '48549', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '48545', '48550', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '48546', '48551', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '48547', '48552', '1');
INSERT INTO `promo_items` VALUES ('pve', '10', '50268', '50268', '2');
INSERT INTO `promo_items` VALUES ('pve', '11', '40256', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '40431', '40431', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '40591', '40591', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '45106', '45106', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '45138', '45138', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '45193', '45193', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '45250', '45250', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '45254', '45254', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '45824', '45824', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '45888', '45888', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '48486', '48491', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '48487', '48492', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '48488', '48493', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '48489', '48494', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '48490', '48495', '1');
INSERT INTO `promo_items` VALUES ('pve', '11', '50191', '50191', '2');
INSERT INTO `promo_items` VALUES ('pve', '13', '40258', '40258', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '40399', '40399', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '40432', '40432', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '44005', '44005', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '45114', '45114', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '45147', '45147', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '45187', '45187', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '45235', '45235', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '45513', '45513', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '45828', '45828', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '45887', '45887', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '46047', '46047', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '48290', '48305', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '48291', '48306', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '48292', '48307', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '48293', '48308', '1');
INSERT INTO `promo_items` VALUES ('pve', '13', '48294', '48309', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '40373', '40373', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '40401', '40432', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '40432', '44005', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '44005', '44661', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '44661', '45151', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '45151', '45187', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '45187', '45255', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '45255', '45513', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '45513', '45515', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '45515', '45887', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '46035', '46035', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '46046', '46046', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '48321', '48326', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '48322', '48327', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '48323', '48328', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '48324', '48329', '1');
INSERT INTO `promo_items` VALUES ('pve', '14', '48325', '48330', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '40375', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '40403', '40403', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '40431', '40431', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '40549', '40549', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '45169', '44664', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '45454', '45157', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '45467', '45169', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '45503', '45454', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '45945', '45456', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '46048', '45467', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '48351', '48356', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '48352', '48357', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '48353', '48358', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '48354', '48359', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '48355', '48360', '1');
INSERT INTO `promo_items` VALUES ('pve', '15', '50191', '50191', '2');
INSERT INTO `promo_items` VALUES ('pve', '16', '40255', '40255', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '40373', '40373', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '44005', '44005', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '44661', '44661', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '45171', '45171', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '45257', '45257', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '45258', '45258', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '45275', '45275', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '45508', '45508', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '45515', '45515', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '46046', '46046', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '47758', '47763', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '47759', '47764', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '47760', '47765', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '47761', '47766', '1');
INSERT INTO `promo_items` VALUES ('pve', '16', '47762', '47767', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '40255', '40255', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '40373', '40373', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '44005', '44005', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '44661', '44661', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '45171', '45171', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '45257', '45257', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '45258', '45258', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '45275', '45275', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '45508', '45508', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '45515', '45515', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '46046', '46046', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '47788', '47793', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '47789', '47794', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '47790', '47795', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '47791', '47796', '1');
INSERT INTO `promo_items` VALUES ('pve', '17', '47792', '47797', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '40257', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '40372', '40257', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '40403', '40403', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '44664', '44664', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '45108', '45108', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '45162', '45162', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '45503', '45256', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '45509', '45503', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '45547', '45509', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '46048', '45547', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '45256', '46048', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '48203', '48198', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '48204', '48199', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '48205', '48200', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '48206', '48201', '1');
INSERT INTO `promo_items` VALUES ('pve', '18', '48207', '48202', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '40258', '40258', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '40432', '40432', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '40566', '40566', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '45113', '45113', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '45149', '45149', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '45171', '45171', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '45260', '45260', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '45529', '45529', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '46047', '46047', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '46096', '46096', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '46138', '46138', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '48138', '48143', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '48139', '48144', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '48140', '48145', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '48141', '48146', '1');
INSERT INTO `promo_items` VALUES ('pve', '19', '48142', '48147', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '40373', '40373', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '40432', '40432', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '44005', '44005', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '44661', '44661', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '45149', '45149', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '45260', '45260', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '45270', '45270', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '45515', '45515', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '45830', '45830', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '46046', '46046', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '48168', '48173', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '48169', '48174', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '48170', '48175', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '48171', '48176', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '48172', '48177', '1');
INSERT INTO `promo_items` VALUES ('pve', '20', '50273', '50273', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '40256', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '40403', '40403', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '40431', '40431', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '44664', '44664', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '45108', '45108', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '45157', '45112', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '45162', '45157', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '45498', '45162', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '45503', '45498', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '45509', '45509', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '45547', '45547', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '48203', '48198', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '48204', '48199', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '48205', '48200', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '48206', '48201', '1');
INSERT INTO `promo_items` VALUES ('pve', '21', '48207', '48202', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '50267', '50267', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '40256', '40256', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '40431', '40431', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '40591', '40591', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '45106', '45106', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '45138', '45138', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '45193', '45193', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '45250', '45250', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '45254', '45254', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '45824', '45824', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '45888', '45888', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '48486', '48491', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '48487', '48492', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '48488', '48493', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '48489', '48494', '1');
INSERT INTO `promo_items` VALUES ('pve', '12', '48490', '48495', '1');

-- ----------------------------
-- Table structure for promo_profe
-- ----------------------------
DROP TABLE IF EXISTS `promo_profe`;
CREATE TABLE `promo_profe` (
  `promoprofeid` int(11) NOT NULL DEFAULT '0',
  `account` int(11) DEFAULT NULL,
  `pj` int(11) DEFAULT NULL,
  `profe` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `recetas` int(1) DEFAULT '0',
  `fecha` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  `detalles` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of promo_profe
-- ----------------------------


-- ----------------------------
-- Table structure for promo_rest
-- ----------------------------
DROP TABLE IF EXISTS `promo_rest`;
CREATE TABLE `promo_rest` (
  `pjid` int(11) NOT NULL,
  `skills` int(11) DEFAULT NULL,
  `pets` int(11) DEFAULT NULL,
  PRIMARY KEY (`pjid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo_rest
-- ----------------------------
INSERT INTO `promo_rest` VALUES ('147', '1', null);
INSERT INTO `promo_rest` VALUES ('224', '1', null);
INSERT INTO `promo_rest` VALUES ('318', '1', null);
INSERT INTO `promo_rest` VALUES ('586', '1', null);
INSERT INTO `promo_rest` VALUES ('601', '1', null);
INSERT INTO `promo_rest` VALUES ('1429', '1', null);
INSERT INTO `promo_rest` VALUES ('1493', '1', null);
INSERT INTO `promo_rest` VALUES ('1513', '1', null);
INSERT INTO `promo_rest` VALUES ('1794', '1', null);
INSERT INTO `promo_rest` VALUES ('3250', '1', null);
INSERT INTO `promo_rest` VALUES ('3698', '1', null);
INSERT INTO `promo_rest` VALUES ('3851', '1', null);
INSERT INTO `promo_rest` VALUES ('3934', '1', null);
INSERT INTO `promo_rest` VALUES ('8510', '1', null);

-- ----------------------------
-- Table structure for promo_sets
-- ----------------------------
DROP TABLE IF EXISTS `promo_sets`;
CREATE TABLE `promo_sets` (
  `set` varchar(255) NOT NULL,
  `id` int(11) NOT NULL,
  `class` int(2) DEFAULT NULL,
  `detalles` varchar(255) DEFAULT NULL,
  `npc_text` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`set`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo_sets
-- ----------------------------
INSERT INTO `promo_sets` VALUES ('pve', '1', '1', 'guerrero tank', 'Tank');
INSERT INTO `promo_sets` VALUES ('pve', '2', '1', 'guerrero dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pve', '3', '2', 'paladin tank', 'Tank');
INSERT INTO `promo_sets` VALUES ('pve', '4', '2', 'paladin heal', 'Heal');
INSERT INTO `promo_sets` VALUES ('pve', '5', '2', 'paladin dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pve', '6', '3', 'cazador dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pve', '7', '4', 'picaro dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pve', '8', '5', 'sacerdote heal', 'Heal');
INSERT INTO `promo_sets` VALUES ('pve', '9', '5', 'sacerdote dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pve', '10', '6', 'dk 2 armas de 1 mano Tank', 'Tank');
INSERT INTO `promo_sets` VALUES ('pve', '11', '6', 'dk 2 armas de 1 mano DPS', 'DPS 2 armas de 1 mano');
INSERT INTO `promo_sets` VALUES ('pve', '12', '6', 'dk 1 arma de 2 manos', 'DPS 1 arma de 2 manos');
INSERT INTO `promo_sets` VALUES ('pve', '13', '7', 'chaman heal', 'Heal');
INSERT INTO `promo_sets` VALUES ('pve', '14', '7', 'chaman elemental', 'Elemental');
INSERT INTO `promo_sets` VALUES ('pve', '15', '7', 'chaman mejora', 'Mejora');
INSERT INTO `promo_sets` VALUES ('pve', '16', '8', 'mago dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pve', '17', '9', 'brujo dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pve', '18', '11', 'druida tank', 'Tank');
INSERT INTO `promo_sets` VALUES ('pve', '19', '11', 'druida heal', 'Heal');
INSERT INTO `promo_sets` VALUES ('pve', '20', '11', 'druida equilibrio', 'Equilibrio');
INSERT INTO `promo_sets` VALUES ('pve', '21', '11', 'druida fereal', 'Feral');
INSERT INTO `promo_sets` VALUES ('pvp', '1', '1', 'guerrero dps', 'Armas');
INSERT INTO `promo_sets` VALUES ('pvp', '2', '1', 'guerrero furia', 'Furia');
INSERT INTO `promo_sets` VALUES ('pvp', '3', '2', 'paladin dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pvp', '4', '2', 'paladin heal', 'Heal');
INSERT INTO `promo_sets` VALUES ('pvp', '5', '3', 'cazador dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pvp', '6', '4', 'picaro dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pvp', '7', '5', 'sacerdote dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pvp', '8', '5', 'sacerdote heal', 'Heal');
INSERT INTO `promo_sets` VALUES ('pvp', '9', '6', 'dk dps', '1 Arma de 2 manos');
INSERT INTO `promo_sets` VALUES ('pvp', '10', '6', 'dk escarcha', '2 Armas de 1 mano');
INSERT INTO `promo_sets` VALUES ('pvp', '11', '7', 'chaman elemental', 'Elemental');
INSERT INTO `promo_sets` VALUES ('pvp', '12', '7', 'chaman mejora', 'Mejora');
INSERT INTO `promo_sets` VALUES ('pvp', '13', '7', 'chaman heal', 'Heal');
INSERT INTO `promo_sets` VALUES ('pvp', '14', '8', 'mago dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pvp', '15', '9', 'brujo dps', 'DPS');
INSERT INTO `promo_sets` VALUES ('pvp', '16', '11', 'druida equilibrio', 'Equilibrio');
INSERT INTO `promo_sets` VALUES ('pvp', '17', '11', 'druida feral', 'Feral');
INSERT INTO `promo_sets` VALUES ('pvp', '18', '11', 'druida heal', 'Heal');

-- ----------------------------
-- Table structure for promo_spells
-- ----------------------------
DROP TABLE IF EXISTS `promo_spells`;
CREATE TABLE `promo_spells` (
  `class` int(11) NOT NULL,
  `spell` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promo_spells
-- ----------------------------
INSERT INTO `promo_spells` VALUES ('1', '266');
INSERT INTO `promo_spells` VALUES ('1', '674');
INSERT INTO `promo_spells` VALUES ('1', '750');
INSERT INTO `promo_spells` VALUES ('2', '0');
INSERT INTO `promo_spells` VALUES ('2', '196');
INSERT INTO `promo_spells` VALUES ('2', '750');
INSERT INTO `promo_spells` VALUES ('3', '0');
INSERT INTO `promo_spells` VALUES ('3', '200');
INSERT INTO `promo_spells` VALUES ('3', '264');
INSERT INTO `promo_spells` VALUES ('3', '8737');
INSERT INTO `promo_spells` VALUES ('4', '0');
INSERT INTO `promo_spells` VALUES ('5', '0');
INSERT INTO `promo_spells` VALUES ('6', '0');
INSERT INTO `promo_spells` VALUES ('6', '48778');
INSERT INTO `promo_spells` VALUES ('6', '50977');
INSERT INTO `promo_spells` VALUES ('6', '53428');
INSERT INTO `promo_spells` VALUES ('7', '196');
INSERT INTO `promo_spells` VALUES ('7', '8737');
INSERT INTO `promo_spells` VALUES ('7', '15590');
INSERT INTO `promo_spells` VALUES ('8', '0');
INSERT INTO `promo_spells` VALUES ('9', '0');
INSERT INTO `promo_spells` VALUES ('11', '0');
INSERT INTO `promo_spells` VALUES ('11', '200');
INSERT INTO `promo_spells` VALUES ('11', '5487');
INSERT INTO `promo_spells` VALUES ('11', '6807');
INSERT INTO `promo_spells` VALUES ('11', '6795');

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
  PRIMARY KEY (`clase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worldchat_clase
-- ----------------------------
INSERT INTO `worldchat_clase` VALUES ('0', 'FFFFFF');
INSERT INTO `worldchat_clase` VALUES ('1', 'C79C6E');
INSERT INTO `worldchat_clase` VALUES ('2', 'F58CBA');
INSERT INTO `worldchat_clase` VALUES ('3', 'ABD473');
INSERT INTO `worldchat_clase` VALUES ('4', 'FFF569');
INSERT INTO `worldchat_clase` VALUES ('5', 'FFFFFF');
INSERT INTO `worldchat_clase` VALUES ('6', 'C41F3B');
INSERT INTO `worldchat_clase` VALUES ('7', '0070DE');
INSERT INTO `worldchat_clase` VALUES ('8', '69CCF0');
INSERT INTO `worldchat_clase` VALUES ('9', '9482C9');
INSERT INTO `worldchat_clase` VALUES ('10', 'FFFFFF');
INSERT INTO `worldchat_clase` VALUES ('11', 'FF7d0A');

-- ----------------------------
-- Table structure for worldchat_rango
-- ----------------------------
DROP TABLE IF EXISTS `worldchat_rango`;
CREATE TABLE `worldchat_rango` (
  `rango` int(11) DEFAULT NULL,
  `rango_nombre` varchar(255) DEFAULT NULL,
  `rango_color` varchar(255) DEFAULT NULL,
  `chat_color` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of worldchat_rango
-- ----------------------------
INSERT INTO `worldchat_rango` VALUES ('0', 'Jugador', 'FFA81E', '7DFF00');
INSERT INTO `worldchat_rango` VALUES ('1', 'Moderador del chat', '44619D', 'FFA81E');
INSERT INTO `worldchat_rango` VALUES ('2', 'GM', '00f6ff', 'FFA81E');
INSERT INTO `worldchat_rango` VALUES ('3', 'GM+', '00f6ff', 'FFA81E');
INSERT INTO `worldchat_rango` VALUES ('4', 'GM++', '00f6ff', 'FFA81E');
INSERT INTO `worldchat_rango` VALUES ('5', 'GM+++', '00f6ff', 'FFA81E');
INSERT INTO `worldchat_rango` VALUES ('6', 'GM Lider', 'ff3232', '217fdd');
INSERT INTO `worldchat_rango` VALUES ('7', 'GM Lider', '00f2ff', '00f2ff');
INSERT INTO `worldchat_rango` VALUES ('8', 'Administrador', '6b0000', 'FF0015');
INSERT INTO `worldchat_rango` VALUES ('9', 'Dev/Administrador', '6b0000', 'FF0015');
INSERT INTO `worldchat_rango` VALUES ('10', 'Dev/Administrador', '6b0000', 'ff0000');
