/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengxinxiguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengxinxiguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengxinxiguanlixitong`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-05 19:03:22'),(2,'sex_types','性别',2,'女',NULL,'2021-04-05 19:03:22'),(3,'banji_types','班级类型名称',1,'班级1',NULL,'2021-04-05 19:03:22'),(4,'banji_types','班级类型名称',2,'班级2',NULL,'2021-04-05 19:03:22'),(5,'banji_types','班级类型名称',3,'班级3',NULL,'2021-04-05 19:03:22'),(6,'situation_types','上课情况名称',4,'较差',NULL,'2021-04-05 19:03:22'),(7,'situation_types','上课情况名称',3,'一般',NULL,'2021-04-05 19:03:22'),(8,'situation_types','上课情况名称',2,'良好',NULL,'2021-04-05 19:03:22'),(9,'situation_types','上课情况名称',1,'优秀',NULL,'2021-04-05 19:03:22'),(10,'zhengshu_types','证书类型名称',1,'通用型证书',NULL,'2021-04-05 19:03:22'),(11,'zhengshu_types','证书类型名称',2,'英语能力证书',NULL,'2021-04-05 19:03:22'),(12,'banji_types','班级类型名称',4,'班级4',NULL,'2021-04-05 21:25:59');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '老师姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '老师性别',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '老师身份证号   ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '老师手机号  ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '老师照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`sex_types`,`laoshi_id_number`,`laoshi_phone`,`laoshi_photo`,`create_time`) values (1,'a11','123456','张11111',1,'410224199610232011','17703786911','http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617623530205.jpg','2021-04-05 19:52:11'),(2,'a22','123456','张22',2,'410224199610232022','17703786922','http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617628894849.jpg','2021-04-05 21:21:36');

/*Table structure for table `situation` */

DROP TABLE IF EXISTS `situation`;

CREATE TABLE `situation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `situation_types` int(11) DEFAULT NULL COMMENT '上课情况  ',
  `situation_time` timestamp NULL DEFAULT NULL COMMENT '年份  ',
  `xueqi` varchar(200) DEFAULT NULL COMMENT '学期  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '填写时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='上课情况';

/*Data for the table `situation` */

insert  into `situation`(`id`,`yonghu_id`,`situation_types`,`situation_time`,`xueqi`,`insert_time`,`create_time`) values (1,4,2,'2020-01-01 00:00:00','上半学期','2021-04-05 19:49:55','2021-04-05 19:49:55'),(2,2,1,'2020-01-01 00:00:00','下班学期','2021-04-05 19:51:40','2021-04-05 19:51:40');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋  ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元  ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号  ',
  `sushe_number` int(11) DEFAULT '0' COMMENT '已住人员',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`building`,`unit`,`room`,`sushe_number`,`create_time`) values (1,'1','1','101',0,'2021-04-05 19:52:24'),(2,'1','2','102',2,'2021-04-05 19:54:11'),(3,'1','1','1021',2,'2021-04-05 21:26:19');

/*Table structure for table `sushe_yonghu` */

DROP TABLE IF EXISTS `sushe_yonghu`;

CREATE TABLE `sushe_yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='人员与宿舍关系';

/*Data for the table `sushe_yonghu` */

insert  into `sushe_yonghu`(`id`,`yonghu_id`,`sushe_id`,`create_time`) values (1,4,2,'2021-04-05 19:54:19'),(2,3,2,'2021-04-05 19:54:26'),(4,5,3,'2021-04-05 21:32:20'),(5,2,3,'2021-04-06 09:42:21');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','0zzava5z2p7wn35b9jg4b5uxcx2skd25','2021-04-05 17:59:17','2021-04-06 11:10:01'),(3,1,'a11','laoshi','老师','1acr8wuhva6ap3vdok3uhxja9kp2ozxt','2021-04-05 20:43:15','2021-04-06 10:43:26'),(4,3,'a3','yonghu','用户','itv2vu2atr6n073xklfv7qi28vxyhw6f','2021-04-05 20:45:44','2021-04-06 10:42:46'),(5,4,'a4','yonghu','用户','64zulfoe3zsrvknlq0p9a2xjn7mq1zee','2021-04-05 20:48:22','2021-04-06 10:16:34'),(6,2,'a2','yonghu','用户','dtlhnw88r65bzbp44aqewpqwp4inhivw','2021-04-05 21:00:22','2021-04-06 11:01:22'),(7,5,'a9','yonghu','用户','i92v17l9jye61niiztyqd9cg93fz8ovt','2021-04-05 21:17:20','2021-04-05 22:17:20'),(8,1,'a1','yonghu','用户','hstai6k3b0m1adt74rkc1chgsdf3i109','2021-04-06 09:15:42','2021-04-06 10:15:42');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_xuehao` varchar(200) DEFAULT NULL COMMENT '学号   ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '学生性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号   ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号  ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_xuehao`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`banji_types`,`yonghu_photo`,`create_time`) values (1,'a1','123456','111','张1',1,'410224199610232011','17703786961',1,'http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617622330162.jpg','2021-04-05 19:32:11'),(2,'a2','123456','222','张2',1,'410224199610232022','17703786962',2,'http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617622435948.jpg','2021-04-05 19:33:57'),(3,'a3','123456','3335','张3',2,'410224199610232033','17703786933',3,'http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617622461357.jpg','2021-04-05 19:34:22'),(4,'a4','123456','444','张4',2,'410224199610232044','17703786964',3,'http://localhost:8080/xueshengxinxiguanlixitong/file/download?fileName=1617622500483.jpg','2021-04-05 19:35:01'),(5,'a9','123456','333','张9',2,'410224199610232099','17703786999',NULL,NULL,NULL);

/*Table structure for table `zhengshu` */

DROP TABLE IF EXISTS `zhengshu`;

CREATE TABLE `zhengshu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `zhengshu_name` varchar(200) DEFAULT NULL COMMENT '证书名   ',
  `zhengshu_types` int(11) DEFAULT NULL COMMENT '证书类型  ',
  `zhengshu_time` timestamp NULL DEFAULT NULL COMMENT '获取证书时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='学生证书';

/*Data for the table `zhengshu` */

insert  into `zhengshu`(`id`,`yonghu_id`,`zhengshu_name`,`zhengshu_types`,`zhengshu_time`,`create_time`) values (1,4,'证书1',2,'2021-04-21 00:00:00','2021-04-05 19:41:19'),(2,4,'证书2',2,'2021-04-14 00:00:00','2021-04-05 20:36:22'),(3,4,'证书22',2,'2021-04-14 00:00:00','2021-04-05 20:38:17'),(5,3,'证书22',1,'2021-04-08 00:00:00','2021-04-06 09:41:20');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
