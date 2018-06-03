/*
Navicat MySQL Data Transfer

Source Server         : tt
Source Server Version : 50022
Source Host           : localhost:3306
Source Database       : contentone

Target Server Type    : MYSQL
Target Server Version : 50022
File Encoding         : 65001

Date: 2018-06-03 12:44:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `name` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('admin', '1234');
INSERT INTO `admin` VALUES ('战三', '1234');

-- ----------------------------
-- Table structure for `department`
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('传染科');
INSERT INTO `department` VALUES ('儿科');
INSERT INTO `department` VALUES ('内科');
INSERT INTO `department` VALUES ('外科');
INSERT INTO `department` VALUES ('妇产科');

-- ----------------------------
-- Table structure for `empjian`
-- ----------------------------
DROP TABLE IF EXISTS `empjian`;
CREATE TABLE `empjian` (
  `ID` varchar(255) NOT NULL,
  `jianjie` text,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of empjian
-- ----------------------------
INSERT INTO `empjian` VALUES ('2016', '文荣大家介绍大街上的骄傲圣诞节');
INSERT INTO `empjian` VALUES ('2017', '还是的撒回答说打电话很大');
INSERT INTO `empjian` VALUES ('2018', '达到哈市的哈市的机会');
INSERT INTO `empjian` VALUES ('2020', '说的萨达是否合法身份金凤凰');
INSERT INTO `empjian` VALUES ('2021', '达到哈市的哈市的机会');
INSERT INTO `empjian` VALUES ('2023', '萨达说法发发发顺丰');
INSERT INTO `empjian` VALUES ('2024', '达到哈市的哈市的机会');
INSERT INTO `empjian` VALUES ('2025', '达到哈市的哈市的机会');
INSERT INTO `empjian` VALUES ('2027', '还是即可发货速度均符合设计符合');
INSERT INTO `empjian` VALUES ('2041', '达到哈市的哈市的机会');
INSERT INTO `empjian` VALUES ('2045', '的方式对发生的复方丹参');
INSERT INTO `empjian` VALUES ('2048', '和飞机上的花费时间符合加分');
INSERT INTO `empjian` VALUES ('2050', '的方式对发生的复方丹参');
INSERT INTO `empjian` VALUES ('2051', '的方式对发生的复方丹参');
INSERT INTO `empjian` VALUES ('2052', '的方式对发生的复方丹参');
INSERT INTO `empjian` VALUES ('2054', '的方式对发生的复方丹参');
INSERT INTO `empjian` VALUES ('2055', '的方式对发生的复方丹参');
INSERT INTO `empjian` VALUES ('2057', '的方式对发生的复方丹参');
INSERT INTO `empjian` VALUES ('2059', '的方式对发生的复方丹参');
INSERT INTO `empjian` VALUES ('2060', '达到哈市的哈市的机会');

-- ----------------------------
-- Table structure for `employee`
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `EmployeeID` varchar(255) NOT NULL,
  `name` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `department` varchar(255) default NULL,
  `imgurl` varchar(255) default NULL,
  PRIMARY KEY  (`EmployeeID`),
  KEY `department` (`department`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`department`) REFERENCES `department` (`department`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('2016', '许先', '1234', '妇产科', 'upload/2016.png');
INSERT INTO `employee` VALUES ('2017', '逄娜', '1234', '外科', 'upload/2017.png');
INSERT INTO `employee` VALUES ('2018', '移动', '1234', '内科', 'upload/2018.png');
INSERT INTO `employee` VALUES ('2020', '周几', '1234', '妇产科', 'upload/2020.png');
INSERT INTO `employee` VALUES ('2021', '电信', '123444', '儿科', 'upload/2021.png');
INSERT INTO `employee` VALUES ('2023', '李四', '1234', '外科', 'upload/2023.png');
INSERT INTO `employee` VALUES ('2024', '安卓', '1234', '传染科', 'upload/2024.png');
INSERT INTO `employee` VALUES ('2025', '苹果', '1234', '传染科', 'upload/2025.png');
INSERT INTO `employee` VALUES ('2027', '巴莹', '1234', '儿科', 'upload/2027.png');
INSERT INTO `employee` VALUES ('2041', '塞班', '1234', '传染科', 'upload/2041.png');
INSERT INTO `employee` VALUES ('2045', '黑塞', '1234', '传染科', 'upload/2045.png');
INSERT INTO `employee` VALUES ('2048', '庄飞虎', '1234', '传染科', 'upload/2048.png');
INSERT INTO `employee` VALUES ('2050', '韩浩气', '1234', '传染科', 'upload/2050.png');
INSERT INTO `employee` VALUES ('2051', '镜子', '1234', '传染科', 'upload/2051.png');
INSERT INTO `employee` VALUES ('2052', '水杯', '1234', '传染科', 'upload/2052.png');
INSERT INTO `employee` VALUES ('2054', '桌子', '1234', '内科', 'upload/2054.png');
INSERT INTO `employee` VALUES ('2055', '宿舍', '1234', '传染科', 'upload/2055.png');
INSERT INTO `employee` VALUES ('2057', '自来水', '1234', '传染科', 'upload/2057.png');
INSERT INTO `employee` VALUES ('2059', '海水', '1234', '传染科', 'upload/2059.png');
INSERT INTO `employee` VALUES ('2060', '泰山', '1234', '内科', 'upload/2060.png');
INSERT INTO `employee` VALUES ('2084', '1234', '1234', '儿科', 'upload/2084.png');
INSERT INTO `employee` VALUES ('3012', '天启', '1234', '儿科', 'upload/3012.png');
INSERT INTO `employee` VALUES ('3014', '韩齐列', '1234', '儿科', 'upload/3014.png');
INSERT INTO `employee` VALUES ('4016', '万历', '1234', '儿科', 'upload/4016.png');
INSERT INTO `employee` VALUES ('777', '天天', '1234', '内科', 'upload/777.png');

-- ----------------------------
-- Table structure for `favourite`
-- ----------------------------
DROP TABLE IF EXISTS `favourite`;
CREATE TABLE `favourite` (
  `ID` int(16) NOT NULL auto_increment,
  `person` varchar(255) NOT NULL,
  `employee` varchar(255) NOT NULL,
  PRIMARY KEY  (`ID`),
  KEY `person` (`person`),
  KEY `employee` (`employee`),
  CONSTRAINT `favourite_ibfk_1` FOREIGN KEY (`person`) REFERENCES `user` (`PersonID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `favourite_ibfk_2` FOREIGN KEY (`employee`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of favourite
-- ----------------------------
INSERT INTO `favourite` VALUES ('5', '001', '2024');
INSERT INTO `favourite` VALUES ('7', '001', '2041');
INSERT INTO `favourite` VALUES ('8', '001', '2048');
INSERT INTO `favourite` VALUES ('10', '001', '2051');
INSERT INTO `favourite` VALUES ('11', '001', '2052');
INSERT INTO `favourite` VALUES ('16', '999', '2024');

-- ----------------------------
-- Table structure for `time`
-- ----------------------------
DROP TABLE IF EXISTS `time`;
CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `employeeid` varchar(255) NOT NULL,
  `amstart` timestamp NULL default NULL,
  `amend` timestamp NULL default NULL,
  `pmstart` timestamp NULL default NULL,
  `pmend` timestamp NULL default NULL,
  PRIMARY KEY  (`id`),
  KEY `employeeid` (`employeeid`),
  CONSTRAINT `time_ibfk_1` FOREIGN KEY (`employeeid`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of time
-- ----------------------------
INSERT INTO `time` VALUES ('4', '2024', '2018-06-07 08:38:47', '2018-06-07 10:38:30', null, null);
INSERT INTO `time` VALUES ('5', '2024', '2018-06-21 09:00:00', '2018-06-21 12:00:00', '2018-06-21 13:00:00', '2018-06-21 19:00:00');
INSERT INTO `time` VALUES ('6', '2027', '2018-06-23 08:00:00', '2018-06-23 12:00:00', '2018-06-23 13:00:00', '2018-06-23 17:00:00');
INSERT INTO `time` VALUES ('7', '2027', '2018-06-08 09:00:00', '2018-06-08 12:00:00', null, null);
INSERT INTO `time` VALUES ('8', '2027', '2018-06-12 08:00:00', '2018-06-12 11:30:00', '2018-06-12 14:00:00', '2018-06-12 20:00:00');
INSERT INTO `time` VALUES ('9', '2016', '2018-06-14 08:00:00', '2018-06-14 11:59:00', '2018-06-14 13:00:00', '2018-06-14 18:00:00');
INSERT INTO `time` VALUES ('12', '2041', '2018-06-13 08:00:00', '2018-06-13 11:55:25', null, null);
INSERT INTO `time` VALUES ('14', '2016', '2018-06-07 10:37:30', '2018-06-07 10:37:45', null, null);

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `PersonID` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  `sex` varchar(10) default NULL,
  `phone` varchar(255) default NULL,
  `address` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  PRIMARY KEY  (`PersonID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('001', '123', '男', '1785353602', '美', '张三1');
INSERT INTO `user` VALUES ('002', '123', '女', '178656462', '英国', '李四');
INSERT INTO `user` VALUES ('003', '003', '男', '1784564263', '江苏', '王二嘛');
INSERT INTO `user` VALUES ('004', '004', '女', '1785356265', '山东', '狗蛋');
INSERT INTO `user` VALUES ('005', '005', '男', '178569569', '江西', '李丹');
INSERT INTO `user` VALUES ('006', '006', '女', '18895565959', '英国', '张宇');
INSERT INTO `user` VALUES ('007', '007', '女', '18856959', '山西', '巴莹');
INSERT INTO `user` VALUES ('008', '008', '女', '14878465878', '山东', '许婷婷');
INSERT INTO `user` VALUES ('009', '009', '女', '1848648984', '山东', '逄娜');
INSERT INTO `user` VALUES ('010', '123', '男', '1785566', '44555', '488551566');
INSERT INTO `user` VALUES ('011', '123', '女', '178595626', '44668', '4859656');
INSERT INTO `user` VALUES ('012', '5', '男', '5', '4', '5');
INSERT INTO `user` VALUES ('999', '1234', '男', '12312156456456', 'jasjhdjahdjad', 'test');

-- ----------------------------
-- Table structure for `yuyue`
-- ----------------------------
DROP TABLE IF EXISTS `yuyue`;
CREATE TABLE `yuyue` (
  `yuyuema` varchar(255) NOT NULL,
  `person` varchar(255) NOT NULL,
  `employee` varchar(255) NOT NULL,
  `time` datetime NOT NULL,
  `createtime` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`yuyuema`),
  KEY `person` (`person`),
  KEY `employee` (`employee`),
  CONSTRAINT `yuyue_ibfk_1` FOREIGN KEY (`person`) REFERENCES `user` (`PersonID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `yuyue_ibfk_2` FOREIGN KEY (`employee`) REFERENCES `employee` (`EmployeeID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of yuyue
-- ----------------------------
INSERT INTO `yuyue` VALUES ('402882f662a827f30162a83bb4340000', '001', '2024', '2018-04-09 09:28:00', '2018-04-09 10:28:27');
INSERT INTO `yuyue` VALUES ('402882f663b9063c0163b9b1687c0001', '001', '2024', '2018-06-07 08:53:00', '2018-06-01 12:53:21');
INSERT INTO `yuyue` VALUES ('ff80808163c31f810163c35a76f90003', '999', '2024', '2018-06-21 13:56:00', '2018-06-03 09:54:35');
