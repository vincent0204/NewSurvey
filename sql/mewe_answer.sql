/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-02 17:06:47
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mewe_answer`
-- ----------------------------
DROP TABLE IF EXISTS `mewe_answer`;
CREATE TABLE `mewe_answer` (
  `id` char(10) NOT NULL,
  `basicId` char(10) default NULL,
  `pointTotal` int(11) default NULL,
  `answerDetailString` text,
  `answerDetailJson` text,
  `answerSectionString` text,
  `intervenedSectionString` text,
  `finalConclusion` varchar(20) default NULL,
  `currentSection` int(11) default NULL,
  `createdBy` varchar(32) default NULL,
  `createdDate` datetime default NULL,
  `modifiedBy` varchar(32) default NULL,
  `modifiedDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mewe_answer
-- ----------------------------
