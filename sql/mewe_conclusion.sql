/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50045
Source Host           : localhost:3306
Source Database       : mewe

Target Server Type    : MYSQL
Target Server Version : 50045
File Encoding         : 65001

Date: 2015-09-02 15:21:17
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `mewe_conclusion`
-- ----------------------------
DROP TABLE IF EXISTS `mewe_conclusion`;
CREATE TABLE `mewe_conclusion` (
  `id` char(10) NOT NULL default '',
  `sectionId` char(10) default NULL,
  `conclusion` varchar(255) default NULL,
  `suggest` varchar(255) default NULL,
  `products` varchar(255) default NULL,
  `isActive` char(1) default NULL,
  `createdBy` varchar(32) default NULL,
  `createdDate` datetime default NULL,
  `modifiedBy` varchar(32) default NULL,
  `modifiedDate` datetime default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mewe_conclusion
-- ----------------------------
INSERT INTO `mewe_conclusion` VALUES ('1', '1', '第一部分评估结论：上消化道功能减退。\r\n胃分泌盐酸和胃蛋白酶帮助消化食物，然后食物移动到十二指肠和小肠部分，在那里，胰腺分泌胰酶消化蛋白、脂肪、碳水化合物，胆囊分泌胆汁乳化脂肪。胃酸分泌功能非常重要，其影响胰液和胆汁分泌，影响肠道生态系统，影响肠道蠕动功能，影响营养物质的消化和吸收等。\r\n', '第一部分慢性食物过敏（90项）', '第一部分干预营养素：Dr. Venessa\'sFomula消化平衡；Natural Factors消化酶；Natural Factors甜菜碱；Yogourmet益生菌', '1', '', '2015-9-2 16:07:15', NULL, '2015-9-2 16:32:12');
INSERT INTO `mewe_conclusion` VALUES ('10', '10', '第十部分评估结论：甲状腺功能紊乱\r\n甲状腺的主要功能是合成甲状腺激素，调节机体代谢。甲状腺激素的生物学作用主要有：促进生长发育，调节三大营养物质的代谢。\r\n', '第十部分器官功能与微量元素检测（甲状腺功能检测）', '第十部分干预营养素：Dr. Venessa\'sFomula甲状腺平衡片；Life extension线粒体能量支持', '1', NULL, '2015-9-2 16:31:33', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('11', '11', '第十一部分评估结论（男）：男性内分泌功能紊乱\r\n成年男性的正常性功能和生育能力有赖于机体的正常激素水平，若机体内分泌异常，体内激素水平紊乱，有可能导致相关亚健康症状及疾病。\r\n', '第十一部分（男）器官功能与微量元素检测（男性内分泌检测）', '第十一部分干预营养素（男）：Dr. Venessa\'sFomula前列腺平衡片；Michael\'s男性活力片', '1', NULL, '2015-9-2 16:31:46', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('12', '12', '第十一部分评估结论（女）：女性内分泌功能紊乱\r\n人体有内分泌系统，分泌各种激素和神经系统一起调节人体的代谢和生理功能。正常情况下各种激素是保持平衡的，如因某种原因使这种平衡打破了（某种激素过多或过少）这就造成内分泌失调，会引起相应的临床表现。\r\n', '第十一部分（女）器官功能与微量元素检测（女性内分泌检测）', '第十一部分干预营养素（女）：Dr. Venessa\'sFomula女性平衡片；Natural Factors女性激素平衡；Michael\'s女性活力片；Yogourmet益生菌', '1', NULL, '2015-9-2 16:31:46', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('13', '13', '第十二部分评估结论：心血管功能减退\r\n心血管的作用是推动血液流动，向器官、组织提供充足的血流量，以供应氧和各种营养物质（如水、无机盐、葡萄糖、蛋白质、各种水溶性维生素等），并带走代谢的终产物(如二氧化碳、尿素和尿酸等)，使细胞维持正常的代谢和功能。体内各种内分泌的激素和一些其它体液因素，也要通过血液循环将它们运送到靶细胞，实现机体的体液调节，维持机体内环境的相对恒定。\r\n', '第十二部分心血管功能检测', '第十二部分干预营养素：Life extension心血管保护胶囊；Life extension心脏健康益生菌；Dr. Venessa\'sFomula血压平衡片；Life extension内皮防御因子', '1', NULL, '2015-9-2 16:31:46', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('14', '14', '第十三部分评估结论：泌尿系功能减退\r\n泌尿系统由肾脏、输尿管、膀胱及尿道组成。其主要功能为排泄。排泄是指机体代谢过程中所产生的各种不为机体所利用或者有害的物质向体外输送的生理过程。被排出的物质一部分是营养物质的代谢产物；另一部分是衰老的细胞破坏时所形成的废物。此外，排泄物中还包括一些随食物摄入的多余物质，如多余的水和无机盐，蛋白质等。\r\n', '第十三部分肾功能检测', '第十三部分干预营养素：Dr. Venessa\'sFomula利尿片', '1', NULL, '2015-9-2 16:31:46', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('15', '15', '第十四部分评估结论：免疫系统功能紊乱\r\n免疫系统是机体执行免疫应答及免疫功能的重要系统。由免疫器官、免疫细胞和免疫物质组成，是防卫病原体入侵最有效的武器，它能发现并清除异物、外来病原微生物等引起内环境波动的因素。但其功能的亢进会对自身器官或组织产生伤害。\r\n', '第十四部分器官功能与微量元素检测（免疫功能分析检测）', '第十四部分干预营养素：Dr. Venessa\'sFomulaVIP20X；Natural Factors维生素C', '1', NULL, '2015-9-2 16:31:46', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('2', '2', '第二部分评估结论：肝胆功能减退。\r\n肝已知有500种功能，与其功能相关的系统有消化系统、内分泌系统、泌尿系统、控制血糖、脂肪与蛋白质代谢。肝分泌一种叫胆汁的物质存储在胆囊里，胆汁是脂肪乳化所必需的，也是机体清除的一个路径。当肝出现越来越多的功能障碍的时候，胆囊功能也越来越弱。\r\n', '第二部分肝脏解毒', '第二部分干预营养素：Dr. Venessa\'sFomula护肝片、Life extension解酒保肝片、Natural Factors肝胆排毒；Natural Factors终极抗氧化', '1', NULL, '2015-9-2 16:10:58', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('3', '3', '第三部分评估结论：小肠功能减退。\r\n小肠是主要营养物质进一步消化、吸收和同化的地方。小肠菌群过度繁殖会影响消化不良和代谢毒素产生，这些毒素对肠道完整性有相当大的破坏作用，导致肠漏症和吸收不良等。小肠是最大的病原栖息地，不良微生物的繁殖导致小肠环境恶化。\r\n', '第三部分慢性食物过敏（90项）', '第三部分干预营养素：Life extension谷氨酰胺、Yogourmet益生菌、Natural Factors消化酶', '1', NULL, '2015-9-2 16:14:29', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('4', '4', '第四部分评估结论：大肠功能减退。\r\n大肠是肠道重吸收水分的部位，消化后食物液体残渣转化为大便，大便包含水、无机盐、脱落上皮细胞和细菌。大便通过结肠排出需要最佳持续的蠕动功能。结肠的细菌环境能合成某些营养素，包括维生素B1、B2，B12，和维生素K。饮食中有足够数量的纤维非常重要，因为细菌分解纤维产生丁酸，丁酸是组成结肠粘膜细胞的主要燃料来源。\r\n', '第四部分肠道通透性检测', '第四部分干预营养素：Natural Factors牛至油、Natural Factors消化酶、Yogourmet益生菌', '1', NULL, '2015-9-2 16:16:24', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('5', '5', '第五部分评估结论：矿物质缺乏\r\n矿物质在几种情况下可能被消耗：吃大量糖和精致碳水化合物的人，尿中排泄的矿物质多；精致饮食易于矿物质混合，首先使矿物质降低；压力和肾上腺刺激增加减少分泌，引起矿物质丢失；今天使用化肥和土地过度耕种，使食物中矿物质缺乏\r\n', '第五部分器官功能与微量元素检测（矿物质与重金属检测）', '第五部分干预营养素：Life extension多维矿、Natural Factors男（女）综合维生素', '1', NULL, '2015-9-2 16:17:01', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('6', '6', '第六部分评估结论：必需脂肪酸缺乏\r\n必需脂肪酸是指人体维持机体正常代谢不可缺少而自身又不能合成、或合成速度慢无法满足机体需要，必须通过食物供给的脂肪酸。必需脂肪酸不仅能够吸引水分滋润皮肤细胞，还能防止水分流失。它是机体润滑油，但人体自身不能合成，必须从食物中摄取。\r\n', '第六部分脂肪酸检测', '第六部分干预营养素：Natural Factors亚麻籽油、Natural Factors超级鱼油、Dr. Venessa\'sFomula护肝片', '1', NULL, '2015-9-2 16:18:00', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('7', '7', '第七部分评估结论：糖代谢紊乱。\r\n糖代谢紊乱不会突然出现。一定程度上血糖调节紊乱涉及3个器官：胰腺、肝脏和肾上腺。当你摄入碳水化合物，刺激胰腺分泌胰岛素，促使血糖进入细胞，降低血糖水平。在两餐之间和晚上，肾上腺释放少量糖皮质激素刺激肝脏释放糖原（糖的储存方式）。\r\n', '第七部分器官功能与微量元素检测（胰岛素功能）', '第七部分干预营养素：Dr. Venessa\'sFomula血糖平衡；Natural Factors铬', '1', NULL, '2015-9-2 16:31:46', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('8', '8', '第八部分评估结论：维生素缺乏\r\n维生素是生物的生长和代谢所必需的微量有机物。分为脂溶性维生素和水溶性维生素两类。前者包括维生素A、维生素D、维生素E、维生素K等，后者有B族维生素和维生素C。人和动物缺乏维生素时不能正常生长，并发生特异性病变，即所谓维生素缺乏症。\r\n', '第八部分抗氧化维生素分析', '第八部分干预营养素：Life extension多维矿、Natural Factors男（女）综合维生素', '1', NULL, '2015-9-2 16:31:46', NULL, NULL);
INSERT INTO `mewe_conclusion` VALUES ('9', '9', '第九部分评估结论：肾上腺功能减退。\r\n肾上腺产生明确的激素应对压力，以战斗或逃跑的方式反应。在压力状态下，血压升高、血液从胃肠向四肢分布，心率升高，免疫系统被抑制，血凝能力增加。\r\n压力导致的肾上腺疲劳和高血压、心脏病以及许多消化系统疾病有关。\r\n', '第九部分器官功能与微量元素检测（肾上腺皮质压力分析）', '第九部分干预营养素：Michael\'s肾上腺能量片；Michael\'s肾上腺压力片', '1', NULL, '2015-9-2 16:31:46', NULL, NULL);

