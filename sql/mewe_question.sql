/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-02 15:21:27
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mewe_question`
-- ----------------------------
DROP TABLE IF EXISTS `mewe_question`;
CREATE TABLE `mewe_question` (
  `id` char(10) NOT NULL,
  `label` text,
  `sectionId` int(11) default NULL,
  `seqInSection` int(11) default NULL,
  `isActive` tinyint(4) default NULL,
  `createdBy` varchar(32) default NULL,
  `createdDate` datetime default NULL,
  `modifiedBy` varchar(32) default NULL,
  `modifiedDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mewe_question
-- ----------------------------