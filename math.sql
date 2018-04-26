/*
Navicat MySQL Data Transfer

Source Server         : weixinxiaochengxu
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : math

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-24 22:04:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `aimg` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `b` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `bimg` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `c` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `cimg` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `d` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `dimg` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `e` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `eimg` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `f` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `fimg` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `solution` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `questionid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `questionidkey` (`questionid`),
  CONSTRAINT `questionidkey` FOREIGN KEY (`questionid`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('2', '-8', '', '-4', '', '-2', '', '8', '', '', '', '', '', 'b', '2');
INSERT INTO `answer` VALUES ('3', 'y＝1', '', 'y＝-1', '', 'y＝0', '', '方程无解', '', '', '', '', '', 'c', '3');
INSERT INTO `answer` VALUES ('4', '-8', '', '0', '', '2', '', '8', '', '', '', '', '', 'd', '4');
INSERT INTO `answer` VALUES ('6', '1', '', '2', '', '3', '', '4', '', '', '', '', '', 'c', '6');
INSERT INTO `answer` VALUES ('8', '3x＋2－2x＋1', '', '3x＋2－4x＋1', '', '3x＋2－4x－2 ', '', '3x＋2－4x＋2', '', '', '', '', '', 'a', '8');
INSERT INTO `answer` VALUES ('9', '3(x+1)＝1-5(2x-1)', '', '3x+3＝15-10x-5', '', '3(x+1)＝15-5(2x-1)  ', '', '3x+1＝15-10x+5', '', '', '', '', '', 'a', '9');
INSERT INTO `answer` VALUES ('11', '不赔不赚', '', '赚了10元', '', '赔了10元', '', '赚了50元', '', '', '', '', '', 'd', '11');
INSERT INTO `answer` VALUES ('12', '4', '', '5', '', '6', '', '7', '', '', '', '', '', 'c', '12');
INSERT INTO `answer` VALUES ('13', '18元 ', '', '18.4元', '', '19.6元 ', '', '20元', '', '', '', '', '', 'd', '13');
INSERT INTO `answer` VALUES ('14', '50秒', '', '40秒', '', '45秒', '', '55秒', '', '', '', '', '', 'a', '14');
INSERT INTO `answer` VALUES ('17', '3x-1-2 x-3=5-x ', '', '3x-1-2x+3=5-x', '', '3x-3-2x-6=5-5x', '', '3x-3-2x+6=5-5x', '', '', '', '', '', 'c', '17');
INSERT INTO `answer` VALUES ('19', '①④', '', '①②③', '', '③④', '', '①②④', '', '', '', '', '', 'd', '19');
INSERT INTO `answer` VALUES ('20', '18x+2(2x-1)=18-3(x+1)', '', '3x+(2x-1)=3-(x+1)', '', '18x+(2x-1)=18-(x+1)', '', '3x+2(2x-1)=3-3(x+1)', '', '', '', '', '', 'a', '20');
INSERT INTO `answer` VALUES ('22', '7', '', '5', '', '2', '', '-2', '', '', '', '', '', 'a', '22');
INSERT INTO `answer` VALUES ('24', '3', '', '2', '', '-2', '', '5', '', '', '', '', '', 'd', '24');
INSERT INTO `answer` VALUES ('25', 'x-1-x=-1', '', '4x-1-x=-4', '', '4x-1+x=-4', '', '4x-1+x=-1', '', '', '', '', '', 'd', '25');
INSERT INTO `answer` VALUES ('27', '5', '', '-5', '', '7', '', '-7', '', '', '', '', '', 'c', '27');
INSERT INTO `answer` VALUES ('28', '7', '', '5', '', '2', '', '-2', '', '', '', '', '', 'd', '28');
INSERT INTO `answer` VALUES ('29', '3x－3', '', 'x－1', '', '3x－1', '', 'x－3', '', '', '', '', '', 'd', '29');
INSERT INTO `answer` VALUES ('30', '-7', '', '3', '', '1', '', '2', '', '', '', '', '', 'c', '30');
INSERT INTO `answer` VALUES ('33', 'x－5', '', 'x－1', '', '7x－1', '', '5－7x', '', '', '', '', '', 'd', '33');
INSERT INTO `answer` VALUES ('35', 'a＋(－2b＋3c)', '', 'a＋(－2b)－3 c', '', 'a ＋(2b＋3c)', '', 'a＋[－(2b＋3c) ]', '', '', '', '', '', 'd', '35');
INSERT INTO `answer` VALUES ('36', '加法交换律', '', '加法结合律', '', '等式性质1 ', '', '等式性质2 ', '', '', '', '', '', 'c', '36');
INSERT INTO `answer` VALUES ('37', '  2x+6-5+5x=3x-3', '', '2x+3-5+x=3x-3', '', '2x+6-5-5x=3x-3', '', '2x+3-5+x=3x-1', '', '', '', '', '', 'd', '37');
INSERT INTO `answer` VALUES ('38', '3(3x-7)-2+2x=6', '', '3x-7-(1+x）=1', '', '3(3x-7)-2(1-x)=1', '', '3(3x-7)-2(1+x)=6', '', '', '', '', '', 'd', '38');
INSERT INTO `answer` VALUES ('42', '1', '', '-1', '', '9', '', '-9', '', '', '', '', '', 'b', '42');
INSERT INTO `answer` VALUES ('44', 'a与1的和的3倍[', '', '甲数的2倍与乙数的3倍的和', '', 'a与b差的20%', '', '一个数的3倍是5', '', '', '', '', '', 'b', '44');
INSERT INTO `answer` VALUES ('46', '30x＋50（700－x） ＝29 000', '', '50x＋30（700－x） ＝29 000', '', '30x＋50（700＋x） ＝29 000', '', '50x＋30（700＋x） ＝29 000', '', '', '', '', '', 'b', '46');
INSERT INTO `answer` VALUES ('47', 'x＝－2', '', 'x＝－6', '', 'x＝2', '', 'x＝－12', '', '', '', '', '', 'd', '47');
INSERT INTO `answer` VALUES ('51', '5个', '', '4个', '', '3个', '', '2个', '', '', '', '', '', 'c', '51');
INSERT INTO `answer` VALUES ('52', '2x＝3y', '', '3x＝2y', '', 'x＝6y', '', 'xy＝6', '', '', '', '', '', 'd', '52');
INSERT INTO `answer` VALUES ('53', '2个', '', '3个', '', '4个', '', '5个', '', '', '', '', '', 'b', '53');
INSERT INTO `answer` VALUES ('55', '0', '', '2', '', '-2', '', '-6', '', '', '', '', '', 'a', '55');
INSERT INTO `answer` VALUES ('56', '由13－ x＝－5，得到13－5＝x', '', '由－7x＋3＝－13x－2，得到 13x＋7x＝－3－2', '', '由2x＋3＝ 3x＋4，得到2x－4＝3x－3', '', '－5x－7＝2x－11，得到11－7＝ 2x－5x', '', '', '', '', '', 'd', '56');
INSERT INTO `answer` VALUES ('58', '8x－4－2－10x＝2', '', '8x－4＋2－20x＝2', '', '8x＋4＋2－20x＝2', '', '8x－4＋2－20x＝0', '', '', '', '', '', 'd', '58');
INSERT INTO `answer` VALUES ('59', '-9', '', '1', '', '-5', '', '3', '', '', '', '', '', 'a', '59');
INSERT INTO `answer` VALUES ('61', '3（3x＋2 ）－5x＋ 1＝12－6（2x－1）', '', '3（3x＋2）－5x－1＝1－6（2x－1）', '', '3（3x＋2）－（5x＋1） ＝12－6（2x－1）', '', '（3x＋2）－5x＋1＝ 12－（2x－1）', '', '', '', '', '', 'd', '61');
INSERT INTO `answer` VALUES ('63', '分母的最小公倍数找错了', '', '漏乘了不含分母的项[来', '', '分子中的多项式没有添括号，符号不对', '', '无错误', '', '', '', '', '', 'c', '63');
INSERT INTO `answer` VALUES ('64', '1个', '', '2个', '', '3个', '', '4个', '', '', '', '', '', 'd', '64');
INSERT INTO `answer` VALUES ('68', '不亏不赚', '', '亏了4元', '', '赚了6元', '', '亏了24元', '', '', '', '', '', 'b', '68');
INSERT INTO `answer` VALUES ('69', 'x＋3×4.25%x＝33 825', '', 'x＋4.25%x＝33 825', '', '3×4.25%x＝33 825', '', '3（x＋4.25%x）＝33 825', '', '', '', '', '', 'd', '69');
INSERT INTO `answer` VALUES ('72', '赚了5元', '', '亏了25元', '', '赚了25元', '', '亏了5元', '', '', '', '', '', 'b', '72');
INSERT INTO `answer` VALUES ('73', '2', '', '3', '', '4', '', '5', '', '', '', '', '', 'a', '73');
INSERT INTO `answer` VALUES ('75', '27', '', '51', '', '69', '', '72', '', '', '', '', '', 'd', '75');
INSERT INTO `answer` VALUES ('93', '-2.5', '', '2.5', '', '5', '', '7', '', '', '', '', '', 'b', '1');
INSERT INTO `answer` VALUES ('94', '由x + 7= 5得x+7－7 = 5－7', '', '由3x－2 =2x + 1得x= 3', '', '由4－3x = 4x－3得4+3 = 4 x+3x', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221455041-5-d.png', '', '', '', '', 'd', '5');
INSERT INTO `answer` VALUES ('95', '3a﹣5=2b', '', '3a+1=2b+6', '', '3ac=2bc+5', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221455481-7-d.png', '', '', '', '', 'd', '7');
INSERT INTO `answer` VALUES ('96', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221456411-10-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221456441-10-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221456471-10-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221456501-10-d.png', '', '', '', '', 'd', '10');
INSERT INTO `answer` VALUES ('97', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221459431-15-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221459451-15-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221459501-15-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221459541-15-d.png', '', '', '', '', 'c', '15');
INSERT INTO `answer` VALUES ('98', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221500141-16-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221500191-16-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221500231-16-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221500261-16-d.png', '', '', '', '', 'b', '16');
INSERT INTO `answer` VALUES ('99', '由2x+4=3x+1,得2x+3x=1+4', '', '由x+4=3x+1,得2x+x=1+4', '', '由2x+3=x+1,得2x+5x=1+4', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221502081-18-d.png', '', '', '', '', 'c', '18');
INSERT INTO `answer` VALUES ('100', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221503081-21-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221503111-21-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221503151-21-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221503181-21-d.png', '', '', '', '', 'a', '21');
INSERT INTO `answer` VALUES ('101', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221508301-23-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221508411-23-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221508431-23-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221508451-23-d.png', '', '', '', '', 'b', '23');
INSERT INTO `answer` VALUES ('102', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221511181-26-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221511201-26-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221511221-26-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221511241-26-d.png', '', '', '', '', 'c', '26');
INSERT INTO `answer` VALUES ('103', '5x＋4＝0，则5x＝－4', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221517451-31-b.png', '3x－(2－4x) ＝5，则3x＋4x－2＝5', '', '5x＝2 ＋1，则5x＝3', '', '', '', '', '', 'd', '31');
INSERT INTO `answer` VALUES ('104', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221519161-32-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221519181-32-b.png', 'm＝－4', '', 'm＝4', '', '', '', '', '', 'b', '32');
INSERT INTO `answer` VALUES ('105', '(1)', '', '(2)', '', '(3)', '', '(4)', '', '', '', '', '', 'c', '34');
INSERT INTO `answer` VALUES ('106', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221531231-39-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221531251-39-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221531281-39-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221531301-39-d.png', '', '', '', '', 'c', '39');
INSERT INTO `answer` VALUES ('107', '(1)', '', '(2)', '', '(3)', '', '(4)', '', '', '', '', '', 'd', '40');
INSERT INTO `answer` VALUES ('108', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221539281-41-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221539301-41-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221539321-41-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221539341-41-d.png', '', '', '', '', 'c', '41');
INSERT INTO `answer` VALUES ('109', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221546311-43-a.png', '80x＋250（15－x）＝2900', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221546341-43-c.png', '120x＋25（15－x）＝2900', '', '', '', '', '', 'c', '43');
INSERT INTO `answer` VALUES ('110', '6x－2＝5x', '', '3x＋2＝2x－4', '', '3（x －2）＝－2', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221547571-45-d.png', '', '', '', '', 'd', '45');
INSERT INTO `answer` VALUES ('111', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221551371-48-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221551401-48-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221551421-48-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221551461-48-d.png', '', '', '', '', 'd', '48');
INSERT INTO `answer` VALUES ('112', '9 : 2', '', '9 : 4', '', '4 : 9', '', '2 : 9', '', '', '', '', '', 'c', '49');
INSERT INTO `answer` VALUES ('113', '若2x－3＝7，那么2x＝7－3', '', '若3x－2＝x＋1，则3x＋x＝1＋2', '', '若－2x＝5，那么x＝5＋2', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221554031-50-d.png', '', '', '', '', 'd', '50');
INSERT INTO `answer` VALUES ('114', '由3x－2x＝4，合并同类项，得x＝4', '', '由2x－3x＝3，合并同类项，得－x＝3', '', '由5x－2x＋3x＝12．合并同类项，得x＝－2', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221607481-54-d.png', '', '', '', '', 'd', '54');
INSERT INTO `answer` VALUES ('115', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221610411-57-a.png', '由2x－3＝x，得2x－x－3', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221610441-57-c.png', '由2x＝－1，得2x－1＝－1－1', '', '', '', '', '', 'c', '57');
INSERT INTO `answer` VALUES ('116', '2', '', '-2', '', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221614431-60-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221614461-60-d.png', '', '', '', '', 'd', '60');
INSERT INTO `answer` VALUES ('117', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221618431-62-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221618461-62-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221618481-62-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221618511-62-d.png', '', '', '', '', 'd', '62');
INSERT INTO `answer` VALUES ('118', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221622221-65-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221622241-65-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221622261-65-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221622291-65-d.png', '', '', '', '', 'd', '65');
INSERT INTO `answer` VALUES ('119', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221624131-66-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221624161-66-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221624181-66-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221624201-66-d.png', '', '', '', '', 'c', '66');
INSERT INTO `answer` VALUES ('120', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221626301-67-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221626321-67-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221626351-67-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221626381-67-d.png', '', '', '', '', 'c', '67');
INSERT INTO `answer` VALUES ('121', '3（272+x）=196-x', '', '272-x=3（196-x）', '', '272+3x=3（196-x）', '', '272+x=3（196-x）', '', '', '', '', '', 'c', '70');
INSERT INTO `answer` VALUES ('122', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221631471-71-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221631501-71-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221631531-71-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221631561-71-d.png', '', '', '', '', 'd', '71');
INSERT INTO `answer` VALUES ('123', '1 小时', '', '1.1小时', '', '1.2小时', '', '1.3小时', '', '', '', '', '', 'b', '74');
INSERT INTO `answer` VALUES ('124', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221640071-76-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221640091-76-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221640121-76-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221640141-76-d.png', '', '', '', '', 'a', '76');
INSERT INTO `answer` VALUES ('125', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221642311-77-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221642331-77-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221642351-77-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221642371-77-d.png', '', '', '', '', 'c', '77');
INSERT INTO `answer` VALUES ('126', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221645091-78-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221645111-78-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221645131-78-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221645151-78-d.png', '', '', '', '', 'a', '78');
INSERT INTO `answer` VALUES ('127', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221648571-79-a.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221649001-79-b.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221649021-79-c.png', '', 'https://www.tengfeistudio.cn/showImg?url=img/201804221649041-79-d.png', '', '', '', '', 'd', '79');
INSERT INTO `answer` VALUES ('128', '方程是等式', '', '等式是方程', '', '含有字母的等式是方程', '', '不含字母的方程是等式', '', '', '', '', '', 'a', '80');

-- ----------------------------
-- Table structure for parent
-- ----------------------------
DROP TABLE IF EXISTS `parent`;
CREATE TABLE `parent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parent
-- ----------------------------
INSERT INTO `parent` VALUES ('1', '谢家长', '123456');
INSERT INTO `parent` VALUES ('2', '骆家长', '123456');
INSERT INTO `parent` VALUES ('3', '杨家长', '123456');
INSERT INTO `parent` VALUES ('4', '林家长', '123456');
INSERT INTO `parent` VALUES ('5', '赵家长', '123456');
INSERT INTO `parent` VALUES ('6', '李家长', '123456');
INSERT INTO `parent` VALUES ('7', '彭家长', '123456');
INSERT INTO `parent` VALUES ('8', '张家长', '123456');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `describes` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `describesimg` varchar(255) CHARACTER SET utf8 DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '某书中一道方程题： ，□处在印刷时被墨盖住了，查书后面的答案，得知这个方程的解是 ，那么□处应该是数字( )．某书中一道方程题： ，□处在印刷时被墨盖住了，查书后面的答案，得知这个方程的解是 ，那么□处应该是数字(    )．', 'https://www.tengfeistudio.cn/showImg?url=img/201804221427161.png');
INSERT INTO `question` VALUES ('2', '当x=2时，代数式ax－2x的值为4，当x=－2时，这个代数 式的值为（    ）', '');
INSERT INTO `question` VALUES ('3', '已知 是方程 的解，那么关 于y的方程 的解是(    )．', 'https://www.tengfeistudio.cn/showImg?url=img/201804221454041-3.png');
INSERT INTO `question` VALUES ('4', '方程2x+a﹣4=0的解是x=﹣2，则a等于（　　）', '');
INSERT INTO `question` VALUES ('5', '下列变形错误的是(      )', '');
INSERT INTO `question` VALUES ('6', '由3x＝2x＋1变为3x－2x＝1，是方程两边同时加上      .', '');
INSERT INTO `question` VALUES ('7', '已知等式3a=2b+5，则下列等式中不一定成立的是（　　）', '');
INSERT INTO `question` VALUES ('8', '将(3x＋2)－2(2x－1)去括号正确的是(        )', '');
INSERT INTO `question` VALUES ('9', '解方程 时，去分母正确的是(    )．', 'https://www.tengfeistudio.cn/showImg?url=img/201804221456181-9.png');
INSERT INTO `question` VALUES ('10', '已知 ，则 等于（    ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221456261-10.png');
INSERT INTO `question` VALUES ('11', '某商店有两个进价不同的计算器都卖了80元，其中一个赢利60%，另一个亏本20%，在这次买卖中，这家商店（　　）', '');
INSERT INTO `question` VALUES ('12', '某球队参加比赛，开局11场保持不败，积23分，按比赛规则，胜一场得3分，平一场得1分，则该队获胜的场数为(    )．', '');
INSERT INTO `question` VALUES ('13', '某超市选用每千克28元的甲种糖3千克，每千克20元的乙种糖2千克，每千克12元的丙种糖5千克混合成杂拌糖后出售，在总销售额不变的情况下，这种杂拌糖平均每 千克售价应是(    )．', '');
INSERT INTO `question` VALUES ('14', '一列火车长100米，以每秒20米的速度通过800米长的隧道，从火车进入隧道起，至火车完全通过所用的时间为(    )．', '');
INSERT INTO `question` VALUES ('15', '一架飞机在两城间飞行，顺风要5.5小时， 逆风要6小时，风速为24千米/时，求两城距 离x的方程是（　　）', '');
INSERT INTO `question` VALUES ('16', '小明从家里骑自行车到学校，每小时骑15km，可早到10分钟，每小时骑12km就会迟到5分钟．问他家到学校的路程是多少km？设他家到学校的路程是xkm，则据题意列出的方程是（　　）', '');
INSERT INTO `question` VALUES ('17', '将方程3(x-1)-2(x-3)=5(1-x)去括号得(    )', '');
INSERT INTO `question` VALUES ('18', '下列解方程步骤正确的是(   )', '');
INSERT INTO `question` VALUES ('19', '下列方程中变形正确的是(　　)', 'https://www.tengfeistudio.cn/showImg?url=img/201804221502261-19.png');
INSERT INTO `question` VALUES ('20', '把方程 去分母正确的是(    )  ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221502431-20.png');
INSERT INTO `question` VALUES ('21', '若方程3(2x-1)=2-3x 的解与关于 x的方程 6-2k=2(x+3)的解相同，则 k的值为(    )', '');
INSERT INTO `question` VALUES ('22', '某书上有一道解方程的题： ， 处在      印刷时被油墨盖住了，查后面的答案知这个方程的      解是x=-2，那么 处应该是数字(      ).', 'https://www.tengfeistudio.cn/showImg?url=img/201804221504471-22.png');
INSERT INTO `question` VALUES ('23', '已知 有最大值，则方程5m-4=3x+2的解     是x=(   )  ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221507521-23.png');
INSERT INTO `question` VALUES ('24', '已知x=-3是方程k(x+4)-2k-x=5的解，则k的值是(　　)', '');
INSERT INTO `question` VALUES ('25', '方程 去分母正确的是(    ). ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221509411-25.png');
INSERT INTO `question` VALUES ('26', '代数式5x-7与4x＋9的值互为相反数，则x的值等于(     )', '');
INSERT INTO `question` VALUES ('27', '方程 -  = 5的解是(    )', 'https://www.tengfeistudio.cn/showImg?url=img/201804221512311-27.png');
INSERT INTO `question` VALUES ('28', '某书上有一道解方程的题： ， 处在            印刷时被油墨盖住了，查后面的答案知这个方程的解             是 ，那么 处应该是数字(      ).   ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221515231-28.png');
INSERT INTO `question` VALUES ('29', '化简(x－1)－(1－x)＋(x＋1)的结果等于（    ）', '');
INSERT INTO `question` VALUES ('30', '当m＝1时，－2m2－[－4m2＋(－m)2]等于（     ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221516151-30.png');
INSERT INTO `question` VALUES ('31', '下列四组变形中，属于去括号 的是（      ）', '');
INSERT INTO `question` VALUES ('32', '将方程(3＋m－1)x＝6－(2m＋3)中，x＝2时，m的值是（     ）', '');
INSERT INTO `question` VALUES ('33', '当x＞3时，化简 为|3-4x|-|2-3x|为(   )', '');
INSERT INTO `question` VALUES ('34', '解方程：4 (x－1)－x＝2(x＋ )，步骤如下：                         (1) 去括号，得4x－4－x＝2x＋1                            (2)移项，得4x－x＋2x＝1＋4   (3)合并，得3x＝5    (4)系数化1，得x＝                            经检验知x＝ 不是原方程的解，证明解题的四个', 'https://www.tengfeistudio.cn/showImg?url=img/201804221526221-34.png');
INSERT INTO `question` VALUES ('35', '不改变式子a－(2b－3c)的值，把它括号前面的符号变成相反的符号应为    (    )', '');
INSERT INTO `question` VALUES ('36', '解方程时，移项法则的依据是（    ）', '');
INSERT INTO `question` VALUES ('37', '解方程 ，2(x+3)-5(1-x)=3(x-1)去括号正确的是（    ）.', '');
INSERT INTO `question` VALUES ('38', '解方程 的步骤中，去分母一项正确的是（    ）.', 'https://www.tengfeistudio.cn/showImg?url=img/201804221528551-38.png');
INSERT INTO `question` VALUES ('39', '若 的值比 的值小1，则 的值为（  ）.  ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221531131-39.png');
INSERT INTO `question` VALUES ('40', '解方程 步骤下： ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221537301-40.png');
INSERT INTO `question` VALUES ('41', '某项工作由甲单独做3小时完成，由乙独做4小时完成，乙独做了1小时后，甲乙合做完成剩下的工作，这项工作共用（    ）小时完成.', '');
INSERT INTO `question` VALUES ('42', '已知关于x的方程2x－a－5＝0的解是x＝－2，则a的值为（    ）', '');
INSERT INTO `question` VALUES ('43', '张昆早晨去学校共用时15分钟，他跑了一段，走了一段，他跑步的平均速度是250米／分钟，步行的平均速度是80米／分钟．他家离学校的距离是2 900米，如果他跑步的时间为x分钟，则列出的方程是（    ）', '');
INSERT INTO `question` VALUES ('44', '根据下列条件可列出一元一次方程的是（    ）', '');
INSERT INTO `question` VALUES ('45', '以－2为解的方程是（    ）', '');
INSERT INTO `question` VALUES ('46', '某动物园的门票售价：成人票每张50元，儿童票每张30元．某日动物园售出门票700张，共收入29 000元，设儿童票售出z张，依题意可列出的一元一次方程是（    ）', '');
INSERT INTO `question` VALUES ('47', '方程3x＝－6的解是（    ）', '');
INSERT INTO `question` VALUES ('48', '下列是等式 的变形，其中根据                    等式的性质2变形的是（    ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221551251-48.png');
INSERT INTO `question` VALUES ('49', '若 2y－9x＝0，其中y≠0，则x：y等于（    ）', '');
INSERT INTO `question` VALUES ('50', '下列变形符合等式 性质的是（    ）', '');
INSERT INTO `question` VALUES ('51', '下列等式变 形中，正确的有（    ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221559561-51.png');
INSERT INTO `question` VALUES ('52', '已知 ，那么下列式子中一定成立的是（    ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221601111-52.png');
INSERT INTO `question` VALUES ('53', '设“●，■，▲”分别表示三种不同的物体，如图            所示，前两架天平保持平衡，如果要使第三架                天平也平衡，那么在右盘处应放“■”的个数为（ ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221605381-53.png');
INSERT INTO `question` VALUES ('54', '下列各方程合并同类项不正确的是（    ）', '');
INSERT INTO `question` VALUES ('55', '如果x＝m，是方程 的解，那么m的值是（）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221608551-55.png');
INSERT INTO `question` VALUES ('56', '下列移项正确的是（    ）', '');
INSERT INTO `question` VALUES ('57', '下列方程的变形是移项的是（    ）', '');
INSERT INTO `question` VALUES ('58', '方程4（2x－1）－2（－1＋10x）＝2去括 号后为（    ）', '');
INSERT INTO `question` VALUES ('59', '若代数式4x－7与代数式 的值相等，         则x的值是（    ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221611521-59.png');
INSERT INTO `question` VALUES ('60', '对于有理数a，b，c， d规定一种新运算：', 'https://www.tengfeistudio.cn/showImg?url=img/201804221614241-60.png');
INSERT INTO `question` VALUES ('61', '解方程 ，去分母正确的 ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221615591-61.png');
INSERT INTO `question` VALUES ('62', ' 与 互为倒数，则x的 值为（    ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221618301-62.png');
INSERT INTO `question` VALUES ('63', '将方程 ，去分母，得 ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221619531-63.png');
INSERT INTO `question` VALUES ('64', '如果甲、乙、丙三村合修一条公路，计划出工84人', 'https://www.tengfeistudio.cn/showImg?url=img/64.jpg');
INSERT INTO `question` VALUES ('65', '解方程 ，下列变形中，较简捷的是（ ）', 'https://www.tengfeistudio.cn/showImg?url=img/201804221622081-65.png');
INSERT INTO `question` VALUES ('66', '一件工作，甲单独做20小时完成，乙单独做12小时完成，现由甲单独做4小时，剩下的工作甲、 乙合做，还要几小时完成？若设剩下部分要z小时完成，下列方程正确的是（    ）', '');
INSERT INTO `question` VALUES ('67', '我国古代名著《九章算术》中有一题“今有凫起南海，七日至北海；雁起北海，九日至南海．今凫 雁俱起，问何日相逢？”（凫：野鸭）设野鸭与大雁从北海和南海同时起飞，经过x天相遇，可列方程为（    ）', '');
INSERT INTO `question` VALUES ('68', '某商店将一件商品的进价提高20%后作为售价，后因该商品积压，商店进行促销活动，降价20%以96元出售，此时该 商店卖出这件商品的盈亏情况是（    ）', '');
INSERT INTO `question` VALUES ('69', '王先生到银行存入一笔三年期的定期存款，年利率是4.25%，若到期后取出得到本息和（本金＋利息）33 825元．设王先生存入的本 金为x元，则下面所 列方程正确的是（     ）', '');
INSERT INTO `question` VALUES ('70', '在甲处工作的有272人，在乙处工作的有196人，如果要使乙处工作的人数是甲处工作人数的1/3 ，应从乙处调多少人到甲处？若设应从乙处调x人到甲处，则下列方程中正确的是（    ）', '');
INSERT INTO `question` VALUES ('71', '下列方程变形中，正确的是（    ）', '');
INSERT INTO `question` VALUES ('72', '文具店的老板均以60元的价格卖了两个计算器，其中一个赚了20%，另一个亏了20%，则该老板（    ）', '');
INSERT INTO `question` VALUES ('73', '一项工作，由一人做需要10周完成，现由一部分人先做2周，再增加4人和他们一起做，一周后完成这项工作．假设这些人的工作效率相同，那么先工作的人数为（    ）', '');
INSERT INTO `question` VALUES ('74', '钟表的时针与分针在运行过程中每隔一定时间就相遇一次，相遇间隔时间大概是（    ）', '');
INSERT INTO `question` VALUES ('75', '在如图的2017年11月份的月历表中，任意框 出表中竖列上三个相邻的数，这三个数的和 不可能是（　　）         ', 'https://www.tengfeistudio.cn/showImg?url=img/201804221636181-75.png');
INSERT INTO `question` VALUES ('76', '整理一批数据，由一个人做要56小时完成．现在计划由x人先做5小时，再增加2人和他们一起做7小时，完成这项工作，假设这些人的工作效率相同，则得（　　）', '');
INSERT INTO `question` VALUES ('77', '某工厂现有工人 x人，若现有人数比两年前原有人数减少了35% ，则该工厂原有人数为    (     )', '');
INSERT INTO `question` VALUES ('78', '某工程甲单独完成要 45天，乙单独完成要 30天，若乙先单独干 20天，剩下的由甲单独完成．问甲、乙一共用几天可以完成全部工作，若设甲、乙共用 x天完成，则符合题意的方程是（　　）', '');
INSERT INTO `question` VALUES ('79', '下列解方程过程中，变形正确的是 （   ）', '');
INSERT INTO `question` VALUES ('80', '下列说法中，正确的是（      ）', '');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `score` double(5,2) DEFAULT '0.00',
  `time` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `teacherid` int(11) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`),
  KEY `teacheridkey` (`teacherid`),
  KEY `parentidkey` (`parentid`),
  CONSTRAINT `parentidkey` FOREIGN KEY (`parentid`) REFERENCES `parent` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teacheridkey` FOREIGN KEY (`teacherid`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '小飞', '123456', '1.00', '00:00:23', '1', '1');
INSERT INTO `student` VALUES ('2', '小洁', '123456', '0.00', '00:02:00', '2', '4');
INSERT INTO `student` VALUES ('3', '小涛', '123456', '0.00', '00:03:01', '3', '3');
INSERT INTO `student` VALUES ('4', '小明', '123456', '0.00', '00:03:01', '4', '2');
INSERT INTO `student` VALUES ('5', '小奇', '123456', '0.00', '00:03:01', '5', '5');
INSERT INTO `student` VALUES ('6', '小其', '123456', '0.00', '00:03:01', '6', '6');
INSERT INTO `student` VALUES ('10', '小红', '123456', '0.00', '00:03:01', '1', '7');
INSERT INTO `student` VALUES ('11', '小秋', '123456', '0.00', '00:03:01', '2', '2');
INSERT INTO `student` VALUES ('12', '小荣', '123456', '0.00', '00:03:02', '3', '8');
INSERT INTO `student` VALUES ('13', '腾飞', '123456', '0.00', '00:00:29', '4', '6');
INSERT INTO `student` VALUES ('14', '小谢', '123456', '0.00', '00:00:26', '5', '7');
INSERT INTO `student` VALUES ('23', '小林', '123456', '0.00', '00:00:25', '6', '5');
INSERT INTO `student` VALUES ('24', '小肚腩', '13250329991', '0.00', '00:00:24', '2', '1');
INSERT INTO `student` VALUES ('25', '123', '123', '3.00', '00:00:19', '1', '1');
INSERT INTO `student` VALUES ('26', '111111', '111111', '0.00', null, '1', '1');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '谢老师', '123456');
INSERT INTO `teacher` VALUES ('2', '林老师', '123456');
INSERT INTO `teacher` VALUES ('3', '骆老师', '123456');
INSERT INTO `teacher` VALUES ('4', '杨老师', '123456');
INSERT INTO `teacher` VALUES ('5', '李老师', '123456');
INSERT INTO `teacher` VALUES ('6', '赵老师', '123456');
