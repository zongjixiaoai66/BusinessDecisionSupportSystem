/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t290`;
CREATE DATABASE IF NOT EXISTS `t290` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t290`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

DELETE FROM `config`;

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2022-03-22 02:19:40'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2022-03-22 02:19:40'),
	(3, 'bumen_types', '部门', 1, '人事部', NULL, NULL, '2022-03-22 02:19:40'),
	(4, 'bumen_types', '部门', 2, '研发部', NULL, NULL, '2022-03-22 02:19:40'),
	(5, 'bumen_types', '部门', 3, '市场部', NULL, NULL, '2022-03-22 02:19:40'),
	(6, 'zhiwei_types', '职位', 1, '普通员工', NULL, NULL, '2022-03-22 02:19:40'),
	(7, 'zhiwei_types', '职位', 2, '小组长', NULL, NULL, '2022-03-22 02:19:40'),
	(8, 'zhiwei_types', '职位', 3, '经理', NULL, NULL, '2022-03-22 02:19:40'),
	(9, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-22 02:19:40'),
	(10, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-22 02:19:40'),
	(11, 'shouzhi_types', '收支类型', 1, '收入', NULL, NULL, '2022-03-22 02:19:40'),
	(12, 'shouzhi_types', '收支类型', 2, '支出', NULL, NULL, '2022-03-22 02:19:40'),
	(13, 'shouzhi_erji_types', '二级类型', 1, '收入类型1', 1, NULL, '2022-03-22 02:19:40'),
	(14, 'shouzhi_erji_types', '二级类型', 2, '收入类型2', 1, NULL, '2022-03-22 02:19:40'),
	(15, 'shouzhi_erji_types', '二级类型', 3, '收入类型3', 1, NULL, '2022-03-22 02:19:40'),
	(16, 'shouzhi_erji_types', '二级类型', 4, '支出类型1', 2, NULL, '2022-03-22 02:19:40'),
	(17, 'shouzhi_erji_types', '二级类型', 5, '支出类型2', 2, NULL, '2022-03-22 02:19:41'),
	(18, 'shouzhi_erji_types', '二级类型', 6, '支出类型3', 2, NULL, '2022-03-22 02:19:41'),
	(19, 'xiaoshou_types', '销售类型', 1, '销售类型1', NULL, NULL, '2022-03-22 02:19:41'),
	(20, 'xiaoshou_types', '销售类型', 2, '销售类型2', NULL, NULL, '2022-03-22 02:19:41'),
	(21, 'xiaoshou_types', '销售类型', 3, '销售类型3', NULL, NULL, '2022-03-22 02:19:41'),
	(22, 'shouzhi_erji_types', '二级类型', 7, '支出类型4', 2, '', '2022-03-22 02:33:01');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/fuzhujuece/upload/gonggao1.jpg', 1, '2022-03-22 02:20:28', '公告详情1', '2022-03-22 02:20:28'),
	(2, '公告名称2', 'http://localhost:8080/fuzhujuece/upload/gonggao2.jpg', 1, '2022-03-22 02:20:28', '公告详情2', '2022-03-22 02:20:28'),
	(3, '公告名称3', 'http://localhost:8080/fuzhujuece/upload/gonggao3.jpg', 1, '2022-03-22 02:20:28', '公告详情3', '2022-03-22 02:20:28'),
	(4, '公告名称4', 'http://localhost:8080/fuzhujuece/upload/gonggao4.jpg', 2, '2022-03-22 02:20:28', '公告详情4', '2022-03-22 02:20:28'),
	(5, '公告名称5', 'http://localhost:8080/fuzhujuece/upload/gonggao5.jpg', 2, '2022-03-22 02:20:28', '公告详情5', '2022-03-22 02:20:28');

DROP TABLE IF EXISTS `shouzhi`;
CREATE TABLE IF NOT EXISTS `shouzhi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shouzhi_uuid_number` varchar(200) DEFAULT NULL COMMENT '唯一编号 Search111  ',
  `shouzhi_name` varchar(200) DEFAULT NULL COMMENT '收支名称 Search111  ',
  `shouzhi_types` int NOT NULL COMMENT '收支类型 Search111  ',
  `shouzhi_erji_types` int NOT NULL COMMENT '二级类型 Search111  ',
  `shouzhi_money` decimal(10,2) DEFAULT NULL COMMENT '收支金额',
  `shouzhi_content` text COMMENT '收支详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='收支';

DELETE FROM `shouzhi`;
INSERT INTO `shouzhi` (`id`, `shouzhi_uuid_number`, `shouzhi_name`, `shouzhi_types`, `shouzhi_erji_types`, `shouzhi_money`, `shouzhi_content`, `insert_time`, `create_time`) VALUES
	(1, '164791562896910', '收支名称1', 1, 1, 519.92, '收支详情1', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(2, '16479156289699', '收支名称2', 2, 4, 31.22, '收支详情2', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(3, '164791562897013', '收支名称3', 2, 5, 180.30, '收支详情3', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(4, '16479156289706', '收支名称4', 2, 6, 890.02, '收支详情4', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(5, '164791562897014', '收支名称5', 1, 2, 92.09, '收支详情5', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(6, '1647915628969911', '收支名称211', 2, 6, 31.22, '收支详情2', '2022-02-22 02:20:28', '2022-02-22 02:20:28'),
	(7, '1647915628970611', '收支名称411', 2, 6, 890.02, '<p>收支详情4</p>', '2022-02-22 02:20:28', '2022-02-22 02:20:28');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 6, 'admin', 'users', '管理员', 'h0k5idj116a2in78afizjfoy7tvw1l5g', '2022-03-22 02:22:18', '2024-07-24 04:15:56'),
	(2, 1, 'a1', 'yuangong', '员工', '2fhk84dgofywtuqcijjnr2no2edih4dt', '2022-03-22 02:34:09', '2024-07-24 04:17:00');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(6, 'admin', '123456', '管理员', '2022-05-02 06:51:13');

DROP TABLE IF EXISTS `xiaoshou`;
CREATE TABLE IF NOT EXISTS `xiaoshou` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaoshou_uuid_number` varchar(200) DEFAULT NULL COMMENT '唯一编号 Search111 ',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `xiaoshou_name` varchar(200) DEFAULT NULL COMMENT '销售名称',
  `xiaoshou_number` int DEFAULT NULL COMMENT '销售数量',
  `xiaoshou_types` int DEFAULT NULL COMMENT '销售类型 Search111 ',
  `xiaoshou_time` timestamp NULL DEFAULT NULL COMMENT '销售时间',
  `xiaoshou_jine` decimal(10,2) DEFAULT NULL COMMENT '销售金额',
  `xiaoshou_content` text COMMENT '销售备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='销售订单';

DELETE FROM `xiaoshou`;
INSERT INTO `xiaoshou` (`id`, `xiaoshou_uuid_number`, `yuangong_id`, `xiaoshou_name`, `xiaoshou_number`, `xiaoshou_types`, `xiaoshou_time`, `xiaoshou_jine`, `xiaoshou_content`, `insert_time`, `create_time`) VALUES
	(1, '16479156289734', 3, '销售名称1', 445, 1, '2022-03-22 02:20:28', 354.96, '销售备注1', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(2, '16479156289737', 1, '销售名称2', 231, 3, '2022-03-22 02:20:28', 263.42, '销售备注2', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(3, '164791562897320', 1, '销售名称3', 167, 3, '2022-03-22 02:20:28', 358.17, '销售备注3', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(4, '16479156289739', 3, '销售名称4', 46, 3, '2022-03-22 02:20:28', 774.07, '销售备注4', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(5, '16479156289733', 3, '销售名称5', 440, 2, '2022-03-22 02:20:28', 761.55, '销售备注5', '2022-03-22 02:20:28', '2022-03-22 02:20:28');

DROP TABLE IF EXISTS `xinzi`;
CREATE TABLE IF NOT EXISTS `xinzi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yuangong_id` int DEFAULT NULL COMMENT '员工',
  `xinzi_uuid_number` varchar(200) DEFAULT NULL COMMENT '薪资编号 Search111 ',
  `xinzi_name` varchar(200) DEFAULT NULL COMMENT '标题 Search111 ',
  `xinzi_month` varchar(200) DEFAULT NULL COMMENT '月份 Search111 ',
  `jiben_jine` decimal(10,2) DEFAULT NULL COMMENT '基本工资',
  `jiangjin_jine` decimal(10,2) DEFAULT NULL COMMENT '奖金',
  `jixiao_jine` decimal(10,2) DEFAULT NULL COMMENT '绩效',
  `butie_jine` decimal(10,2) DEFAULT NULL COMMENT '补贴',
  `shifa_jine` decimal(10,2) DEFAULT NULL COMMENT '实发',
  `xinzi_content` text COMMENT '备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='薪资';

DELETE FROM `xinzi`;
INSERT INTO `xinzi` (`id`, `yuangong_id`, `xinzi_uuid_number`, `xinzi_name`, `xinzi_month`, `jiben_jine`, `jiangjin_jine`, `jixiao_jine`, `butie_jine`, `shifa_jine`, `xinzi_content`, `insert_time`, `create_time`) VALUES
	(1, 3, '164791562898010', '标题1', '2022-03', 763.85, 531.26, 203.02, 603.16, 378.39, '备注1', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(2, 1, '164791562898012', '标题2', '2022-03', 960.45, 630.77, 3.20, 759.48, 912.21, '备注2', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(3, 2, '164791562898016', '标题3', '2022-03', 264.73, 867.41, 171.27, 193.35, 526.50, '备注3', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(4, 1, '16479156289807', '标题4', '2022-03', 907.96, 515.76, 885.79, 588.89, 148.63, '备注4', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(5, 2, '16479156289808', '标题5', '2022-02', 627.39, 255.69, 910.10, 665.26, 2458.44, '<p>备注5</p>', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(6, 1, '1647916405563', '111', '2022-02', 11.00, 111.00, 1111.00, 11111.00, 12344.00, '<p>1231</p>', '2022-03-22 02:33:54', '2022-03-22 02:33:54');

DROP TABLE IF EXISTS `yuangong`;
CREATE TABLE IF NOT EXISTS `yuangong` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yuangong_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yuangong_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号',
  `yuangong_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号',
  `yuangong_photo` varchar(200) DEFAULT NULL COMMENT '员工头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `bumen_types` int DEFAULT NULL COMMENT '部门 Search111 ',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111 ',
  `yuangong_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `yuangong_address` varchar(200) DEFAULT NULL COMMENT '现住址',
  `yuangong_huji` varchar(200) DEFAULT NULL COMMENT '户籍',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='员工';

DELETE FROM `yuangong`;
INSERT INTO `yuangong` (`id`, `username`, `password`, `yuangong_name`, `yuangong_phone`, `yuangong_id_number`, `yuangong_photo`, `sex_types`, `bumen_types`, `zhiwei_types`, `yuangong_email`, `yuangong_address`, `yuangong_huji`, `insert_time`, `create_time`) VALUES
	(1, '员工1', '123456', '员工姓名1', '17703786901', '410224199610232001', 'http://localhost:8080/fuzhujuece/upload/yuangong1.jpg', 2, 1, 3, '1@qq.com', '现住址1', '户籍1', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(2, '员工2', '123456', '员工姓名2', '17703786902', '410224199610232002', 'http://localhost:8080/fuzhujuece/upload/yuangong2.jpg', 1, 3, 2, '2@qq.com', '现住址2', '户籍2', '2022-03-22 02:20:28', '2022-03-22 02:20:28'),
	(3, '员工3', '123456', '员工姓名3', '17703786903', '410224199610232003', 'http://localhost:8080/fuzhujuece/upload/yuangong3.jpg', 2, 2, 2, '3@qq.com', '现住址3', '户籍3', '2022-03-22 02:34:04', '2022-03-22 02:20:28');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
