/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-02 15:21:10
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mewe_basic_info`
-- ----------------------------
DROP TABLE IF EXISTS `mewe_basic_info`;
CREATE TABLE `mewe_basic_info` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wechatId` char(32) default NULL,
  `username` varchar(32) default NULL,
  `phone` char(11) default '',
  `sex` char(1) default '',
  `age` int(3) default NULL,
  `height` char(5) default '',
  `weight` char(5) default '',
  `workEnvironment` char(10) default '',
  `mainReq` char(10) default '',
  `mainSubReq` varchar(255) default NULL,
  `otherReq` char(10) default '',
  `otherSubReq` varchar(255) default NULL,
  `createdBy` varchar(32) default NULL,
  `createdDate` datetime default NULL,
  `modifiedBy` varchar(32) default NULL,
  `isActive` char(1) default '',
  `modifiedDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

-- ----------------------------
-- Records of mewe_basic_info
-- ----------------------------