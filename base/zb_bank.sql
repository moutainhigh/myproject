/*
 Navicat Premium Data Transfer

 Source Server         : 10.200.157.139
 Source Server Type    : MySQL
 Source Server Version : 50635
 Source Host           : 10.200.157.139:3306
 Source Schema         : zchz-uat

 Target Server Type    : MySQL
 Target Server Version : 50635
 File Encoding         : 65001

 Date: 14/01/2019 10:57:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for zb_bank
-- ----------------------------
DROP TABLE IF EXISTS `zb_bank`;
CREATE TABLE `zb_bank`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '唯一标识',
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `modify_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  `name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '全称',
  `short_name` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简称',
  `code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '编码',
  `pingpp_code` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '对应pingpp的银行编码',
  `first_letter` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '首字母',
  `logo_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT 'LOGO地址',
  `enable_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '启用状态,code=BASE_BANK_ENABLE_STATUS',
  `is_hot` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否热门',
  `creator_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '创建人',
  `modifier_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0 COMMENT '修改人',
  `record_status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '状态(0无效1有效)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zb_bank
-- ----------------------------
INSERT INTO `zb_bank` VALUES (1, '2017-03-06 15:47:08', '2017-08-21 16:43:02', '中国邮政储蓄银行', '中国邮政储蓄银行', '0100', '0100', 'Z', 'http://img1.zchz.com/img/bank/2017/1a3/455/1_1de0a8741defa0c.jpg', 1, 1, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (2, '2017-03-06 15:47:08', '2017-08-21 16:43:02', '工商银行', '工商银行', '0102', '0102', 'G', 'http://img1.zchz.com/img/bank/2017/7b5/c8e/2_a8580b299f301f9.jpg', 1, 1, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (3, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '农业银行', '农业银行', '0103', '0103', 'N', 'http://img1.zchz.com/img/bank/2017/b21/7d5/3_304c9ac6b8cbb36.jpg', 1, 1, 0, 3846907765209563136, 1);
INSERT INTO `zb_bank` VALUES (4, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '中国银行', '中国银行', '0104', '0104', 'Z', 'http://img1.zchz.com/img/bank/2017/86c/ddd/4_c0850ff72828eaf.jpg', 1, 1, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (5, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '建设银行', '建设银行', '0105', '0105', 'J', 'http://img1.zchz.com/img/bank/2017/614/70f/5_887deefc786aadc.jpg', 1, 1, 0, 3846907765209563136, 1);
INSERT INTO `zb_bank` VALUES (6, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '交通银行', '交通银行', '0301', '0301', 'J', 'http://img1.zchz.com/img/bank/2017/70e/b34/6_9c340619aebdb5c.jpg', 1, 1, 0, 3846907765209563136, 1);
INSERT INTO `zb_bank` VALUES (7, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '中信银行', '中信银行', '0302', '0302', 'Z', 'http://img1.zchz.com/img/bank/2017/996/375/7_5a9eae9ec2f3.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (8, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '光大银行', '光大银行', '0303', '0303', 'G', 'http://img1.zchz.com/img/bank/2017/223/96c/8_31bac2d70e1ae70.jpg', 1, 0, 0, 3846907765209563136, 1);
INSERT INTO `zb_bank` VALUES (9, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '华夏银行', '华夏银行', '0304', '0304', 'H', 'http://img1.zchz.com/img/bank/2017/18b/ee7/9_299358f44528442.jpg', 1, 0, 0, 3846907765209563136, 1);
INSERT INTO `zb_bank` VALUES (10, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '民生银行', '民生银行', '0305', '0305', 'M', 'http://img1.zchz.com/img/bank/2017/36f/782/10_51ac25b2d646d2e.jpg', 1, 1, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (11, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '广发银行', '广发银行', '0306', '0306', 'G', 'http://img1.zchz.com/img/bank/2017/73a/7bc/11_a3a7678f3496fcf.jpg', 1, 1, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (12, '2017-03-06 15:47:09', '2017-08-21 16:43:02', '招商银行', '招商银行', '0308', '0308', 'Z', 'http://img1.zchz.com/img/bank/2017/475/87d/12_69aa3943ecd36df.jpg', 1, 1, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (13, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '兴业银行', '兴业银行', '0309', '0309', 'X', 'http://img1.zchz.com/img/bank/2017/54f/4fb/13_78f1c3a3c03fde7.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (14, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '浦发银行', '浦发银行', '0310', '0310', 'P', 'http://img1.zchz.com/img/bank/2017/9ca/741/14_d850970f3040102.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (15, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '恒丰银行', '恒丰银行', '0311', '0311', 'H', 'http://img1.zchz.com/img/bank/2017/d1d/3cf/15_7b6ca6b48b74.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (16, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '临沂市商业银行', '临沂市商业银行', '0313', '0313', 'L', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (17, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '浙商银行', '浙商银行', '0316', '0316', 'Z', 'http://img1.zchz.com/img/bank/2017/393/712/17_576bfc5939f67ab.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (18, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '渤海银行', '渤海银行', '0317', '0317', 'B', 'http://img1.zchz.com/img/bank/2017/881/25b/18_c3ad72a13bee275.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (19, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '平安银行', '平安银行', '0318', '0318', 'P', 'http://img1.zchz.com/img/bank/2017/37b/f32/19_52e007416e93210.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (20, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '新韩银行(中国)', '新韩银行(中国)', '0328', '0328', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (21, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '韩亚银行(中国)', '韩亚银行(中国)', '0329', '0329', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (22, '2017-03-06 15:47:10', '2017-08-21 16:43:02', '企业银行', '企业银行', '0336', '0336', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (23, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '上海银行', '上海银行', '0401', '0401', 'S', 'http://img1.zchz.com/img/bank/2017/3ba/a98/23_587f68252a2984f.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (24, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '厦门银行', '厦门银行', '0402', '0402', 'X', 'http://img1.zchz.com/img/bank/2017/d22/b26/24_317177604ef09dd.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (25, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '北京银行', '北京银行', '0403', '0403', 'B', 'http://img1.zchz.com/img/bank/2017/596/787/25_848370aaa98344a.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (26, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '烟台市商业银行', '烟台市商业银行', '0404', '0404', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (27, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '福建海峡银行', '福建海峡银行', '0405', '0405', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (28, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '吉林银行', '吉林银行', '0406', '0406', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (29, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '宁波银行', '宁波银行', '0408', '0408', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (30, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '温州银行', '温州银行', '0412', '0412', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (31, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '广州银行', '广州银行', '0413', '0413', 'G', 'http://img1.zchz.com/img/bank/2017/904/771/31_c8e651cf91b1e12.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (32, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '汉口银行', '汉口银行', '0414', '0414', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (33, '2017-03-06 15:47:11', '2017-08-21 16:43:02', '洛阳银行', '洛阳银行', '0418', '0418', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (34, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '大连银行', '大连银行', '0420', '0420', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (35, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '河北银行', '河北银行', '0422', '0422', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (36, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '杭州商业银行', '杭州商业银行', '0423', '0423', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (37, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '南京银行', '南京银行', '0424', '0424', 'N', 'http://img1.zchz.com/img/bank/2017/c13/07c/37_1d0a3f46ea404e7.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (38, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '乌鲁木齐市商业银行', '乌鲁木齐市商业银行', '0427', '0427', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (39, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '绍兴银行', '绍兴银行', '0428', '0428', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (40, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '葫芦岛市商业银行', '葫芦岛市商业银行', '0433', '0433', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (41, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '天津银行', '天津银行', '0434', '0434', 'T', 'http://img1.zchz.com/img/bank/2017/a47/bb7/1_1b20086c2c2bd.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (42, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '郑州银行', '郑州银行', '0435', '0435', 'Z', 'http://img1.zchz.com/img/bank/2017/244/6e8/42_3654d06bc26b1f0.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (43, '2017-03-06 15:47:12', '2017-08-21 16:43:02', '宁夏银行', '宁夏银行', '0436', '0436', 'N', 'http://img1.zchz.com/img/bank/2017/5b3/5c5/43_76ebf37e6500730.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (44, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '齐商银行', '齐商银行', '0438', '0438', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (45, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '锦州银行', '锦州银行', '0439', '0439', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (46, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '徽商银行', '徽商银行', '0440', '0440', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (47, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '重庆银行', '重庆银行', '0441', '0441', 'C', 'http://img1.zchz.com/img/bank/2017/06f/15f/47_da8f4be98ca802.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (48, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '哈尔滨银行', '哈尔滨银行', '0442', '0442', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (49, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '贵阳银行', '贵阳银行', '0443', '0443', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (50, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '兰州银行', '兰州银行', '0447', '0447', 'L', 'http://img1.zchz.com/img/bank/2017/63f/b33/50_8ca01d82b2ccfc4.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (51, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '南昌银行', '南昌银行', '0448', '0448', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (52, '2017-03-06 15:47:13', '2017-08-21 16:43:02', '晋商银行', '晋商银行', '0449', '0449', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (53, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '青岛银行', '青岛银行', '0450', '0450', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (54, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '日照市商业银行', '日照市商业银行', '0455', '0455', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (55, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '鞍山银行', '鞍山银行', '0456', '0456', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (56, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '青海银行', '青海银行', '0458', '0458', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (57, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '台州银行', '台州银行', '0459', '0459', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (58, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '长沙银行', '长沙银行', '0461', '0461', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (59, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '赣州银行', '赣州银行', '0463', '0463', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (60, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '营口银行', '营口银行', '0465', '0465', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (61, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '阜新银行', '阜新银行', '0467', '0467', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (62, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '内蒙古银行', '内蒙古银行', '0474', '0474', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (63, '2017-03-06 15:47:14', '2017-08-21 16:43:02', '湖州市商业银行', '湖州市商业银行', '0475', '0475', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (64, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '沧州银行', '沧州银行', '0476', '0476', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (65, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '包商银行', '包商银行', '0479', '0479', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (66, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '威海商业银行', '威海商业银行', '0481', '0481', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (67, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '攀枝花市商业银行', '攀枝花市商业银行', '0483', '0483', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (68, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '绵阳市商业银行', '绵阳市商业银行', '0485', '0485', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (69, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '张家口市商业银行', '张家口市商业银行', '0490', '0490', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (70, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '龙江银行', '龙江银行', '0492', '0492', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (71, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '柳州银行', '柳州银行', '0495', '0495', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (72, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '莱商银行', '莱商银行', '0497', '0497', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (73, '2017-03-06 15:47:15', '2017-08-21 16:43:02', '德阳银行', '德阳银行', '0498', '0498', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (74, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '晋城银行', '晋城银行', '0503', '0503', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (75, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '东莞商行', '东莞商行', '0505', '0505', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (76, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '江苏银行', '江苏银行', '0508', '0508', 'J', 'http://img1.zchz.com/img/bank/2017/cac/9b3/76_14d42efbc846c9b.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (77, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '承德市商业银行', '承德市商业银行', '0513', '0513', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (78, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '德州银行', '德州银行', '0515', '0515', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (79, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '邯郸市商业银行', '邯郸市商业银行', '0517', '0517', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (80, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '浙江民泰商业银行', '浙江民泰商业银行', '0525', '0525', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (81, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '上饶市商业银行', '上饶市商业银行', '0526', '0526', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (82, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '东营银行', '东营银行', '0527', '0527', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (83, '2017-03-06 15:47:16', '2017-08-21 16:43:02', '泰安市商业银行', '泰安市商业银行', '0528', '0528', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (84, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '浙江稠州商业银行', '浙江稠州商业银行', '0530', '0530', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (85, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '鄂尔多斯银行', '鄂尔多斯银行', '0534', '0534', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (86, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '济宁银行', '济宁银行', '0537', '0537', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (87, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '昆仑银行', '昆仑银行', '0547', '0547', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (88, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '邢台银行', '邢台银行', '0554', '0554', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (89, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '漯河商行', '漯河商行', '0556', '0556', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (90, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '上海农商银行', '上海农商银行', '1401', '1401', 'S', 'http://img1.zchz.com/img/bank/2017/55e/e2d/90_7ab43da5f9587bc.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (91, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '昆山农信社', '昆山农信社', '1402', '1402', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (92, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '常熟市农村商业银行', '常熟市农村商业银行', '1403', '1403', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (93, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '深圳农村商业银行', '深圳农村商业银行', '1404', '1404', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (94, '2017-03-06 15:47:17', '2017-08-21 16:43:02', '广州农村商业银行', '广州农村商业银行', '1405', '1405', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (95, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '佛山顺德农村商业银行', '佛山顺德农村商业银行', '1408', '1408', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (96, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '昆明农村信用社联合社', '昆明农村信用社联合社', '1409', '1409', 'K', 'http://img1.zchz.com/img/bank/2017/b5c/b92/96_8380aad38839ae0.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (97, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '湖北农信社', '湖北农信社', '1410', '1410', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (98, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '东莞农村商业银行', '东莞农村商业银行', '1415', '1415', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (99, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '张家港农村商业银行', '张家港农村商业银行', '1416', '1416', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (100, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '福建省农村信用社联合社', '福建省农村信用社联合社', '1417', '1417', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (101, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '北京农村商业银行', '北京农村商业银行', '1418', '1418', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (102, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '天津农村商业银行', '天津农村商业银行', '1419', '1419', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (103, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '宁波鄞州农村合作银行', '宁波鄞州农村合作银行', '1420', '1420', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (104, '2017-03-06 15:47:18', '2017-08-21 16:43:02', '江苏省农村信用社联合社', '江苏省农村信用社联合社', '1424', '1424', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (105, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '江苏吴江农村商业银行', '江苏吴江农村商业银行', '1428', '1428', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (106, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '苏州银行', '苏州银行', '1430', '1430', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (107, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '广西农村信用社联合社', '广西农村信用社联合社', '1443', '1443', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (108, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '黄河农村商业银行', '黄河农村商业银行', '1446', '1446', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (109, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '安徽省农村信用社联合社', '安徽省农村信用社联合社', '1447', '1447', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (110, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '海南省农村信用社联合社', '海南省农村信用社联合社', '1448', '1448', 'H', 'http://img1.zchz.com/img/bank/2017/45d/7ea/110_1040a1abed5ff9.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (111, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '重庆农村商业银行', '重庆农村商业银行', '1513', '1513', 'C', 'http://img1.zchz.com/img/bank/2017/82e/cdb/111_b6d654b0fa02fa1.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (112, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '潍坊市商业银行', '潍坊市商业银行', '6462', '6462', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (113, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '富滇银行', '富滇银行', '6466', '6466', 'F', 'http://img1.zchz.com/img/bank/2017/030/d8c/113_6d9c3d8b25105c.jpg', 1, 0, 0, 1, 1);
INSERT INTO `zb_bank` VALUES (114, '2017-03-06 15:47:19', '2017-08-21 16:43:02', '浙江泰隆商业银行', '浙江泰隆商业银行', '6473', '6473', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (115, '2017-03-06 15:47:20', '2017-08-21 16:43:02', '广西北部湾银行', '广西北部湾银行', '6478', '6478', '', '', 2, 0, 0, 0, 1);
INSERT INTO `zb_bank` VALUES (116, '2017-03-06 15:47:20', '2017-08-21 16:43:02', '商丘商行', '商丘商行', '6567', '6567', '', '', 2, 0, 0, 0, 1);

SET FOREIGN_KEY_CHECKS = 1;