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

CREATE TABLE `mewe_question` (
  `id` int(11) NOT NULL,
  `label` text,
  `sectionId` int(11) default NULL,
  `seqInSection` int(11) default NULL,
  `isActive` char(1) default NULL,
  `createdBy` varchar(32) default 'Admin',
  `createdDate` datetime default NULL,
  `modifiedBy` varchar(32) default 'Admin',
  `modifiedDate` datetime default NULL,
  `isMale` char(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;





