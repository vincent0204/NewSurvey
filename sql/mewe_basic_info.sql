/*
Navicat MySQL Data Transfer 

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-16 17:46:21
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mewe_basic_info`
-- ----------------------------
DROP TABLE IF EXISTS `mewe_basic_info`;
CREATE TABLE `mewe_basic_info` (
  `id` int(10) NOT NULL auto_increment,
  `wechatId` char(32) default NULL,
  `username` varchar(32) default NULL,
  `phone` char(11) default '',
  `sex` char(1) default '',
  `age` int(3) default NULL,
  `height` char(5) default '',
  `weight` char(5) default '',
  `workEnvironment` char(10) default '',
  `otherWorkEnvironment` char(10) default '',
  `mainReq` char(10) default '',
  `otherReq` varchar(255) default NULL,
  `createdBy` varchar(32) default NULL,
  `createdDate` datetime default NULL,
  `modifiedBy` varchar(32) default NULL,
  `isActive` char(1) default '',
  `modifiedDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mewe_basic_info
-- ----------------------------