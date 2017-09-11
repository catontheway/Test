
insert into `command` (`name`, `permission`,`help`) values
('world','1015', 'world chat'),
('world reload','1016', 'reload world chat'),
('promo','1020', 'promo');


SET
@Entry = 190000,
@Name = "Arena Spectator",
@Subname = "Spectate Master",
@IconName = "Speak";

DELETE FROM `creature_template` WHERE `entry`=@Entry;
INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(@Entry, 29348, 0, @Name, @Subname, @IconName, 0, 80, 80, 2, 35, 3, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0, 0, 0, '', 0, 3, 1, 0, 0, 1, 0, 0, 'npc_arena_spectator');


INSERT INTO `creature_template` (`entry`, `modelid1`, `name`, `minlevel`, `maxlevel`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RegenHealth`, `flags_extra`, `ScriptName`) VALUES (100001, 26502, 'Duel Master', 83, 83, 35, 1, 1, 1.14286, 2, 1, 1, 1, 1, 2, 2048, 3, 1, 1, 1, 1, 1, 1, 1, 2, 'npc_blood_money');


SET
@Entry = 190011,
@Name = "Thaumaturge Vashreen";

INSERT INTO `creature_template` (`entry`, `modelid1`, `modelid2`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `scale`, `rank`, `dmgschool`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
(@Entry, 20988, 0, @Name, "Arcane Reforger", NULL, 0, 80, 80, 2, 35, 1, 1, 0, 0, 2000, 0, 1, 0, 7, 138936390, 0, 0, 0, '', 0, 3, 1, 0, 0, 1, 0, 0, 'REFORGER_NPC');


DROP TABLE IF EXISTS `guildhouses`;

CREATE TABLE `guildhouses` (
  `id` int(8) unsigned NOT NULL auto_increment,
  `guildId` bigint(20) NOT NULL default '0',
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `map` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records
-- ----------------------------
INSERT INTO `guildhouses` VALUES
('1', '0', '16222', '16266', '14.2', '1', 'GM Island'),
('2', '0', '-10711', '2483', '8', '1', 'Tauren village at Veiled Sea (Silithus)'),
('3', '0', '-8323', '-343', '146', '0', 'Fishing outside an Northshire Abbey (Elwynn Forest'),
('4', '0', '7368', '-1560', '163', '1', 'Troll Village in mountains (Darkshore)'),
('5', '0', '-4151', '-1400', '198', '0', 'Dwarven village outside Ironforge (Wetlands)'),
('6', '0', '-1840', '-4233', '2.14', '0', 'Dwarven village (Arathi Highlands, Forbidding Sea)'),
('8', '0', '-723', '-1076', '179', '1', 'Tauren camp (Mulgore, Red Rock)'),
('9', '0', '-206', '1666', '80', '0', 'Shadowfang Keep an outside instance (Silverpine Forest)'),
('10', '0', '-6374', '1262', '7', '0', 'Harbor house outside Stormwind (Elwynn Forest)'),
('11', '0', '-8640', '580', '96', '0', 'Empty jail between canals (Stormwind)'),
('12', '0', '-4844', '-1066', '502', '0', 'Old Ironforge'),
('13', '0', '-4863', '-1658', '503.5', '0', 'Ironforge Airport'),
('14', '0', '1146', '-165', '313', '37', 'Azshara Crater instance (Alliance entrance)'),
('15', '0', '-123', '858', '298', '37', 'Azshara Crater instance (Horde entrance)'),
('16', '0', '4303', '-2760', '16.8', '0', 'Quel\'Thalas Tower'),
('17', '0', '-6161', '-790', '423', '0', 'Crashed gnome airplane (between Dun Morogh and Searing Gorge)'),
('18', '0', '-11790', '-1640', '54.7', '0', 'Zul\'Gurub an outside instance (Stranglethorn Vale)'),
('19', '0', '-11805', '-4754', '6', '1', 'Goblin village (Tanaris, South Seas)'),
('20', '0', '-9296', '670', '132', '0', 'Villains camp outside an Stormwind (Elwynn Forest)'),
('21', '0', '3414', '-3380', '142.2', '0', 'Stratholm an outside instance'),
('22', '0', '4654', '-3772', '944', '1', 'Kalimdor Hyjal (Aka World Tree)'),
('23', '0', '2176', '-4766', '55', '1', 'The Ring of Valor (Aka. Orgrimmar Arena)'),
('24', '0', '1951.512085', '1530.475586', '247.288147', '1', 'Stonetalon Logging Camp'),
('25', '0', '2813.660645', '2248.552979', '215.524643', '1', 'Stonetalon Ruins'),
('28', '0', '9725.27', '-21.43', '20.03', '1', 'Teldrassil Furbold camp'),
('29', '0', '-3855', '-3479', '579', '0', 'Wetlands mountain camp'),
('30', '0', '-5362', '-2540', '485', '0', 'Ortell\'s Hideout'),
('31', '0', '-12865', '-1396', '115', '0', 'Stranglethorn Secret Cave'),
('32', '0', '-11073', '-1956', '39', '0', 'Karazhan Smiley'),
('33', '0', '-11084', '-1801', '53', '0', 'Well of the Forgotten (Aka. Karazhan Crypt or Lower Karazhan)'),
('34', '0', '1683.235474', '286.458801', '-45.451775', '0', 'Undercity Top Tier'),
('35', '0', '-8521.3', '599.5', '101.399338', '0', 'Stormwind Cut-Throat Alley'),
('36', '0', '-5933', '452', '509', '0', 'Forgotten gnome camp'),
('37', '0', '-920.231323', '7096.489258', '170.35289', '530', 'Outland Nagrand : Newton\'s Remains'),
('38', '0', '-2140.501953', '9142.6875', '137.041855', '530', 'Outland Nagrand : Tomb'),
('39', '0', '-483.401794', '7461.944824', '186.120987', '530', 'Outland Nagrand: Challe\'s Home for Little Tykes'),
('40', '0', '2387.753906', '3191.757324', '152.669388', '530', 'Outland Netherstorm: Nova\'s Shrine');

-- *************************
-- * NPC Guildhouse Keeper *
-- *************************

DELETE FROM creature_template WHERE `entry`=13;

INSERT INTO `creature_template` (`entry`, `difficulty_entry_1`, `difficulty_entry_2`, `difficulty_entry_3`, `KillCredit1`, `KillCredit2`, `modelid1`, `modelid2`, `modelid3`, `modelid4`, `name`, `subname`, `IconName`, `gossip_menu_id`, `minlevel`, `maxlevel`, `exp`, `faction`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `dmgschool`, `BaseAttackTime`, `RangeAttackTime`, `BaseVariance`, `RangeVariance`, `unit_class`, `unit_flags`, `unit_flags2`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `spell1`, `spell2`, `spell3`, `spell4`, `spell5`, `spell6`, `spell7`, `spell8`, `PetSpellDataId`, `VehicleId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `HoverHeight`, `HealthModifier`, `ManaModifier`, `ArmorModifier`, `DamageModifier`, `ExperienceModifier`, `RacialLeader`, `movementId`, `RegenHealth`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`, `VerifiedBuild`) values
('13','0','0','0','0','0','26789','0','0','0','Beltez','Guildhouse Keeper',NULL,'0','80','80','0','35','1','1','1.14286','0.75','0','0','1400','1900','1','1','1','0','0','8','0','0','0','0','0','7','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','','1','3','1','1','1','1','1','1','0','0','1','0','0','guildmaster','12340');

-- Trial of the Champion
-- by Appled
-- Thanks to Aokromes for providing sniffs

--
-- General
--

-- Disabling mmap for Trial of the Champion instance
-- creatures are spawned according to sniffs behind an invisible wall and they don't know how to go through it
-- Edit: Aokromes has pushed this already but disabled whole instance in the same commit
DELETE FROM `disables` WHERE `entry`=650 AND `sourceType`=2;
-- DELETE FROM `disables` WHERE `sourceType`='7' AND `entry`='650';
-- INSERT INTO `disables` (`sourceType`,`entry`) VALUES ('7','650');

-- Spellscript for vehicles' Trample aura
DELETE FROM `spell_script_names` WHERE `spell_id`=67868 AND `ScriptName`='spell_toc5_trample_aura';
INSERT INTO `spell_script_names` VALUES (67868,'spell_toc5_trample_aura');

-- Spellscript for Hunter Grand Champion's Lightning Arrows
DELETE FROM `spell_script_names` WHERE `spell_id`=66083 AND `ScriptName`='spell_toc5_lightning_arrows';
INSERT INTO `spell_script_names` VALUES (66083,'spell_toc5_lightning_arrows');

-- Spellscript for Paletress' Reflective Shield
DELETE FROM `spell_script_names` WHERE `spell_id`=66515 AND `ScriptName`='spell_paletress_reflective_shield';
INSERT INTO `spell_script_names` VALUES (66515,'spell_paletress_reflective_shield');

-- Spellscript for Eadric' Hammer of the Righteous
DELETE FROM `spell_script_names` WHERE `spell_id`=66867 AND `ScriptName`='spell_eadric_hammer_of_righteous';
INSERT INTO `spell_script_names` VALUES (66867,'spell_eadric_hammer_of_righteous');

-- Spellscript for Eadric' Hammer of the Righteous - casted by player
DELETE FROM `spell_script_names` WHERE `spell_id`=66905 AND `ScriptName`='spell_eadric_hammer_of_righteous_faceroller';
INSERT INTO `spell_script_names` VALUES (66905,'spell_eadric_hammer_of_righteous_faceroller');

-- Spellscript for The Black Knight's Death's Push - casted on announcer
DELETE FROM `spell_script_names` WHERE `spell_id`=66797 AND `ScriptName`='spell_black_knight_deaths_push';
INSERT INTO `spell_script_names` VALUES (66797,'spell_black_knight_deaths_push');

-- Spellscript for The Black Knight's Obliterate
DELETE FROM `spell_script_names` WHERE `spell_id` IN (67725,67883) AND `ScriptName`='spell_black_knight_obliterate';
INSERT INTO `spell_script_names` VALUES
(67725,'spell_black_knight_obliterate'),
(67883,'spell_black_knight_obliterate');

-- Spellscript for The Black Knight's Army of the Dead
DELETE FROM `spell_script_names` WHERE `spell_id` IN (67761,67874) AND `ScriptName`='spell_black_knight_army_of_the_dead';
INSERT INTO `spell_script_names` VALUES
(67761,'spell_black_knight_army_of_the_dead'),
(67874,'spell_black_knight_army_of_the_dead');

-- Spellscript for The Black Knight's Ghoul Explode
DELETE FROM `spell_script_names` WHERE `spell_id`=67751 AND `ScriptName`='spell_black_knight_ghoul_explode';
INSERT INTO `spell_script_names` VALUES (67751,'spell_black_knight_ghoul_explode');

-- Eadric and Paletress should not drop item 47197 in heroic mode
-- it drops only from Eadric in normal mode
-- Also item 47947 was missing from Eadric and Paletress in heroic mode
DELETE FROM `reference_loot_template` WHERE `Entry`=12025 AND `Item` IN (47197,47497);
INSERT INTO `reference_loot_template` VALUES (12025,47497,0,0,0,1,1,1,1,'');

-- The Black Knight should not drop item 47560 in normal mode
-- it drops only in heroic mode
-- Also item 47229 was missing from The Black Knight in normal mode
DELETE FROM `reference_loot_template` WHERE `Entry`=34170 AND `Item` IN (47229,47560);
INSERT INTO `reference_loot_template` VALUES (34170,47229,0,0,0,1,1,1,1,'');

--
-- Vehicles
--

-- Variables
SET @ARGENT_WARHORSE_GC := 35644; -- used by Grand Champions in looking for mount phase, cannot be used by players
SET @ARGENT_WARHORSE := 36557;
SET @ARGENT_BATTLEWORG := 36558;
SET @ARGENT_BATTLEWORG_GC := 36559; -- used by Grand Champions in looking for mount phase, cannot be used by players

-- Scriptname for cosmetic vehicles
UPDATE `creature_template` SET `ScriptName`='generic_vehicleAI_toc5' WHERE `entry` IN (@ARGENT_BATTLEWORG_GC,@ARGENT_WARHORSE_GC);

UPDATE `creature_template` SET `faction`=14, `npcflag`=16777216, `VehicleId`=529, `speed_walk`=2.5/2.5, `speed_run`=11.0/7.0, `unit_flags`=256, `unit_flags2`=0 WHERE `entry` IN (@ARGENT_WARHORSE_GC,@ARGENT_BATTLEWORG_GC);
UPDATE `creature_template` SET `faction`=35, `npcflag`=16777216, `VehicleId`=486, `speed_walk`=2.5/2.5, `speed_run`=11.0/7.0, `unit_flags`=0, `unit_flags2`=0 WHERE `entry` IN (@ARGENT_WARHORSE,@ARGENT_BATTLEWORG);

UPDATE `creature_template` SET `Spell1`=0, `Spell2`=0, `Spell3`=0, `Spell4`=0 WHERE `entry` IN (@ARGENT_WARHORSE_GC, @ARGENT_BATTLEWORG_GC);
UPDATE `creature_template` SET `Spell1`=68505, `Spell2`=62575, `Spell3`=68282, `Spell4`=62552 WHERE `entry` IN (@ARGENT_WARHORSE, @ARGENT_BATTLEWORG);

DELETE FROM `npc_spellclick_spells` WHERE `npc_entry` IN (@ARGENT_WARHORSE_GC,@ARGENT_WARHORSE,@ARGENT_BATTLEWORG,@ARGENT_BATTLEWORG_GC);
INSERT INTO `npc_spellclick_spells` (`npc_entry`, `spell_id`, `cast_flags`, `user_type`) VALUES
(@ARGENT_WARHORSE,   67830, 1, 0),
(@ARGENT_BATTLEWORG, 67830, 1, 0);

DELETE FROM `creature_template_addon` WHERE `entry` IN (@ARGENT_WARHORSE_GC,@ARGENT_WARHORSE,@ARGENT_BATTLEWORG,@ARGENT_BATTLEWORG_GC);
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `bytes2`, `emote`, `auras`) VALUES
(@ARGENT_WARHORSE_GC,   0, 0,   1, 0, '67870'),
(@ARGENT_WARHORSE,      0, 0, 257, 0, '67865'),
(@ARGENT_BATTLEWORG,    0, 0, 257, 0, '67865'),
(@ARGENT_BATTLEWORG_GC, 0, 0,   1, 0, '67870');

-- You should not be able to mount a vehicle if you don't have Argent Lance equipped
DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=16 AND `SourceGroup`=0 AND `SourceEntry` IN (@ARGENT_BATTLEWORG,@ARGENT_WARHORSE);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`,`Comment`) VALUES
(16,0,@ARGENT_BATTLEWORG,0,0,3,0,46106,0,0,'Argent Lance must be equipped in order to mount a vehicle'),
(16,0,@ARGENT_WARHORSE,0,0,3,0,46106,0,0,'Argent Lance must be equipped in order to mount a vehicle');

--
-- Heralds
--

-- Variables
SET @HERALD_H := 35004; -- Jaeren Sunsworn
SET @HERALD_A := 35005; -- Arelas Brightstar
SET @GOSSIP_MENU := 10614; -- same gossip menu used by both heralds

-- Arelas Brightstar had no gossip menu set in database
UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP_MENU WHERE `entry`=@HERALD_A;

--
-- Text updates
--

-- Roleplaying event is missing creature_text data
DELETE FROM `creature_text` WHERE `entry` IN (@HERALD_H,@HERALD_A) AND `groupid` BETWEEN 9 AND 13;
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`sound`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(@HERALD_H,9,0,'$n has risen to the ranks of champion in our tournament.  We are proud to present $ghim:her; to you today.',14,100,8574,35304,2,'Jaeren Sunsworn - SAY_JAEREN_INTRODUCE_PLAYER_0'),
(@HERALD_H,10,0,'Champions on the tournament grounds speak highly of this $c.  Today we present, $n.',14,100,8574,35305,2,'Jaeren Sunsworn - SAY_JAEREN_INTRODUCE_PLAYER_1'),
(@HERALD_H,11,0,'One would be hard pressed to find a more steadfast champion than this $c.  Today we present, $n. ',14,100,8574,35306,2,'Jaeren Sunsworn - SAY_JAEREN_INTRODUCE_PLAYER_2'),
(@HERALD_H,12,0,'We offer a mighty champion, a capable $c, an honorable $r.  We present, $n.',14,100,8574,35307,2,'Jaeren Sunsworn - SAY_JAEREN_INTRODUCE_PLAYER_3'),
(@HERALD_H,13,0,'Many champions have fallen to the skills displayed by $n.  We are proud to present this formidable $c.',14,100,8574,35308,2,'Jaeren Sunsworn - SAY_JAEREN_INTRODUCE_PLAYER_4'),
(@HERALD_A,9,0,'$n has risen to the ranks of champion in our tournament.  We are proud to present $ghim:her; to you today.',14,100,8574,35304,2,'Arelas Brightstar - SAY_ARELAS_INTRODUCE_PLAYER_0'),
(@HERALD_A,10,0,'Champions on the tournament grounds speak highly of this $c.  Today we present, $n.',14,100,8574,35305,2,'Arelas Brightstar - SAY_ARELAS_INTRODUCE_PLAYER_1'),
(@HERALD_A,11,0,'One would be hard pressed to find a more steadfast champion than this $c.  Today we present, $n. ',14,100,8574,35306,2,'Arelas Brightstar - SAY_ARELAS_INTRODUCE_PLAYER_2'),
(@HERALD_A,12,0,'We offer a mighty champion, a capable $c, an honorable $r.  We present, $n.',14,100,8574,35307,2,'Arelas Brightstar - SAY_ARELAS_INTRODUCE_PLAYER_3'),
(@HERALD_A,13,0,'Many champions have fallen to the skills displayed by $n.  We are proud to present this formidable $c.',14,100,8574,35308,2,'Arelas Brightstar - SAY_ARELAS_INTRODUCE_PLAYER_4');

-- Jaina Proudmoore is missing her texts
DELETE FROM `creature_text` WHERE `entry`=34992 AND `groupid` IN (0,1);
INSERT INTO `creature_text` (`entry`,`groupid`,`id`,`text`,`type`,`probability`,`BroadcastTextId`,`TextRange`,`comment`) VALUES
(34992,0,0,'Of course they will.',12,100,35323,2,'Lady Jaina Proudmoore - SAY_JAINA_INTRO_1'),
(34992,1,0,'They''re worthy fighters, you''ll see.',12,100,35329,2,'Lady Jaina Proudmoore - SAY_JAINA_INTRO_2');

-- Two of the texts in instance were 'say' instead of 'yell'
UPDATE `creature_text` SET `type`=14 WHERE `entry`=@HERALD_A AND `groupid`=0;
UPDATE `creature_text` SET `type`=14 WHERE `entry`=@HERALD_H AND `groupid`=0;

-- Most of the texts in instance should be zonewide
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry`=34990 AND `groupid` BETWEEN 50 AND 53;
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry`=34995 AND `groupid` BETWEEN 50 AND 52;
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry`=34994;
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry` BETWEEN 34900 AND 34910 AND `groupid`=0 AND `id`=0;
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry`=34996 AND `groupid` BETWEEN 50 AND 58 AND `id`=0;
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry` IN (@HERALD_A,@HERALD_H) AND `groupid` BETWEEN 0 AND 8 AND `id`=0;
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry` IN (34657,34701,34702,34703,34705,34883,34887,35569,35570,35571,35572,35617) AND `groupid`=0 AND `id`=0;
UPDATE `creature_text` SET `TextRange`=2 WHERE `entry` IN (34928,35119,35451);
UPDATE `creature_text` SET `TextRange`=2 WHERE `BroadcastTextId`=35491;

--
-- Lesser Champions
--

-- Variables
SET @ORC_CHAMP := 35314;
SET @TROLL_CHAMP := 35323;
SET @TAUREN_CHAMP := 35325;
SET @BELF_CHAMP := 35326;
SET @UNDEAD_CHAMP := 35327;
SET @HUMAN_CHAMP := 35328;
SET @DWARF_CHAMP := 35329;
SET @DRAENEI_CHAMP := 35330;
SET @GNOME_CHAMP := 35331;
SET @NELF_CHAMP := 35332;

-- Each lesser champion had passiveAI set and had no scriptname assigned in database
UPDATE `creature_template` SET `AIName`='',`ScriptName`='generic_vehicleAI_toc5' WHERE `entry` IN (@ORC_CHAMP,@TROLL_CHAMP,@TAUREN_CHAMP,@BELF_CHAMP,@UNDEAD_CHAMP,@HUMAN_CHAMP,@DWARF_CHAMP,@DRAENEI_CHAMP,@GNOME_CHAMP,@NELF_CHAMP);

-- Lesser Champions should award reputation on kill
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (@ORC_CHAMP,@TROLL_CHAMP,@TAUREN_CHAMP,@BELF_CHAMP,@UNDEAD_CHAMP,@HUMAN_CHAMP,@DWARF_CHAMP,@DRAENEI_CHAMP,@GNOME_CHAMP,@NELF_CHAMP);
INSERT INTO `creature_onkill_reputation` VALUES
(@ORC_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@TROLL_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@TAUREN_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@BELF_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@UNDEAD_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@HUMAN_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@DWARF_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@DRAENEI_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@GNOME_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@NELF_CHAMP,1037,1052,7,0,5,7,0,5,1);

--
-- Grand Champions
--

-- Variables
-- Normal mode
SET @MOKRA := 35572;
SET @ERESSEA := 35569;
SET @RUNOK := 35571;
SET @ZULTORE := 35570;
SET @VISCERI := 35617;
SET @JACOB := 34705;
SET @AMBROSE := 34702;
SET @COLOSOS := 34701;
SET @JAELYNE := 34657;
SET @LANA := 34703;
-- Heroic mode
SET @MOKRA_H := 36089;
SET @ERESSEA_H := 36085;
SET @RUNOK_H := 36090;
SET @ZULTORE_H := 36091;
SET @VISCERI_H := 36084;
SET @JACOB_H := 36088;
SET @AMBROSE_H := 36082;
SET @COLOSOS_H := 36083;
SET @JAELYNE_H := 36086;
SET @LANA_H := 36087;

-- None of the grand champions had correct unit flags set in database
UPDATE `creature_template` SET `unit_flags`=33024 WHERE `entry` IN (@MOKRA,@ERESSEA,@RUNOK,@ZULTORE,@VISCERI,@JACOB,@AMBROSE,@COLOSOS,@JAELYNE,@LANA,@MOKRA_H,@ERESSEA_H,@RUNOK_H,@ZULTORE_H,@VISCERI_H,@JACOB_H,@AMBROSE_H,@COLOSOS_H,@JAELYNE_H,@LANA_H);

-- Rogue Champion's Deadly Poison should have 5 second internal cooldown
DELETE FROM `spell_proc_event` WHERE `entry`=67711;
INSERT INTO `spell_proc_event` (`entry`,`Cooldown`) VALUES (67711,5);
-- Rogue Champion's Fan of Knives should also trigger Deadly Poison on each target
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=67706;
INSERT INTO `spell_linked_spell` VALUES (67706,67710,1,'Rogue Champion - Trigger Deadly Poison on Fan of Knives');

-- Achievement criteria data
-- for achievement IDs 3778, 4018, 4019, 4048, 4049, 4050, 4051, 4052, 4053, 4054, 4055, 4296, 4297, 4298, 

-- Variables
SET @CRITERIA_JACOB := 11420;
SET @CRITERIA_LANA := 12298;
SET @CRITERIA_COLOSOS := 12299;
SET @CRITERIA_AMBROSE := 12300;
SET @CRITERIA_JAELYNE := 12301;
SET @CRITERIA_MOKRA := 12302;
SET @CRITERIA_VISCERI := 12303;
SET @CRITERIA_RUNOK := 12304;
SET @CRITERIA_ERESSEA := 12305;
SET @CRITERIA_ZULTORE := 12306;
SET @CRITERIA_JACOB_H := 12310;
SET @CRITERIA_LANA_H := 12311;
SET @CRITERIA_COLOSOS_H := 12312;
SET @CRITERIA_AMBROSE_H := 12313;
SET @CRITERIA_JAELYNE_H := 12314;
SET @CRITERIA_MOKRA_H := 12318;
SET @CRITERIA_VISCERI_H := 12319;
SET @CRITERIA_RUNOK_H := 12320;
SET @CRITERIA_ERESSEA_H := 12321;
SET @CRITERIA_ZULTORE_H := 12322;
-- Statistics achievements
SET @CRITERIA_WARRIOR := 12538;
SET @CRITERIA_HUNTER := 12540;
SET @CRITERIA_MAGE := 12542;
SET @CRITERIA_ROGUE := 12544;
SET @CRITERIA_SHAMAN := 12546;
SET @CRITERIA_WARRIOR_H := 12539;
SET @CRITERIA_HUNTER_H := 12541;
SET @CRITERIA_MAGE_H := 12543;
SET @CRITERIA_ROGUE_H := 12545;
SET @CRITERIA_SHAMAN_H := 12547;

-- These criterias are missing creature checks
DELETE FROM `achievement_criteria_data` WHERE `type`=1 AND `criteria_id` IN (@CRITERIA_JACOB,@CRITERIA_LANA,@CRITERIA_COLOSOS,@CRITERIA_AMBROSE,@CRITERIA_JAELYNE,@CRITERIA_MOKRA,@CRITERIA_VISCERI,@CRITERIA_RUNOK,@CRITERIA_ERESSEA,@CRITERIA_ZULTORE,@CRITERIA_JACOB_H,@CRITERIA_LANA_H,@CRITERIA_COLOSOS_H,@CRITERIA_AMBROSE_H,@CRITERIA_JAELYNE_H,@CRITERIA_MOKRA_H,@CRITERIA_VISCERI_H,@CRITERIA_RUNOK_H,@CRITERIA_ERESSEA_H,@CRITERIA_ZULTORE_H);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`) VALUES
(@CRITERIA_JACOB,1,@JACOB),
(@CRITERIA_LANA,1,@LANA),
(@CRITERIA_COLOSOS,1,@COLOSOS),
(@CRITERIA_AMBROSE,1,@AMBROSE),
(@CRITERIA_JAELYNE,1,@JAELYNE),
(@CRITERIA_MOKRA,1,@MOKRA),
(@CRITERIA_VISCERI,1,@VISCERI),
(@CRITERIA_RUNOK,1,@RUNOK),
(@CRITERIA_ERESSEA,1,@ERESSEA),
(@CRITERIA_ZULTORE,1,@ZULTORE),
(@CRITERIA_JACOB_H,1,@JACOB),
(@CRITERIA_LANA_H,1,@LANA),
(@CRITERIA_COLOSOS_H,1,@COLOSOS),
(@CRITERIA_AMBROSE_H,1,@AMBROSE),
(@CRITERIA_JAELYNE_H,1,@JAELYNE),
(@CRITERIA_MOKRA_H,1,@MOKRA),
(@CRITERIA_VISCERI_H,1,@VISCERI),
(@CRITERIA_RUNOK_H,1,@RUNOK),
(@CRITERIA_ERESSEA_H,1,@ERESSEA),
(@CRITERIA_ZULTORE_H,1,@ZULTORE);

-- Statistics achievements are also missing creature checks
-- but as criterias are same on both horde and alliance,
-- and we can only check for one creature entry,
-- we must use core script to check for two entries
-- Also we remove heroic checks from database, they are handled in the script
DELETE FROM `achievement_criteria_data` WHERE `type`=11 AND `criteria_id` IN (@CRITERIA_WARRIOR,@CRITERIA_HUNTER,@CRITERIA_MAGE,@CRITERIA_ROGUE,@CRITERIA_SHAMAN,@CRITERIA_WARRIOR_H,@CRITERIA_HUNTER_H,@CRITERIA_MAGE_H,@CRITERIA_ROGUE_H,@CRITERIA_SHAMAN_H);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`ScriptName`) VALUES
(@CRITERIA_WARRIOR,11,'achievement_victories_over_war_champion'),
(@CRITERIA_HUNTER,11,'achievement_victories_over_hun_champion'),
(@CRITERIA_MAGE,11,'achievement_victories_over_mag_champion'),
(@CRITERIA_ROGUE,11,'achievement_victories_over_rog_champion'),
(@CRITERIA_SHAMAN,11,'achievement_victories_over_sha_champion'),
(@CRITERIA_WARRIOR_H,11,'achievement_victories_over_war_champion_h'),
(@CRITERIA_HUNTER_H,11,'achievement_victories_over_hun_champion_h'),
(@CRITERIA_MAGE_H,11,'achievement_victories_over_mag_champion_h'),
(@CRITERIA_ROGUE_H,11,'achievement_victories_over_rog_champion_h'),
(@CRITERIA_SHAMAN_H,11,'achievement_victories_over_sha_champion_h');

--
-- Argent Champion
--

-- Thrash mobs are missing reputation data and money drop

-- Variables
SET @ARGENT_MONK := 35305;
SET @ARGENT_MONK_H := 35306;
SET @ARGENT_PRIESTESS := 35307;
SET @ARGENT_PRIESTESS_H := 35308;
SET @ARGENT_LIGHTWIELDER := 35309;
SET @ARGENT_LIGHTWIELDER_H := 35310;

UPDATE `creature_template` SET `mingold`=3821,`maxgold`=9521 WHERE `entry` IN (@ARGENT_MONK,@ARGENT_PRIESTESS,@ARGENT_LIGHTWIELDER);
UPDATE `creature_template` SET `mingold`=11529,`maxgold`=17291 WHERE `entry` IN (@ARGENT_MONK_H,@ARGENT_PRIESTESS_H,@ARGENT_LIGHTWIELDER_H);

DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (@ARGENT_MONK,@ARGENT_PRIESTESS,@ARGENT_LIGHTWIELDER,@ARGENT_MONK_H,@ARGENT_PRIESTESS_H,@ARGENT_LIGHTWIELDER_H);
INSERT INTO `creature_onkill_reputation` VALUES
(@ARGENT_MONK,1037,1052,7,0,5,7,0,5,1),
(@ARGENT_PRIESTESS,1037,1052,7,0,5,7,0,5,1),
(@ARGENT_LIGHTWIELDER,1037,1052,7,0,5,7,0,5,1),
(@ARGENT_MONK_H,1037,1052,7,0,10,7,0,10,1),
(@ARGENT_PRIESTESS_H,1037,1052,7,0,10,7,0,10,1),
(@ARGENT_LIGHTWIELDER_H,1037,1052,7,0,10,7,0,10,1);

-- Scriptname for Argent Priestess' Fountain of Light
UPDATE `creature_template` SET `ScriptName`='npc_fountain_of_light' WHERE `entry`=35311;

-- Achievement criteria data
-- for achievement id 3802

-- Variables
SET @CRITERIA_HOGGER := 11863;
SET @CRITERIA_VANCLEEF := 11904;
SET @CRITERIA_MUTANUS := 11905;
SET @CRITERIA_HEROD := 11906;
SET @CRITERIA_LUCIFRON := 11907;
SET @CRITERIA_THUNDERAAN := 11908;
SET @CRITERIA_CHROMAGGUS := 11909;
SET @CRITERIA_HAKKAR := 11910;
SET @CRITERIA_VEKNILASH := 11911;
SET @CRITERIA_KALITHRESH := 11912;
SET @CRITERIA_MALCHEZAAR := 11913;
SET @CRITERIA_GRUUL := 11914;
SET @CRITERIA_VASHJ := 11915;
SET @CRITERIA_ARCHIMONDE := 11916;
SET @CRITERIA_ILLIDAN := 11917;
SET @CRITERIA_DELRISSA := 11918;
SET @CRITERIA_MURU := 11919;
SET @CRITERIA_INGVAR := 11920;
SET @CRITERIA_CYANIGOSA := 11921;
SET @CRITERIA_ECK := 11922;
SET @CRITERIA_ONYXIA := 11923;
SET @CRITERIA_HEIGAN := 11924;
SET @CRITERIA_IGNIS := 11925;
SET @CRITERIA_VEZAX := 11926;
SET @CRITERIA_ALGALON := 11927;

DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (@CRITERIA_HOGGER,@CRITERIA_VANCLEEF,@CRITERIA_MUTANUS,@CRITERIA_HEROD,@CRITERIA_LUCIFRON,@CRITERIA_THUNDERAAN,@CRITERIA_CHROMAGGUS,@CRITERIA_HAKKAR,@CRITERIA_VEKNILASH,@CRITERIA_KALITHRESH,@CRITERIA_MALCHEZAAR,@CRITERIA_GRUUL,@CRITERIA_VASHJ,@CRITERIA_ARCHIMONDE,@CRITERIA_ILLIDAN,@CRITERIA_DELRISSA,@CRITERIA_MURU,@CRITERIA_INGVAR,@CRITERIA_CYANIGOSA,@CRITERIA_ECK,@CRITERIA_ONYXIA,@CRITERIA_HEIGAN,@CRITERIA_IGNIS,@CRITERIA_VEZAX,@CRITERIA_ALGALON);
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`) VALUES
(@CRITERIA_HOGGER,1,34942),
(@CRITERIA_VANCLEEF,1,35028),
(@CRITERIA_MUTANUS,1,35029),
(@CRITERIA_HEROD,1,35030),
(@CRITERIA_LUCIFRON,1,35031),
(@CRITERIA_THUNDERAAN,1,35032),
(@CRITERIA_CHROMAGGUS,1,35033),
(@CRITERIA_HAKKAR,1,35034),
(@CRITERIA_VEKNILASH,1,35036),
(@CRITERIA_KALITHRESH,1,35037),
(@CRITERIA_MALCHEZAAR,1,35038),
(@CRITERIA_GRUUL,1,35039),
(@CRITERIA_VASHJ,1,35040),
(@CRITERIA_ARCHIMONDE,1,35041),
(@CRITERIA_ILLIDAN,1,35042),
(@CRITERIA_DELRISSA,1,35043),
(@CRITERIA_MURU,1,35044),
(@CRITERIA_INGVAR,1,35045),
(@CRITERIA_CYANIGOSA,1,35046),
(@CRITERIA_ECK,1,35047),
(@CRITERIA_ONYXIA,1,35048),
(@CRITERIA_HEIGAN,1,35049),
(@CRITERIA_IGNIS,1,35050),
(@CRITERIA_VEZAX,1,35051),
(@CRITERIA_ALGALON,1,35052);

-- Correcting Paletress' speed values on heroic mode
UPDATE `creature_template` SET `speed_walk`=2,`speed_run`=1.42857 WHERE `entry`=35517;

-- Correcting Paletress' mechanic immunities
-- she is interruptable
UPDATE `creature_template` SET `mechanic_immune_mask`=617299839 WHERE `entry` IN (34928,35517);

-- Paletress' Memory adds are missing mechanic immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=650854271 WHERE `entry`=34942 OR `entry` BETWEEN 35028 AND 35052 OR `entry` BETWEEN 35519 AND 35525 OR `entry` BETWEEN 35527 AND 35544;

-- Correcting Eadric' mechanic immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=650854271 WHERE `entry` IN (35119,35518);

-- Eadric' Vengeance spell should have internal cooldown and procChance
-- Proc spell should properly be removed on successful melee crit
DELETE FROM `spell_proc_event` WHERE `entry` IN (66865,66889);
INSERT INTO `spell_proc_event` (`entry`,`procFlags`,`procEx`,`CustomChance`,`Cooldown`) VALUES 
(66865,4,0,20,10),
(66889,4,2,0,0);
-- Also the proc spell of Vengeance should not remove original aura
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66889 AND `spell_effect`=-66865;

-- Player casted Hammer of the Righteous to Eadric should remove the dummy aura from player on cast
DELETE FROM `spell_linked_spell` WHERE `spell_trigger`=66905 AND `spell_effect`=-66904;
INSERT INTO `spell_linked_spell` VALUES (66905,-66904,0,'Eadric - Remove dummy aura from player on cast');

--
-- The Black Knight
--

-- Variables
SET @KNIGHT := 35451;
SET @KNIGHT_H := 35490;
SET @KNIGHT_VEHICLE := 35491;
SET @RISEN_CHAMP := 35590;
SET @RISEN_CHAMP_H := 35717;

-- The Black Knight's vehicle must have flight inhabit type
UPDATE `creature_template` SET `InhabitType`=7 WHERE `entry`=@KNIGHT_VEHICLE;

-- Risen Champion is missing scriptname
UPDATE `creature_template` SET `ScriptName`='npc_risen_ghoul' WHERE `entry`=@RISEN_CHAMP;

-- Risen Champions (not Risen Herald) and The Black Knight should award reputation on kill
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` IN (@RISEN_CHAMP,@RISEN_CHAMP_H,@KNIGHT,@KNIGHT_H);
INSERT INTO `creature_onkill_reputation` VALUES
(@RISEN_CHAMP,1037,1052,7,0,5,7,0,5,1),
(@RISEN_CHAMP_H,1037,1052,7,0,10,7,0,10,1),
(@KNIGHT,1037,1052,7,0,195,7,0,195,1),
(@KNIGHT_H,1037,1052,7,0,390,7,0,390,1);

-- Correcting The Black Knight's mechanic immunities
UPDATE `creature_template` SET `mechanic_immune_mask`=650854271 WHERE `entry` IN (@KNIGHT,@KNIGHT_H);

-- The Black Knight should have money drop
UPDATE `creature_template` SET `mingold`=4921,`maxgold`=10294 WHERE `entry`=@KNIGHT;
UPDATE `creature_template` SET `mingold`=14691,`maxgold`=21952 WHERE `entry`=@KNIGHT_H;

-- Achievement criteria script for achievement id 3804
DELETE FROM `achievement_criteria_data` WHERE `type` IN (11, 18) AND `criteria_id`=11789;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`ScriptName`) VALUES
(11789,11,'achievement_ive_had_worse');


DELETE FROM `conditions` WHERE `SourceTypeOrReferenceId`=13 AND `SourceEntry` IN (66905, 66798, 67751);
INSERT INTO `conditions` (`SourceTypeOrReferenceId`, `SourceGroup`, `SourceEntry`, `SourceId`, `ElseGroup`, `ConditionTypeOrReference`, `ConditionTarget`, `ConditionValue1`, `ConditionValue2`, `ConditionValue3`, `NegativeCondition`, `ErrorType`, `ErrorTextId`, `ScriptName`, `Comment`) VALUES 
(13, 7, 66905, 0, 0, 31, 0, 3, 35119, 0, 0, 0, 0, '', 'Hammer of the Righteous (Eadric the Pure)'),
(13, 1, 66798, 0, 0, 31, 0, 3, 35004, 0, 0, 0, 0, '', 'Death''s Respite (The Black Knight)'),
(13, 1, 66798, 0, 1, 31, 0, 3, 35005, 0, 0, 0, 0, '', 'Death''s Respite (The Black Knight)'),
(13, 7, 67751, 0, 0, 31, 0, 3, 35590, 0, 0, 0, 0, '', 'Ghoul Explode (The Black Knight)'),
(13, 7, 67751, 0, 0,  1, 0, 67751, 0, 0, 1, 0, 0, '', 'Ghoul Explode (The Black Knight)');


SET @TEXT_ID := 65000;
INSERT INTO `npc_text` (`ID`, `text0_0`) VALUES
(@TEXT_ID, 'Transmogrification allows you to change how your items look like without changing the stats of the items.\r\nItems used in transmogrification are no longer refundable, tradeable and are bound to you.\r\nUpdating a menu updates the view and prices.\r\n\r\nNot everything can be transmogrified with eachother.\r\nRestrictions include but are not limited to:\r\nOnly armor and weapons can be transmogrified\r\nGuns, bows and crossbows can be transmogrified with eachother\r\nFishing poles can not be transmogrified\r\nYou must be able to equip both items used in the process.\r\n\r\nTransmogrifications stay on your items as long as you own them.\r\nIf you try to put the item in guild bank or mail it to someone else, the transmogrification is stripped.\r\n\r\nYou can also remove transmogrifications for free at the transmogrifier.'),
(@TEXT_ID+1, 'You can save your own transmogrification sets.\r\n\r\nTo save, first you must transmogrify your equipped items.\r\nThen when you go to the set management menu and go to save set menu,\r\nall items you have transmogrified are displayed so you see what you are saving.\r\nIf you think the set is fine, you can click to save the set and name it as you wish.\r\n\r\nTo use a set you can click the saved set in the set management menu and then select use set.\r\nIf the set has a transmogrification for an item that is already transmogrified, the old transmogrification is lost.\r\nNote that same transmogrification restrictions apply when trying to use a set as in normal transmogrification.\r\n\r\nTo delete a set you can go to the set\'s menu and select delete set.');

