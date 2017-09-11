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





insert into `rbac_permissions` (`id`, `name`) values
('1021', 'spectate'),
('1022', 'spectate player'),
('1023', 'spectate view'),
('1024', 'spectate reset'),
('1025', 'spectate leave'),
('1015', 'world chat'),
('1016', 'reload world chat'),
('1017', 'anti cheat'),
('1018', 'cheat'),
('1019', 'promo filtro'),
('1020', 'promo'),
('1026','Owner'),
('1028','WebChat');
INSERT INTO `rbac_linked_permissions` (`id`, `linkedId`) values
('195','1015'),
('192','1016'),
('192','1017'),
('192','1018'),
('195','1021'),
('195','1022'),
('195','1023'),
('195','1024'),
('195','1025'),
('192','1019'),
('192','1020'),
('1026','192');
('195','1028');