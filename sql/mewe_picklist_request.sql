/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-14 10:36:14
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


INSERT INTO `mewe_picklist_request` VALUES ('16', '', '1', '魅力女人', null, '1', null, null, null, '1', null, '2015-09-10 17:45:35', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('17', '', '1', '男性保健', null, '1', null, null, null, '1', null, '2015-09-10 17:45:35', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('18', '', '1', '健康宝贝', null, '1', null, null, null, '1', null, '2015-09-10 17:45:35', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('19', '', '1', '关爱老人', null, '1', null, null, null, '1', null, '2015-09-10 17:45:35', null, null);

INSERT INTO `mewe_picklist_request` VALUES ('20', '', '1', '慢性病调理', null, '1', null, null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('21', '', '1', '其他', null, '1', null, null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('23', '16', '2', '减肥', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('24', '16', '2', '排毒', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('25', '16', '2', '月经不调', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('26', '16', '2', '更年期', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('27', '16', '2', '备孕', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('28', '16', '2', '妊娠营养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('29', '16', '2', '多难卵巢综合征', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);

INSERT INTO `mewe_picklist_request` VALUES ('30', '16', '2', '乳腺增生', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('31', '16', '2', '妇科炎症', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('32', '16', '2', '美白肌肤', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('33', '16', '2', '排毒养颜', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('34', '16', '2', '补气养颜', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('35', '16', '2', '关节保养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('36', '16', '2', '解酒护肝', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('37', '16', '2', '反复感冒', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('38', '16', '2', '三高保健', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('39', '16', '2', '心脑血管保护', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);

INSERT INTO `mewe_picklist_request` VALUES ('40', '16', '2', '胃部保养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('41', '16', '2', '胃肠平衡', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('42', '16', '2', '便秘', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('43', '17', '2', '男性性功能', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('44', '17', '2', '男性精子活力', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('45', '17', '2', '男性前列腺保养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('46', '17', '2', '解酒护肝', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('47', '17', '2', '关节保养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('48', '17', '2', '便秘', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('49', '17', '2', '减肥', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);

INSERT INTO `mewe_picklist_request` VALUES ('50', '17', '2', '排毒', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('51', '17', '2', '反复感冒', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('52', '17', '2', '三高保健', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('53', '17', '2', '心脑血管保护', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('54', '17', '2', '胃部保养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('55', '17', '2', '胃肠平衡', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('56', '17', '2', '便秘', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('57', '18', '2', '宝宝湿疹', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('58', '18', '2', '婴儿营养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('59', '18', '2', '儿童营养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);

INSERT INTO `mewe_picklist_request` VALUES ('60', '18', '2', '反复感冒', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('61', '19', '2', '三高保健', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('62', '19', '2', '心脑血管保护', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('63', '19', '2', '排毒', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('64', '19', '2', '关节保养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('65', '19', '2', '反复感冒', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('66', '19', '2', '胃部保养', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('67', '19', '2', '胃肠平衡', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('68', '19', '2', '便秘', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('69', '20', '2', '乳腺增生', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);

INSERT INTO `mewe_picklist_request` VALUES ('70', '20', '2', '甲状腺调理', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('71', '20', '2', '哮喘', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('72', '20', '2', '脂肪肝', null, null, '1', null, null, '1', null, '2015-09-10 18:21:44', null, null);
INSERT INTO `mewe_picklist_request` VALUES ('73', '20', '2', '儿童自闭症', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('74', '20', '2', '白癜风', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('75', '20', '2', '过敏性鼻炎', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('76', '20', '2', '肿瘤', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('77', '20', '2', '心肌梗塞', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('78', '20', '2', '出血性脑梗', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('79', '20', '2', '缺血性脑梗', null, null, '1', null, null, '1', null, null, null, null);

INSERT INTO `mewe_picklist_request` VALUES ('80', '20', '2', '肾功能衰竭', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('81', '20', '2', '肝功能衰竭', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('82', '20', '2', '肝硬化', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('83', '20', '2', '心功能衰竭', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('84', '20', '2', '心肌病', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('85', '20', '2', '系统性红斑狼疮', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('86', '20', '2', '系统性红斑狼疮伴肾病', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('87', '20', '2', '肺心病', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('88', '20', '2', '2型糖尿病伴并发症', null, null, '1', null, null, '1', null, null, null, null);
INSERT INTO `mewe_picklist_request` VALUES ('89', '20', '2', '1型糖尿病伴并发症', null, null, '1', null, null, '1', null, null, null, null);

INSERT INTO `mewe_picklist_request` VALUES ('90', '20', '2', '高血压伴并发症', null, null, '1', null, null, '1', null, null, null, null);
