/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-25 10:19:54
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mewe_question`
-- ----------------------------
DROP TABLE IF EXISTS `mewe_question`;
CREATE TABLE `mewe_question` (
  `id` char(4) NOT NULL,
  `label` text,
  `sectionLabel` varchar(100) default NULL,
  `sectionId` varchar(2) default NULL,
  `seqInSection` int(11) default NULL,
  `isActive` char(1) default NULL,
  `createdBy` varchar(32) default 'Admin',
  `createdDate` datetime default NULL,
  `modifiedBy` varchar(32) default 'Admin',
  `modifiedDate` datetime default NULL,
  `isMale` char(1) default '1',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mewe_question
-- ----------------------------
INSERT INTO `mewe_question` VALUES ('0001', '烧心或返酸', '第一部分', '01', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0002', '餐后腹胀', '第一部分', '01', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0003', '呼气味重（口臭）', '第一部分', '01', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0004', '长期腹泻或餐后短暂腹泻', '第一部分', '01', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0005', '餐后困乏', '第一部分', '01', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0006', '大便有未消化食物', '第一部分', '01', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0007', '吃油腻食物胃部不适', '第二部分', '02', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0008', '口腔味苦，特别饭后', '第二部分', '02', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0009', '胆囊疾病或胆囊切除', '第二部分', '02', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0010', '饮酒容易醉，或饮酒后不舒服', '第二部分', '02', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0011', '对烟味、汽油味及化学物质敏感（香水、油漆、清洁剂、杀虫剂）', '第二部分', '02', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0012', '皮肤干，脚气和/或足部脱皮', '第二部分', '02', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0013', '食物过敏或食物不耐受', '第三部分', '03', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0014', '某种食物使你疲劳或腹胀', '第三部分', '03', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0015', '交替性便秘与腹泻', '第三部分', '03', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0016', '哮喘、鼻窦炎、鼻塞', '第三部分', '03', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0017', '做怪梦或恶梦', '第三部分', '03', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0018', '渴望面包或面条等面食', '第三部分', '03', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0019', '在发霉或潮湿地方感觉更差', '第四部分', '04', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0020', '有股癣、香港脚、指甲真菌感染', '第四部分', '04', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0021', '排便每天少于一次', '第四部分', '04', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0022', '便臭', '第四部分', '04', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0023', '大便硬或难解出来', '第四部分', '04', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0024', '舌苔厚', '第四部分', '04', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0025', '小腿、脚或脚趾在休息时抽筋', '第五部分', '05', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0026', '味觉或嗅觉减退，指甲有白点', '第五部分', '05', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0027', '关节疼痛或肿胀，或有椎间盘突出', '第五部分', '05', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0028', '晨僵', '第五部分', '05', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0029', '渴望巧克力', '第五部分', '05', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0030', '口、眼和/或鼻干', '第五部分', '05', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0031', '喜欢吃油腻食物或高脂类食物', '第六部分', '06', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0032', '低脂或减少脂类饮食', '第六部分', '06', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0033', '容易晒伤', '第六部分', '06', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0034', '容易肌疲劳', '第六部分', '06', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0035', '紧张性头痛或炎热太阳下头痛', '第六部分', '06', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0036', '皮肤干片状和/或头皮屑多', '第六部分', '06', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0037', '喜欢甜食', '第七部分', '07', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0038', '食欲过度', '第七部分', '07', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0039', '饭前急躁，如果不吃饭或延迟吃饭会头痛或无精神', '第七部分', '07', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0040', '下午渴望咖啡或糖', '第七部分', '07', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0041', '频繁口渴，尿频', '第七部分', '07', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0042', '入睡后几小时唤醒，再很难入睡', '第七部分', '07', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0043', '中等运动就容易累', '第八部分', '08', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0044', '容易招虫叮咬', '第八部分', '08', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0045', '紧张不安，担心、焦虑，忧心忡忡', '第八部分', '08', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0046', '刷牙时牙龈容易出血，皮肤脆弱，刮胡子易受伤', '第八部分', '08', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0047', '唇干裂，嘴角裂开', '第八部分', '08', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0048', '易长息肉或疣', '第八部分', '08', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0049', '倾向“夜猫子”或深夜精神好', '第九部分', '09', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0050', '长期腰背酸痛，疲劳时更差', '第九部分', '09', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0051', '突然站起时头晕', '第九部分', '09', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0052', '慢性疲劳，或经常瞌睡', '第九部分', '09', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0053', '易紧张或兴奋，要平静下来困难', '第九部分', '09', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0054', '早晨起床后恢复清醒或灵活缓慢', '第九部分', '09', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0055', '即使胃口大，但也难增加体重', '第十部分', '10', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0056', '情绪化，不能在压力下工作，内心发抖（精神不安）', '第十部分', '10', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0057', '怕热', '第十部分', '10', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0058', '怕冷，血液循环不良（手和脚冷）', '第十部分', '10', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0059', '过多的脱发/或毛发粗糙', '第十部分', '10', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0060', '容易疲劳、白天困乏', '第十部分', '10', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0061', '有前列腺问题', '第十一部分', '11', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0062', '排尿困难或尿不尽', '第十一部分', '11', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0063', '小便时疼痛或烧灼感', '第十一部分', '11', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0064', '夜晚醒了就想小便', '第十一部分', '11', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0065', '排尿过程中尿流中断', '第十一部分', '11', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0066', '性功能下降', '第十一部分', '11', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0067', '月经周期变化或周期长短改变', '第十一部分', '11', '1', '1', 'Admin', null, 'Admin', null, '0');
INSERT INTO `mewe_question` VALUES ('0068', '乳腺增生或子宫肌瘤', '第十一部分', '11', '2', '1', 'Admin', null, 'Admin', null, '0');
INSERT INTO `mewe_question` VALUES ('0069', '阴道分泌物多或阴道瘙痒', '第十一部分', '11', '3', '1', 'Admin', null, 'Admin', null, '0');
INSERT INTO `mewe_question` VALUES ('0070', '随月经周期情绪波动', '第十一部分', '11', '4', '1', 'Admin', null, 'Admin', null, '0');
INSERT INTO `mewe_question` VALUES ('0071', '经期血流稀少', '第十一部分', '11', '5', '1', 'Admin', null, 'Admin', null, '0');
INSERT INTO `mewe_question` VALUES ('0072', '热潮红', '第十一部分', '11', '6', '1', 'Admin', null, 'Admin', null, '0');
INSERT INTO `mewe_question` VALUES ('0073', '在密闭空间有强烈想开窗愿望', '第十二部分', '12', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0074', '高海拔地区感觉不适', '第十二部分', '12', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0075', '中等运动感觉气短', '第十二部分', '12', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0076', '胸闷、胸痛放射到右肩', '第十二部分', '12', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0077', '夜间气短咳嗽', '第十二部分', '12', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0078', '脚踝肿胀，尤其是在一天结束时', '第十二部分', '12', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0079', '背中部疼痛', '第十三部分', '13', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0080', '肾结石史', '第十三部分', '13', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0081', '黑眼圈或眼袋', '第十三部分', '13', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0082', '尿液浑浊或尿色深', '第十三部分', '13', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0083', '尿有强烈气味', '第十三部分', '13', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0084', '尿有大量泡沫', '第十三部分', '13', '6', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0085', '流鼻涕或流青鼻', '第十四部分', '14', '1', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0086', '经常感冒，易被传染', '第十四部分', '14', '2', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0087', '皮肤瘙痒/皮炎', '第十四部分', '14', '3', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0088', '感染频繁（耳、鼻窦、肺、皮肤、膀胱、肾等）', '第十四部分', '14', '4', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0089', '刺激性咳嗽', '第十四部分', '14', '5', '1', 'Admin', null, 'Admin', null, '1');
INSERT INTO `mewe_question` VALUES ('0090', '患囊肿、疖子、皮疹', '第十四部分', '14', '6', '1', 'Admin', null, 'Admin', null, '1');
