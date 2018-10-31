/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : officeauto

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-06-23 08:47:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for contracts
-- ----------------------------
DROP TABLE IF EXISTS `contracts`;
CREATE TABLE `contracts` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(32) DEFAULT NULL,
  `PhoneNum` varchar(32) DEFAULT NULL,
  `Gender` varchar(4) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contracts
-- ----------------------------

-- ----------------------------
-- Table structure for emailinfo
-- ----------------------------
DROP TABLE IF EXISTS `emailinfo`;
CREATE TABLE `emailinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(32) DEFAULT NULL,
  `Content` varchar(512) DEFAULT NULL,
  `SendId` int(11) DEFAULT NULL,
  `ReceiveId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emailinfo
-- ----------------------------

-- ----------------------------
-- Table structure for fileinfo
-- ----------------------------
DROP TABLE IF EXISTS `fileinfo`;
CREATE TABLE `fileinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FileName` varchar(255) DEFAULT NULL,
  `FileAddress` varchar(255) DEFAULT NULL,
  `SubTime` datetime DEFAULT NULL,
  `FileSize` double DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fileinfo
-- ----------------------------

-- ----------------------------
-- Table structure for logininfo
-- ----------------------------
DROP TABLE IF EXISTS `logininfo`;
CREATE TABLE `logininfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LoginIP` varchar(64) DEFAULT NULL,
  `LoginDateTime` datetime DEFAULT NULL,
  `LoginAddress` varchar(64) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logininfo
-- ----------------------------

-- ----------------------------
-- Table structure for notes
-- ----------------------------
DROP TABLE IF EXISTS `notes`;
CREATE TABLE `notes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(1024) DEFAULT NULL,
  `SubTime` datetime DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notes
-- ----------------------------

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(32) DEFAULT NULL,
  `SubTime` datetime DEFAULT NULL,
  `NoticeLevel` int(11) DEFAULT NULL,
  `Title` varchar(32) DEFAULT NULL,
  `Content` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notices
-- ----------------------------

-- ----------------------------
-- Table structure for processinfo
-- ----------------------------
DROP TABLE IF EXISTS `processinfo`;
CREATE TABLE `processinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessTypeId` int(11) DEFAULT NULL,
  `SubTime` datetime DEFAULT NULL,
  `ProcessStatus` int(11) DEFAULT NULL,
  `Title` varchar(32) DEFAULT NULL,
  `Content` varchar(512) DEFAULT NULL,
  `ApplyUserId` int(11) NOT NULL,
  `CheckUserId` int(11) DEFAULT NULL,
  `CheckTime` datetime DEFAULT NULL,
  `CheckStatus` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processinfo
-- ----------------------------

-- ----------------------------
-- Table structure for processtype
-- ----------------------------
DROP TABLE IF EXISTS `processtype`;
CREATE TABLE `processtype` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProcessTypeName` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of processtype
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleName` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '学生处');
INSERT INTO `roles` VALUES ('2', '党委');
INSERT INTO `roles` VALUES ('3', '电信学院');
INSERT INTO `roles` VALUES ('4', '艺术学院');
INSERT INTO `roles` VALUES ('5', '教务处');
INSERT INTO `roles` VALUES ('6', '招生处');
INSERT INTO `roles` VALUES ('0', '管理员');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Uid` varchar(50) DEFAULT NULL,
  `Pwd` varchar(50) DEFAULT NULL,
  `IdCard` varchar(30) DEFAULT NULL,
  `FamilyAddress` varchar(100) DEFAULT NULL,
  `PhoneNum` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `School` varchar(255) DEFAULT NULL,
  `Gender` varchar(4) DEFAULT NULL,
  `HeadImage` varchar(255) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `RealName` varchar(36) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('7', 'admin', '000000', '111111111111111111', '青州市', '11111111111', '70621815@qq.com', '历山学院8', '男', '/OfficeAuto/images/touxiang.png', '2017-06-01', '成笑笑', '0');
