/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-02 15:21:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mewe_picklist_request`
-- ----------------------------
DROP TABLE IF EXISTS `mewe_picklist_request`;
CREATE TABLE `mewe_picklist_request` (
  `id` char(4) NOT NULL,
  `parentId` char(4) default NULL,
  `level` char(1) default NULL,
  `label` varchar(255) default NULL,
  `sequence` int(11) default NULL,
  `mainRequest` char(1) default NULL,
  `otherRequest` char(1) default NULL,
  `isMini` char(1) default NULL,
  `miniId` char(4) default NULL,
  `isActive` char(1) default NULL,
  `createBy` varchar(32) default NULL,
  `createdDate` datetime default NULL,
  `modifyBy` varchar(32) default NULL,
  `modifyDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mewe_picklist_request
-- ----------------------------
