/*
Navicat MySQL Data Transfer

Source Server         : projects
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : kaola

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-10-28 18:30:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `jack` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `newprice` decimal(10,2) NOT NULL,
  `oldprice` decimal(10,2) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `timer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('2', 'Aptamil 爱宝美1段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm01.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '660.00', '660.00', '德国行货版', '2018-10-26 15:07:16');
INSERT INTO `goods` VALUES ('3', 'Aptamil 爱宝美2段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm02.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '635.00', '797.00', '德国行货版', '2018-10-26 15:50:41');
INSERT INTO `goods` VALUES ('4', 'Aptamil 爱宝美3段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm03.jpg', '营养充足不上�?', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '570.00', '727.00', '德国行货版', '2018-10-26 15:07:21');
INSERT INTO `goods` VALUES ('5', 'Aptamil 爱宝美4段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm04.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '556.00', '777.00', '德国行货版', '2018-10-26 15:50:49');
INSERT INTO `goods` VALUES ('6', 'Aptamil 爱宝美5段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm03.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '440.00', '440.00', '德国行货版', '2018-10-26 15:07:24');
INSERT INTO `goods` VALUES ('7', 'Aptamil 爱宝美6段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm02.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '446.00', '538.00', '德国行货版', '2018-10-26 15:50:58');
INSERT INTO `goods` VALUES ('8', 'Aptamil 爱宝美7段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm01.jpg', '营养充足不上�?', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '380.00', '450.00', '德国行货版', '2018-10-26 15:07:27');
INSERT INTO `goods` VALUES ('9', 'Aptamil 爱宝美8段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm04.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '360.00', '420.00', '德国行货版', '2018-10-26 15:07:28');
INSERT INTO `goods` VALUES ('10', 'Aptamil 爱宝美9段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm02.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '660.00', '797.00', '德国行货版', '2018-10-26 15:07:30');
INSERT INTO `goods` VALUES ('11', 'Aptamil 爱宝美10段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm03.jpg', '营养充足不上�?', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '570.00', '756.00', '德国行货版', '2018-10-26 15:07:31');
INSERT INTO `goods` VALUES ('12', 'Aptamil 爱宝美11段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm04.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '572.00', '777.00', '德国行货版', '2018-10-26 15:51:09');
INSERT INTO `goods` VALUES ('13', 'Aptamil 爱宝美12段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atm03.jpg', '口味清淡 正品保障', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm11', '440.00', '440.00', '德国行货版', '2018-10-26 15:07:34');
INSERT INTO `goods` VALUES ('14', 'Aptamil 爱宝美1段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmkj03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm12', '420.00', '585.00', '德国跨境版', '2018-10-26 15:07:35');
INSERT INTO `goods` VALUES ('15', 'Aptamil 爱宝美2段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmkj02.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm12', '430.00', '575.00', '德国跨境版', '2018-10-26 15:07:36');
INSERT INTO `goods` VALUES ('16', 'Aptamil 爱宝美3段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmkj01.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm12', '410.00', '525.00', '德国跨境版', '2018-10-26 15:07:41');
INSERT INTO `goods` VALUES ('17', 'Aptamil 爱宝美4段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmkj04.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm12', '370.00', '485.00', '德国跨境版', '2018-10-26 15:07:42');
INSERT INTO `goods` VALUES ('18', 'Aptamil 爱宝美5段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmkj02.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm12', '440.00', '520.00', '德国跨境版', '2018-10-26 15:07:44');
INSERT INTO `goods` VALUES ('19', 'Aptamil 爱宝美6段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmkj03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm12', '474.00', '485.00', '德国跨境版', '2018-10-26 15:07:45');
INSERT INTO `goods` VALUES ('20', 'Aptamil 爱宝美7段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmkj03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm12', '424.00', '502.00', '德国跨境版', '2018-10-26 15:07:47');
INSERT INTO `goods` VALUES ('21', 'Aptamil 爱宝美8段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmkj01.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', 'Aptamil 爱他美', 'm12', '435.00', '585.00', '德国跨境版', '2018-10-26 15:07:51');
INSERT INTO `goods` VALUES ('22', 'Aptamil 爱宝美1段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '澳洲', '../images/atm_aaborth.png', 'Aptamil 爱他美', 'm13', '420.00', '585.00', '澳爱', '2018-10-26 15:07:56');
INSERT INTO `goods` VALUES ('23', 'Aptamil 爱宝美2段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '澳洲', '../images/atm_aaborth.png', 'Aptamil 爱他美', 'm13', '416.00', '525.00', '澳爱', '2018-10-26 15:51:28');
INSERT INTO `goods` VALUES ('24', 'Aptamil 爱宝美3段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '澳洲', '../images/atm_aaborth.png', 'Aptamil 爱他美', 'm13', '450.00', '585.00', '澳爱', '2018-10-26 15:07:59');
INSERT INTO `goods` VALUES ('25', 'Aptamil 爱宝美4段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '澳洲', '../images/atm_aaborth.png', 'Aptamil 爱他美', 'm13', '450.00', '585.00', '澳爱', '2018-10-26 15:08:00');
INSERT INTO `goods` VALUES ('26', 'Aptamil 爱宝美5段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '澳洲', '../images/atm_aaborth.png', 'Aptamil 爱他美', 'm13', '320.00', '485.00', '澳爱', '2018-10-26 15:08:01');
INSERT INTO `goods` VALUES ('27', 'Aptamil 爱宝美6段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '澳洲', '../images/atm_aaborth.png', 'Aptamil 爱他美', 'm13', '340.00', '525.00', '澳爱', '2018-10-26 15:08:02');
INSERT INTO `goods` VALUES ('28', 'Aptamil 爱宝美7段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '澳洲', '../images/atm_aaborth.png', 'Aptamil 爱他美', 'm13', '440.00', '535.00', '澳爱', '2018-10-26 15:08:03');
INSERT INTO `goods` VALUES ('29', 'Aptamil 爱宝美8段婴儿配方奶�?800�?3罐装 0-6个月', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '澳洲', '../images/atm_aaborth.png', 'Aptamil 爱他美', 'm13', '425.00', '525.00', '澳爱', '2018-10-26 15:08:08');
INSERT INTO `goods` VALUES ('30', 'Aptamil 英国爱他美婴儿奶粉 1�?900�?�?3罐装 6-12个月', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Aptamil 爱他美', 'm14', '415.00', '535.00', '英爱', '2018-10-26 15:08:14');
INSERT INTO `goods` VALUES ('31', 'Aptamil 英国爱他美婴儿奶粉 2�?900�?�?3罐装 6-12个月', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Aptamil 爱他美', 'm14', '325.00', '555.00', '英爱', '2018-10-26 15:08:15');
INSERT INTO `goods` VALUES ('32', 'Aptamil 英国爱他美婴儿奶粉 3�?900�?�?3罐装 6-12个月', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Aptamil 爱他美', 'm14', '425.00', '525.00', '英爱', '2018-10-26 15:08:16');
INSERT INTO `goods` VALUES ('33', 'Aptamil 英国爱他美婴儿奶粉 4�?900�?�?3罐装 6-12个月', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Aptamil 爱他美', 'm14', '475.00', '500.00', '英爱', '2018-10-26 15:08:17');
INSERT INTO `goods` VALUES ('34', 'Aptamil 英国爱他美婴儿奶粉 5�?900�?�?3罐装 6-12个月', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Aptamil 爱他美', 'm14', '421.00', '485.00', '英爱', '2018-10-26 15:08:18');
INSERT INTO `goods` VALUES ('35', 'Aptamil 英国爱他美婴儿奶粉 6�?900�?�?3罐装 6-12个月', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Aptamil 爱他美', 'm14', '365.00', '425.00', '英爱', '2018-10-26 15:08:19');
INSERT INTO `goods` VALUES ('36', 'Aptamil 英国爱他美婴儿奶粉 7�?900�?�?3罐装 6-12个月', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Aptamil 爱他美', 'm14', '345.00', '455.00', '英爱', '2018-10-26 15:08:20');
INSERT INTO `goods` VALUES ('37', 'Aptamil 英国爱他美婴儿奶粉 8�?900�?�?3罐装 6-12个月', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Aptamil 爱他美', 'm14', '225.00', '325.00', '英爱', '2018-10-26 15:08:23');
INSERT INTO `goods` VALUES ('38', 'Nutrilon 荷兰牛栏 婴儿奶粉1�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_yaborth.png', 'Nutrilon 牛栏/诺优能', 'm21', '235.00', '335.00', '荷兰牛栏', '2018-10-26 10:37:18');
INSERT INTO `goods` VALUES ('39', 'Nutrilon 荷兰牛栏 婴儿奶粉3�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '335.00', '355.00', '荷兰牛栏', '2018-10-26 10:37:19');
INSERT INTO `goods` VALUES ('40', 'Nutrilon 荷兰牛栏 婴儿奶粉4�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '255.00', '425.00', '荷兰牛栏', '2018-10-26 10:37:19');
INSERT INTO `goods` VALUES ('41', 'Nutrilon 荷兰牛栏 婴儿奶粉6�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '345.00', '355.00', '荷兰牛栏', '2018-10-26 10:37:20');
INSERT INTO `goods` VALUES ('42', 'Nutrilon 荷兰牛栏 婴儿奶粉7�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_yaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '455.00', '555.00', '荷兰牛栏', '2018-10-26 10:37:21');
INSERT INTO `goods` VALUES ('43', 'Nutrilon 荷兰牛栏 婴儿奶粉8�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_yaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '435.00', '565.00', '荷兰牛栏', '2018-10-26 10:37:22');
INSERT INTO `goods` VALUES ('44', 'Nutrilon 荷兰牛栏 婴儿奶粉9�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_yaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '225.00', '325.00', '荷兰牛栏', '2018-10-26 10:37:23');
INSERT INTO `goods` VALUES ('45', 'Nutrilon 荷兰牛栏 婴儿奶粉10�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_yaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '455.00', '305.00', '荷兰牛栏', '2018-10-26 10:37:23');
INSERT INTO `goods` VALUES ('46', 'Nutrilon 荷兰牛栏 婴儿奶粉11�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_yaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '278.00', '325.00', '荷兰牛栏', '2018-10-26 10:37:24');
INSERT INTO `goods` VALUES ('47', 'Nutrilon 荷兰牛栏 婴儿奶粉12�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_yaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '245.00', '365.00', '荷兰牛栏', '2018-10-26 10:37:27');
INSERT INTO `goods` VALUES ('48', 'Nutrilon 荷兰牛栏 婴儿奶粉5�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '235.00', '325.00', '荷兰牛栏', '2018-10-26 10:37:29');
INSERT INTO `goods` VALUES ('49', 'Nutrilon 荷兰牛栏 婴儿奶粉13�?0-6个月 850�?�?6罐装', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'Nutrilon 荷兰牛栏', 'm21', '335.00', '375.00', '荷兰牛栏', '2018-10-26 10:37:30');
INSERT INTO `goods` VALUES ('50', 'Nutrilon 英国牛栏 婴儿奶粉1�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '325.00', '575.00', '英国牛栏', '2018-10-26 10:37:46');
INSERT INTO `goods` VALUES ('51', 'Nutrilon 英国牛栏 婴儿奶粉2�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '345.00', '555.00', '英国牛栏', '2018-10-26 10:37:48');
INSERT INTO `goods` VALUES ('52', 'Nutrilon 英国牛栏 婴儿奶粉3�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '455.00', '575.00', '英国牛栏', '2018-10-26 10:37:51');
INSERT INTO `goods` VALUES ('53', 'Nutrilon 英国牛栏 婴儿奶粉4�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '456.00', '575.00', '英国牛栏', '2018-10-26 10:37:54');
INSERT INTO `goods` VALUES ('54', 'Nutrilon 英国牛栏 婴儿奶粉5�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '235.00', '534.00', '英国牛栏', '2018-10-26 10:37:57');
INSERT INTO `goods` VALUES ('55', 'Nutrilon 英国牛栏 婴儿奶粉6�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '327.00', '525.00', '英国牛栏', '2018-10-26 10:38:11');
INSERT INTO `goods` VALUES ('56', 'Nutrilon 英国牛栏 婴儿奶粉7�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '324.00', '567.00', '英国牛栏', '2018-10-26 10:38:14');
INSERT INTO `goods` VALUES ('57', 'Nutrilon 英国牛栏 婴儿奶粉8�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '256.00', '375.00', '英国牛栏', '2018-10-26 10:38:16');
INSERT INTO `goods` VALUES ('58', 'Nutrilon 英国牛栏 婴儿奶粉9�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '435.00', '575.00', '英国牛栏', '2018-10-26 10:38:18');
INSERT INTO `goods` VALUES ('59', 'Nutrilon 英国牛栏 婴儿奶粉10�?0-6个月 850�?�?6罐装', '../images/nf_atmya01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_yaborth.png', 'Nutrilon 英国牛栏', 'm22', '538.00', '585.00', '英国牛栏', '2018-10-26 10:38:22');
INSERT INTO `goods` VALUES ('60', 'Nutrilon诺优能1段婴儿配方奶�?00�?3罐装 0-6个月', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'Nutrilon 诺贝�?', 'm23', '538.00', '595.00', '诺优能', '2018-10-26 15:08:56');
INSERT INTO `goods` VALUES ('61', 'Nutrilon诺优能2段婴儿配方奶�?00�?3罐装 0-6个月', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'Nutrilon 诺贝�?', 'm23', '238.00', '595.00', '诺优能', '2018-10-26 15:09:02');
INSERT INTO `goods` VALUES ('62', 'Nutrilon诺优能3段婴儿配方奶�?00�?3罐装 0-6个月', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'Nutrilon 诺贝�?', 'm23', '523.00', '545.00', '诺优能', '2018-10-26 15:09:07');
INSERT INTO `goods` VALUES ('63', 'Nutrilon诺优能4段婴儿配方奶�?00�?3罐装 0-6个月', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'Nutrilon 诺贝�?', 'm23', '338.00', '495.00', '诺优能', '2018-10-26 15:09:15');
INSERT INTO `goods` VALUES ('64', '行货a2白金升级�?1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'a2', 'm31', '338.00', '495.00', '行货a2', '2018-10-26 10:38:58');
INSERT INTO `goods` VALUES ('65', '行货a2白金升级�?2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'a2', 'm31', '338.00', '435.00', '行货a2', '2018-10-26 10:38:59');
INSERT INTO `goods` VALUES ('66', '行货a2白金升级�?3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'a2', 'm31', '346.00', '495.00', '行货a2', '2018-10-26 10:39:00');
INSERT INTO `goods` VALUES ('67', '行货a2白金升级�?4�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'a2', 'm31', '458.00', '495.00', '行货a2', '2018-10-26 10:39:01');
INSERT INTO `goods` VALUES ('68', '行货a2白金升级�?5�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'a2', 'm31', '288.00', '435.00', '行货a2', '2018-10-26 10:39:02');
INSERT INTO `goods` VALUES ('69', '行货a2白金升级�?6�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_borth.png', 'a2', 'm31', '347.00', '485.00', '行货a2', '2018-10-26 10:39:04');
INSERT INTO `goods` VALUES ('70', '跨境a2白金升级�?1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'a2', 'm32', '457.00', '485.00', '跨境a2', '2018-10-26 10:39:10');
INSERT INTO `goods` VALUES ('71', '跨境a2白金升级�?2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'a2', 'm32', '347.00', '485.00', '跨境a2', '2018-10-26 10:39:12');
INSERT INTO `goods` VALUES ('72', '跨境a2白金升级�?3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'a2', 'm32', '257.00', '415.00', '跨境a2', '2018-10-26 10:39:14');
INSERT INTO `goods` VALUES ('73', '跨境a2白金升级�?4�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'a2', 'm32', '456.00', '555.00', '跨境a2', '2018-10-26 10:39:15');
INSERT INTO `goods` VALUES ('74', '跨境a2白金升级�?5�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'a2', 'm32', '425.00', '435.00', '跨境a2', '2018-10-26 10:39:15');
INSERT INTO `goods` VALUES ('75', '跨境a2白金升级�?6�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '荷兰', '../images/atm_aaborth.png', 'a2', 'm32', '335.00', '435.00', '跨境a2', '2018-10-26 10:39:28');
INSERT INTO `goods` VALUES ('76', '喜宝 1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '喜宝', '../images/atm_yaborth.png', 'a2', 'm4', '425.00', '435.00', '喜宝', '2018-10-26 10:39:34');
INSERT INTO `goods` VALUES ('77', '喜宝 2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '喜宝', '../images/atm_yaborth.png', 'a2', 'm4', '435.00', '435.00', '喜宝', '2018-10-26 10:39:35');
INSERT INTO `goods` VALUES ('78', '喜宝 3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '喜宝', '../images/atm_yaborth.png', 'a2', 'm4', '325.00', '455.00', '喜宝', '2018-10-26 10:39:36');
INSERT INTO `goods` VALUES ('79', '喜宝 4�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '喜宝', '../images/atm_yaborth.png', 'a2', 'm4', '245.00', '435.00', '喜宝', '2018-10-26 10:39:36');
INSERT INTO `goods` VALUES ('80', '喜宝 5�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '喜宝', '../images/atm_yaborth.png', 'a2', 'm4', '258.00', '335.00', '喜宝', '2018-10-26 10:39:37');
INSERT INTO `goods` VALUES ('81', '喜宝 6�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '喜宝', '../images/atm_yaborth.png', 'a2', 'm4', '255.00', '335.00', '喜宝', '2018-10-26 10:39:38');
INSERT INTO `goods` VALUES ('82', '喜宝 7�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '喜宝', '../images/atm_yaborth.png', 'a2', 'm4', '565.00', '575.00', '喜宝', '2018-10-26 10:39:39');
INSERT INTO `goods` VALUES ('83', '喜宝 8�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '喜宝', '../images/atm_yaborth.png', 'a2', 'm4', '435.00', '435.00', '喜宝', '2018-10-26 10:39:41');
INSERT INTO `goods` VALUES ('84', '贝拉米1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '贝拉�?', '../images/atm_yaborth.png', '贝拉�?', 'm5', '425.00', '435.00', '贝拉米', '2018-10-26 15:09:43');
INSERT INTO `goods` VALUES ('85', '贝拉米2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '贝拉�?', '../images/atm_yaborth.png', '贝拉�?', 'm5', '455.00', '475.00', '贝拉米', '2018-10-26 15:09:45');
INSERT INTO `goods` VALUES ('86', '贝拉米3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '贝拉�?', '../images/atm_yaborth.png', '贝拉�?', 'm5', '325.00', '405.00', '贝拉米', '2018-10-26 15:09:46');
INSERT INTO `goods` VALUES ('87', '贝拉米4�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '贝拉�?', '../images/atm_yaborth.png', '贝拉�?', 'm5', '415.00', '435.00', '贝拉米', '2018-10-26 15:09:47');
INSERT INTO `goods` VALUES ('88', '贝拉米5�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '贝拉�?', '../images/atm_yaborth.png', '贝拉�?', 'm5', '467.00', '495.00', '贝拉米', '2018-10-26 15:09:48');
INSERT INTO `goods` VALUES ('89', '贝拉米6�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '贝拉�?', '../images/atm_yaborth.png', '贝拉�?', 'm5', '255.00', '465.00', '贝拉米', '2018-10-26 15:09:49');
INSERT INTO `goods` VALUES ('90', '贝拉米7�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '贝拉�?', '../images/atm_yaborth.png', '贝拉�?', 'm5', '345.00', '375.00', '贝拉米', '2018-10-26 15:09:50');
INSERT INTO `goods` VALUES ('91', '贝拉米8�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '贝拉�?', '../images/atm_yaborth.png', '贝拉�?', 'm5', '355.00', '435.00', '贝拉米', '2018-10-26 15:09:57');
INSERT INTO `goods` VALUES ('92', '可瑞康1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '可瑞�?', '../images/atm_aaborth.png', '可瑞�?', 'm6', '425.00', '435.00', '可瑞康', '2018-10-26 15:10:24');
INSERT INTO `goods` VALUES ('93', '可瑞康2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '可瑞�?', '../images/atm_aaborth.png', '可瑞�?', 'm6', '445.00', '455.00', '可瑞康', '2018-10-26 15:10:31');
INSERT INTO `goods` VALUES ('94', '可瑞康3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atmaa01.jpg', '贴合宝宝天生营养所需', '可瑞�?', '../images/atm_aaborth.png', '可瑞�?', 'm6', '375.00', '435.00', '可瑞康', '2018-10-26 15:10:38');
INSERT INTO `goods` VALUES ('95', '美素佳儿行货�?1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_borth.png', '美素佳儿', 'm71', '425.00', '435.00', '美素佳儿行货版', '2018-10-26 10:40:13');
INSERT INTO `goods` VALUES ('96', '美素佳儿行货�?2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_borth.png', '美素佳儿', 'm71', '424.00', '465.00', '美素佳儿行货版', '2018-10-26 10:40:16');
INSERT INTO `goods` VALUES ('97', '美素佳儿行货�?3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_borth.png', '美素佳儿', 'm71', '525.00', '565.00', '美素佳儿行货版', '2018-10-26 10:40:21');
INSERT INTO `goods` VALUES ('98', '美素佳儿行货�?4�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_borth.png', '美素佳儿', 'm71', '456.00', '467.00', '美素佳儿行货版', '2018-10-26 10:40:24');
INSERT INTO `goods` VALUES ('99', '美素佳儿跨境�?1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_borth.png', '美素佳儿', 'm72', '425.00', '435.00', '美素佳儿跨境版', '2018-10-26 10:40:27');
INSERT INTO `goods` VALUES ('100', '美素佳儿跨境�?2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_borth.png', '美素佳儿', 'm72', '345.00', '445.00', '美素佳儿跨境版', '2018-10-26 10:40:31');
INSERT INTO `goods` VALUES ('101', '美素佳儿跨境�?3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_borth.png', '美素佳儿', 'm72', '335.00', '475.00', '美素佳儿跨境版', '2018-10-26 10:40:34');
INSERT INTO `goods` VALUES ('102', '美素佳儿跨境�?4�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm01.jpg', '贴合宝宝天生营养所需', '英国', '../images/atm_borth.png', '美素佳儿', 'm72', '445.00', '455.00', '美素佳儿跨境版', '2018-10-26 10:41:26');
INSERT INTO `goods` VALUES ('103', '雀巢健康1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', '雀�?', 'm81', '425.00', '435.00', '雀巢健康', '2018-10-26 15:11:55');
INSERT INTO `goods` VALUES ('104', '雀巢健康2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', '雀�?', 'm81', '234.00', '455.00', '雀巢健康', '2018-10-26 15:11:57');
INSERT INTO `goods` VALUES ('105', '雀巢健康3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', '雀�?', 'm81', '565.00', '655.00', '雀巢健康', '2018-10-26 15:11:59');
INSERT INTO `goods` VALUES ('106', '雀巢健康4�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', '雀�?', 'm81', '415.00', '426.00', '雀巢健康', '2018-10-26 15:12:00');
INSERT INTO `goods` VALUES ('107', '雀巢健康5�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', '雀�?', 'm81', '478.00', '497.00', '雀巢健康', '2018-10-26 15:12:01');
INSERT INTO `goods` VALUES ('108', '雀巢健康6�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm03.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_borth.png', '雀�?', 'm81', '285.00', '395.00', '雀巢健康', '2018-10-26 15:12:06');
INSERT INTO `goods` VALUES ('109', '雀巢跨境版 1�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_aaborth.png', '雀�?', 'm82', '426.00', '439.00', '雀巢跨境版', '2018-10-26 10:41:54');
INSERT INTO `goods` VALUES ('110', '雀巢跨境版 2�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_aaborth.png', '雀�?', 'm82', '456.00', '488.00', '雀巢跨境版', '2018-10-26 10:41:55');
INSERT INTO `goods` VALUES ('111', '雀巢跨境版 3�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_aaborth.png', '雀�?', 'm82', '531.00', '562.00', '雀巢跨境版', '2018-10-26 10:41:55');
INSERT INTO `goods` VALUES ('112', '雀巢跨境版 4�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_aaborth.png', '雀�?', 'm82', '266.00', '379.00', '雀巢跨境版', '2018-10-26 10:41:56');
INSERT INTO `goods` VALUES ('113', '雀巢跨境版 5�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_aaborth.png', '雀�?', 'm82', '489.00', '531.00', '雀巢跨境版', '2018-10-26 10:41:57');
INSERT INTO `goods` VALUES ('114', '雀巢跨境版 6�?~6个月 900�?6罐（新西兰原装）', '../images/nf_atm04.jpg', '贴合宝宝天生营养所需', '德国', '../images/atm_aaborth.png', '雀�?', 'm82', '558.00', '639.00', '雀巢跨境版', '2018-10-26 10:42:04');

-- ----------------------------
-- Table structure for shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcar`;
CREATE TABLE `shoppingcar` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `goodsid` int(11) NOT NULL,
  `goodsname` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `newprice` decimal(10,2) NOT NULL,
  `oldprice` decimal(10,2) NOT NULL,
  `num` int(50) NOT NULL,
  `total` decimal(50,2) NOT NULL,
  `point` varchar(255) NOT NULL,
  `timer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`,`uname`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcar
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timer` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '15270274681', '123456', '2018-10-24 20:31:28');
INSERT INTO `user` VALUES ('2', '123', '123', '2018-10-26 20:27:32');
INSERT INTO `user` VALUES ('3', '12', '12', '2018-10-26 20:40:58');
SET FOREIGN_KEY_CHECKS=1;
