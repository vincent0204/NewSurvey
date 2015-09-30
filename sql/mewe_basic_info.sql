/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-28 15:11:03
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
  `mainSubReq` varchar(255) default NULL,
  `otherReq` char(10) default NULL,
  `otherSubReq` varchar(255) default NULL,
  `createdBy` varchar(32) default NULL,
  `createdDate` datetime default NULL,
  `modifiedBy` varchar(32) default NULL,
  `isActive` char(1) default '',
  `modifiedDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mewe_basic_info
-- ----------------------------
INSERT INTO `mewe_basic_info` VALUES ('194', null, '左文龙', '13012817860', '1', '25', '180', '67', '12', '', '18', null, '57,58,59', null, 'admin', '2015-09-28 13:46:55', null, '1', null);
INSERT INTO `mewe_basic_info` VALUES ('195', null, 'abv', '13012817860', '1', '25', '180', '67', '14', '', '19', null, '61,62,63', null, 'admin', '2015-09-28 13:48:24', null, '1', null);
