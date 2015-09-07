/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-02 15:21:34
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mewe_work_environment`
-- ----------------------------
DROP TABLE IF EXISTS `mewe_work_environment`;
CREATE TABLE `mewe_work_environment` (
  `id` char(4) NOT NULL,
  `label` varchar(255) default NULL,
  `createBy` varchar(32) default NULL,
  `cratedDate` datetime default NULL,
  `modifyBy` varchar(32) default NULL,
  `modifyDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mewe_work_environment
-- ----------------------------
