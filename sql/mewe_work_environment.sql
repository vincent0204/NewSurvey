/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-14 13:52:43
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
INSERT INTO `mewe_work_environment` VALUES ('1', '久坐', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('10', '高温', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('11', '低温', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('12', '常熬夜加班', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('13', '忙碌（饮食不规律）', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('14', '工作时间长工作压力大', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('15', '其它', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('2', '久站', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('3', '体力劳动大', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('4', '化工行业', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('5', '皮革厂', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('6', '加油站', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('7', '油漆匠', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('8', '煤矿业', null, '2015-09-14 13:49:41', null, null);
INSERT INTO `mewe_work_environment` VALUES ('9', '粉尘多', null, '2015-09-14 13:49:41', null, null);
