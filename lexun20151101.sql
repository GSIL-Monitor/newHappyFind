/*
Navicat MySQL Data Transfer

Source Server         : happyfind
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-11-01 11:15:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for borrow_information
-- ----------------------------
DROP TABLE IF EXISTS `borrow_information`;
CREATE TABLE `borrow_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借贷信息表',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `id_card` varchar(45) DEFAULT NULL COMMENT '身份证',
  `status` varchar(45) DEFAULT NULL COMMENT '状态\n',
  `source` varchar(200) DEFAULT NULL COMMENT '来源',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of borrow_information
-- ----------------------------

-- ----------------------------
-- Table structure for competitive
-- ----------------------------
DROP TABLE IF EXISTS `competitive`;
CREATE TABLE `competitive` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proId` int(11) DEFAULT NULL COMMENT '标的id',
  `proPrsent` varchar(45) DEFAULT NULL COMMENT '竞标比例',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT NULL,
  `proFlag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='竞标抢标信息表';

-- ----------------------------
-- Records of competitive
-- ----------------------------

-- ----------------------------
-- Table structure for finance
-- ----------------------------
DROP TABLE IF EXISTS `finance`;
CREATE TABLE `finance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '财务模块表',
  `userId` varchar(45) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `inFinance` double(45,0) DEFAULT NULL COMMENT '入账金额',
  `outFinance` double(45,0) DEFAULT NULL COMMENT '出账金额',
  `stopFinance` double(45,0) DEFAULT NULL COMMENT '冻结金额',
  `totleFinance` double(45,0) DEFAULT NULL COMMENT '总额',
  `updateTime` varchar(0) DEFAULT NULL COMMENT '更新时间',
  `updateUser` varchar(45) DEFAULT NULL COMMENT '更新人',
  `financeInfo` varchar(200) DEFAULT NULL,
  `proFlag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of finance
-- ----------------------------

-- ----------------------------
-- Table structure for find_people
-- ----------------------------
DROP TABLE IF EXISTS `find_people`;
CREATE TABLE `find_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '借贷信息表',
  `xunrenId` varchar(45) DEFAULT NULL COMMENT '标的编号',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `idcard` varchar(45) DEFAULT NULL COMMENT '身份证',
  `age` varchar(45) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(45) DEFAULT NULL COMMENT '性别',
  `origin` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `originpro` varchar(45) DEFAULT NULL COMMENT '省',
  `origincity` varchar(45) DEFAULT NULL COMMENT '市',
  `origindist` varchar(45) DEFAULT NULL COMMENT '区',
  `residence` varchar(200) DEFAULT NULL COMMENT '居住地',
  `rightsplace` varchar(200) DEFAULT NULL COMMENT '债务发生地',
  `phonenumber` varchar(20) DEFAULT NULL COMMENT '原联系方式1',
  `phonenumber1` varchar(20) DEFAULT NULL COMMENT '原联系方式2',
  `phonenumber2` varchar(20) DEFAULT NULL COMMENT '原联系方式3',
  `missingday` varchar(20) DEFAULT NULL COMMENT '失踪天数',
  `loanagreement` varchar(200) DEFAULT NULL COMMENT '借款协议',
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `idcardcopy` varchar(200) DEFAULT NULL COMMENT '被催收人ID复印件',
  `loancontract` varchar(200) DEFAULT NULL COMMENT '借贷合同',
  `publishtype` varchar(20) DEFAULT NULL COMMENT '发布方类别',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  `proFlag` varchar(20) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of find_people
-- ----------------------------

-- ----------------------------
-- Table structure for getreward_information
-- ----------------------------
DROP TABLE IF EXISTS `getreward_information`;
CREATE TABLE `getreward_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '领赏自增列',
  `xunrenzizengid` int(11) NOT NULL COMMENT '寻人表里的id',
  `name` varchar(45) NOT NULL COMMENT '被寻人姓名',
  `idcard` varchar(45) DEFAULT NULL COMMENT '被寻人身份证号',
  `shengao` varchar(45) DEFAULT NULL COMMENT '被寻人身高',
  `tizhong` varchar(45) DEFAULT NULL COMMENT '被寻人体重',
  `tedian` varchar(45) DEFAULT NULL COMMENT '被寻人特点',
  `contactnumber1` varchar(45) DEFAULT NULL,
  `contactnumber2` varchar(45) DEFAULT NULL,
  `contactnumber3` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL COMMENT '描述',
  `pingzheng` varchar(200) DEFAULT NULL COMMENT '凭证',
  `qiwangshangjin` varchar(200) DEFAULT NULL COMMENT '期望赏金',
  `jingbiaoyoushi` varchar(200) DEFAULT NULL COMMENT '竞标优势',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间·',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  `proFlag` varchar(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of getreward_information
-- ----------------------------

-- ----------------------------
-- Table structure for logon_user
-- ----------------------------
DROP TABLE IF EXISTS `logon_user`;
CREATE TABLE `logon_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `userPass` varchar(45) DEFAULT NULL,
  `userFlag` varchar(45) DEFAULT NULL,
  `userType` varchar(200) DEFAULT NULL,
  `zcTime` varchar(255) DEFAULT NULL,
  `sysType` varchar(255) DEFAULT NULL,
  `userPhone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logon_user
-- ----------------------------
INSERT INTO `logon_user` VALUES ('35', 'fddadaf', '111111', '1', null, '2015-10-27 02:10:16', null, 'dddd');
INSERT INTO `logon_user` VALUES ('37', '666', '666666', '1', null, '2015-10-27 02:10:17', null, '13456789876');

-- ----------------------------
-- Table structure for quality_confirm
-- ----------------------------
DROP TABLE IF EXISTS `quality_confirm`;
CREATE TABLE `quality_confirm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL COMMENT '1个人用户认证；2企业用户认证',
  `userid` varchar(45) DEFAULT NULL COMMENT '个人用户姓名',
  `username` varchar(45) DEFAULT NULL COMMENT '个人用户姓名',
  `idcard` varchar(45) DEFAULT NULL COMMENT '个人用户身份证号',
  `profession` varchar(45) DEFAULT NULL COMMENT '个人用户职业',
  `province` varchar(45) DEFAULT NULL COMMENT '个人用户所在地省份',
  `prefecturecity` varchar(200) DEFAULT NULL COMMENT '个人用户所在地地级市',
  `area` varchar(200) DEFAULT NULL COMMENT '个人用户所在地市区',
  `uploadidcard` varchar(200) DEFAULT NULL COMMENT '个人用户上传身份证',
  `email` varchar(200) DEFAULT NULL COMMENT '个人用户邮箱',
  `companyname` varchar(20) DEFAULT NULL COMMENT '企业名称',
  `companyidcard` varchar(20) DEFAULT NULL COMMENT '企业证件号',
  `companyprovince` varchar(45) DEFAULT NULL COMMENT '企业所在地省份',
  `companyprefecturecity` varchar(200) DEFAULT NULL COMMENT '企业用户所在地地级市',
  `companyarea` varchar(200) DEFAULT NULL COMMENT '企业所在地市区',
  `uploadcompanyareaidcard` varchar(20) DEFAULT NULL COMMENT '企业上传证件',
  `legalname` varchar(200) DEFAULT NULL COMMENT '企业法定代表人',
  `companysize` varchar(200) DEFAULT NULL COMMENT '企业规模',
  `companyemail` varchar(200) DEFAULT NULL COMMENT '企业邮箱',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` int(11) DEFAULT '0',
  `infoFlag` int(11) DEFAULT NULL,
  `infoText` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='资格认证包含个人和企业信息';

-- ----------------------------
-- Records of quality_confirm
-- ----------------------------
INSERT INTO `quality_confirm` VALUES ('5', '1', '37', '牛潇', '410503198804085046', '进口量卡拉胶', '3', '8', '165', '14458860038589.png', '地对地导弹', null, null, null, null, null, null, null, null, null, null, '666', '2015-10-27 03:10:42', null, '4', '');

-- ----------------------------
-- Table structure for register_company
-- ----------------------------
DROP TABLE IF EXISTS `register_company`;
CREATE TABLE `register_company` (
  `id` int(11) NOT NULL COMMENT '企业注册信息表',
  `company_name` varchar(45) NOT NULL COMMENT '注册公司名称',
  `contact_name` varchar(45) DEFAULT NULL COMMENT '联系人姓名',
  `phone_number` int(11) NOT NULL COMMENT '联系人电话',
  `other_number` int(11) DEFAULT NULL COMMENT '联系人其他号码',
  `email` varchar(45) DEFAULT NULL COMMENT '联系人邮箱',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of register_company
-- ----------------------------

-- ----------------------------
-- Table structure for release_information
-- ----------------------------
DROP TABLE IF EXISTS `release_information`;
CREATE TABLE `release_information` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '举报信息表',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `id_card` varchar(45) DEFAULT NULL COMMENT '身份证',
  `release_type` varchar(45) DEFAULT NULL COMMENT '举报类型',
  `loan_amount` double DEFAULT NULL COMMENT '贷款金额',
  `debt_amount` varchar(45) DEFAULT NULL COMMENT '欠款金额',
  `loan_institutions` varchar(45) DEFAULT NULL COMMENT '贷款机构',
  `release_time` datetime DEFAULT NULL COMMENT '举报时间',
  `contact_number1` varchar(45) DEFAULT NULL,
  `contact_number2` varchar(45) DEFAULT NULL,
  `contact_number3` varchar(45) DEFAULT NULL,
  `loan_time` datetime DEFAULT NULL COMMENT '贷款时间',
  `loan_timelimit` varchar(20) DEFAULT NULL COMMENT '贷款期限',
  `type` varchar(45) DEFAULT NULL COMMENT '个人举报和机构举报',
  `select_amount` varchar(45) DEFAULT NULL COMMENT '查询价格',
  `is_anonymity` varchar(45) DEFAULT NULL COMMENT '是否匿名',
  `overdue_time` varchar(45) DEFAULT NULL COMMENT '逾期日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of release_information
-- ----------------------------

-- ----------------------------
-- Table structure for reward_information
-- ----------------------------
DROP TABLE IF EXISTS `reward_information`;
CREATE TABLE `reward_information` (
  `id` int(11) NOT NULL COMMENT '悬赏信息表',
  `name` varchar(45) DEFAULT NULL COMMENT '姓名',
  `id_card` varchar(45) DEFAULT NULL COMMENT '身份证',
  `loan_time` datetime DEFAULT NULL COMMENT '贷款时间',
  `loan_mount` double DEFAULT NULL COMMENT '贷款金额',
  `release_time` datetime DEFAULT NULL COMMENT '发布日期',
  `reward_amount` double DEFAULT NULL COMMENT '悬赏金额',
  `contact_number1` varchar(45) NOT NULL,
  `contact_number2` varchar(45) DEFAULT NULL,
  `contact_number3` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL COMMENT '分为个人和机构\n',
  `deleteFlag` int(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reward_information
-- ----------------------------

-- ----------------------------
-- Table structure for right_debt
-- ----------------------------
DROP TABLE IF EXISTS `right_debt`;
CREATE TABLE `right_debt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(45) DEFAULT NULL COMMENT '1定价标；2竞价标',
  `bianhaoId` varchar(45) DEFAULT NULL COMMENT '编号',
  `rightname` varchar(45) DEFAULT NULL COMMENT '债权人姓名',
  `rightaddress` varchar(45) DEFAULT NULL COMMENT '债权人地址',
  `rightProvince` varchar(45) DEFAULT NULL COMMENT '债权发生省',
  `rightcity` varchar(45) DEFAULT NULL COMMENT '债权发生市',
  `rightdist` varchar(45) DEFAULT NULL COMMENT '债权发生区',
  `rightphone` varchar(45) DEFAULT NULL COMMENT '债权人电话',
  `rightidcard` varchar(45) DEFAULT NULL COMMENT '债权人身份证号或营业执照注册号',
  `rightcontact` varchar(200) DEFAULT NULL COMMENT '债权人联系人',
  `rightcontactphone` varchar(200) DEFAULT NULL COMMENT '债权方联系人电话',
  `rightamount` varchar(20) DEFAULT NULL COMMENT '债权金额',
  `disposalmethod` varchar(200) DEFAULT NULL COMMENT '期望处置方式及回报',
  `latedays` varchar(20) DEFAULT NULL COMMENT '逾期时间',
  `guaranteemethod` varchar(20) DEFAULT NULL COMMENT '担保方式',
  `collectionmeasures` varchar(200) DEFAULT NULL COMMENT '催收措施',
  `voucher` varchar(200) DEFAULT NULL COMMENT '上传相关凭证',
  `rightdesc` varchar(200) DEFAULT NULL COMMENT '债权描述',
  `debtname` varchar(200) DEFAULT NULL COMMENT '债务方姓名',
  `debtaddress` varchar(20) DEFAULT NULL COMMENT '债务方地址',
  `debtphone1` varchar(255) DEFAULT NULL COMMENT '债务方电话1',
  `debtphone2` varchar(255) DEFAULT NULL COMMENT '债务方电话2',
  `debtphone3` varchar(255) DEFAULT NULL COMMENT '债务方电话3',
  `debtidcard` varchar(45) DEFAULT NULL COMMENT '债务方证件',
  `debtiscontact` varchar(255) DEFAULT NULL COMMENT '1可联系；2已失联',
  `debtispay` varchar(255) DEFAULT NULL COMMENT '1可以；2不可以；3不确定',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `moduser` varchar(255) DEFAULT NULL,
  `updateTime` varchar(255) DEFAULT NULL,
  `deleteFlag` varchar(11) DEFAULT '0',
  `isSusong` varchar(11) DEFAULT '0',
  `isPanjue` varchar(11) DEFAULT '0',
  `proType` varchar(11) DEFAULT '0',
  `endTime` varchar(11) DEFAULT NULL,
  `salprsent` varchar(255) DEFAULT NULL,
  `bateprsent` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定价标和竞价标';

-- ----------------------------
-- Records of right_debt
-- ----------------------------
INSERT INTO `right_debt` VALUES ('1', '2', null, '牛潇', '进口量京津冀', '14', '118', '1094', '13876765443', '410503198804085046', '你哈', '111111111', '100', '1', '10', '2, 5', null, '1446046595713book.png', '的顶顶顶顶顶顶顶顶顶顶', '将建军节', '谁谁谁谁谁谁', '199999999', '111', '111', '111111111', '1', '1', null, '666', '2015-10-29 00:10:04', null, '0', '0', '1', '1', '10', '');
INSERT INTO `right_debt` VALUES ('2', '2', null, '李阳吃屁', '安阳', '16', '155', '1419', '13657654532', '410503198804085046', '李阳李四', '13787656765', '100', '1', '100', '3', null, '14463476540986.jpg', 'f达到法定发动发动算法等', '哈哈哈哈', '蓝蓝蓝蓝蓝蓝', '13878767654', '', '', '410503198804085046', '1', '1', null, '666', '2015-11-01 11:11:17', null, '1', '1', '2', '5', '10', '');

-- ----------------------------
-- Table structure for select_record_company
-- ----------------------------
DROP TABLE IF EXISTS `select_record_company`;
CREATE TABLE `select_record_company` (
  `serial_number` int(11) NOT NULL COMMENT '企业查询记录表',
  `datetime` datetime DEFAULT NULL,
  `select_company` varchar(45) DEFAULT NULL,
  `select_reason` varchar(45) DEFAULT NULL COMMENT '机构查询记录',
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of select_record_company
-- ----------------------------

-- ----------------------------
-- Table structure for select_record_person
-- ----------------------------
DROP TABLE IF EXISTS `select_record_person`;
CREATE TABLE `select_record_person` (
  `serial_number` int(11) NOT NULL COMMENT '个人查询记录表',
  `datetime` datetime DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL COMMENT '个人查询记录',
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of select_record_person
-- ----------------------------

-- ----------------------------
-- Table structure for supremecourt_broken_promises
-- ----------------------------
DROP TABLE IF EXISTS `supremecourt_broken_promises`;
CREATE TABLE `supremecourt_broken_promises` (
  `id` int(11) NOT NULL COMMENT '最高法院失信信息表',
  `name` varchar(45) DEFAULT NULL,
  `record_time` datetime DEFAULT NULL,
  `record_number` varchar(45) DEFAULT NULL COMMENT '最高法院失信信息',
  `release_time` datetime DEFAULT NULL,
  `perform_court` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `obligation` varchar(45) DEFAULT NULL,
  `perform_situation` varchar(45) DEFAULT NULL,
  `perform_situation_detail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supremecourt_broken_promises
-- ----------------------------

-- ----------------------------
-- Table structure for supremecourt_perform
-- ----------------------------
DROP TABLE IF EXISTS `supremecourt_perform`;
CREATE TABLE `supremecourt_perform` (
  `id` int(11) NOT NULL COMMENT '最高法院执行信息表',
  `name` varchar(45) DEFAULT NULL,
  `record_time` datetime DEFAULT NULL,
  `record_number` varchar(45) DEFAULT NULL COMMENT '最高法院执行信息',
  `release_time` datetime DEFAULT NULL,
  `perform_court` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `obligation` varchar(200) DEFAULT NULL,
  `perform_situation` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supremecourt_perform
-- ----------------------------

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `dateTime` varchar(255) DEFAULT NULL,
  `logType` int(11) DEFAULT NULL,
  `logUser` varchar(255) DEFAULT NULL,
  `logcotent` varchar(255) DEFAULT NULL,
  `logkey` varchar(255) DEFAULT NULL,
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES (null, null, null, null, null, '1');
INSERT INTO `system_log` VALUES (null, null, null, null, null, '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL COMMENT '用户信息表',
  `username` varchar(45) DEFAULT NULL,
  `id_card` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `work_company` varchar(45) DEFAULT NULL COMMENT '工作单位',
  `job` varchar(45) DEFAULT NULL COMMENT '职位',
  `account_amount` double DEFAULT NULL COMMENT '账户余额',
  `bank_number` varchar(45) DEFAULT NULL COMMENT '银行卡号',
  `bank_name` varchar(45) DEFAULT NULL,
  `open_bank` varchar(45) DEFAULT NULL COMMENT '开户银行',
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------


-- ----------------------------
-- Table structure for xiaoxi
-- ----------------------------
DROP TABLE IF EXISTS `xiaoxi`;
CREATE TABLE `xiaoxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xiaoxiname` varchar(45) DEFAULT NULL COMMENT '消息名称',
  `xiaoxitype` varchar(45) DEFAULT NULL COMMENT '消息名称类别',
  `xiaoxidesc` varchar(45) DEFAULT NULL COMMENT '消息内容',
  `modtime` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `userid` varchar(255) DEFAULT NULL COMMENT '录入时间',
  `deleteFlag` varchar(11) DEFAULT '0',
  `xiaoxiFlag` varchar(11) DEFAULT '0' COMMENT '是否查看标识',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
