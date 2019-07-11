-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(10) NULL DEFAULT NULL,
  `goods_desc` varchar(255) NULL DEFAULT NULL,
  `price` int(10) NULL DEFAULT NULL,
  `cate_id` int(10) NULL DEFAULT NULL,
  `brand_id` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES (1, '沙滩裤', '一个夏天就让腿晒黑', 30, 1, 1);
INSERT INTO `t_goods` VALUES (2, '运动服', '超级丑的校服', 120, 1, 2);
INSERT INTO `t_goods` VALUES (3, '小西服', '衣冠禽..衣冠楚楚', 9999, 1, 3);
INSERT INTO `t_goods` VALUES (4, '滚筒洗衣机', 'goto..工藤新一!', 890, 2, 4);
INSERT INTO `t_goods` VALUES (5, '美的空调', '一晚只需一百度电', 3690, 2, 5);
INSERT INTO `t_goods` VALUES (6, '格力电饭煲', '董明珠掌握核心科技', 2390, 2, 6);
INSERT INTO `t_goods` VALUES (7, '格力空调', '买空调就不选格力', 4590, 2, 6);
INSERT INTO `t_goods` VALUES (8, '海尔冰箱', '海尔兄弟给你去去火', 4396, 2, 4);
INSERT INTO `t_goods` VALUES (9, '华为Mate10', '任正非：去你妹的美帝', 5500, 3, 7);
INSERT INTO `t_goods` VALUES (10, 'iPhone8+', '小哥哥给我买8plus么么搭', 6200, 3, 9);
INSERT INTO `t_goods` VALUES (11, 'iPhoneMars', '纪念人类大规模定居火星十周年', 69999, 3, 9);
INSERT INTO `t_goods` VALUES (12, '三星s9', '三星永不自爆', 6700, 3, 8);
INSERT INTO `t_goods` VALUES (13, '三星SSG', 's7冠军系列旗舰机', 7777, 3, 8);
INSERT INTO `t_goods` VALUES (14, 'HUAWEImoon', '月球第一届星战定制版', 16988, 3, 7);