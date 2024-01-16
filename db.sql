/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - springboot6yjn8
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`springboot6yjn8` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `springboot6yjn8`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/springboot6yjn8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/springboot6yjn8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/springboot6yjn8/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `danwei` */

DROP TABLE IF EXISTS `danwei`;

CREATE TABLE `danwei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `gerenziliao` varchar(200) DEFAULT NULL COMMENT '个人资料',
  `danweileibie` varchar(200) DEFAULT NULL COMMENT '单位类别',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='单位';

/*Data for the table `danwei` */

insert  into `danwei`(`id`,`addtime`,`xingming`,`xingbie`,`nianling`,`zhaopian`,`gerenziliao`,`danweileibie`,`beizhu`,`lianxifangshi`) values (51,'2021-03-09 11:07:09','姓名1','性别1','年龄1','http://localhost:8080/springboot6yjn8/upload/danwei_zhaopian1.jpg','http://localhost:8080/springboot6yjn8/upload/1615272743383.docx','单位类别1','备注1','联系方式1'),(52,'2021-03-09 11:07:09','姓名2','性别2','年龄2','http://localhost:8080/springboot6yjn8/upload/danwei_zhaopian2.jpg','','单位类别2','备注2','联系方式2'),(53,'2021-03-09 11:07:09','姓名3','性别3','年龄3','http://localhost:8080/springboot6yjn8/upload/danwei_zhaopian3.jpg','','单位类别3','备注3','联系方式3'),(54,'2021-03-09 11:07:09','姓名4','性别4','年龄4','http://localhost:8080/springboot6yjn8/upload/danwei_zhaopian4.jpg','','单位类别4','备注4','联系方式4'),(55,'2021-03-09 11:07:09','姓名5','性别5','年龄5','http://localhost:8080/springboot6yjn8/upload/danwei_zhaopian5.jpg','','单位类别5','备注5','联系方式5'),(56,'2021-03-09 11:07:09','姓名6','性别6','年龄6','http://localhost:8080/springboot6yjn8/upload/danwei_zhaopian6.jpg','','单位类别6','备注6','联系方式6');

/*Table structure for table `danweileibie` */

DROP TABLE IF EXISTS `danweileibie`;

CREATE TABLE `danweileibie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danweileibie` varchar(200) DEFAULT NULL COMMENT '单位类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='单位类别';

/*Data for the table `danweileibie` */

insert  into `danweileibie`(`id`,`addtime`,`danweileibie`) values (31,'2021-03-09 11:07:09','职工'),(32,'2021-03-09 11:07:09','单位类别2'),(33,'2021-03-09 11:07:09','单位类别3'),(34,'2021-03-09 11:07:09','单位类别4'),(35,'2021-03-09 11:07:09','单位类别5'),(36,'2021-03-09 11:07:09','单位类别6');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','m90ncxm0sie2375xd2ftneo7jwf6d65u','2021-03-09 14:51:01','2021-03-09 15:51:02'),(2,1615272724814,'1','yonghu','用户','3oxj1dkuebip00gjelsu8o25ctv5r5rr','2021-03-09 14:52:52','2021-03-09 15:53:45'),(3,41,'1','yuanxiaoguanliyuan','院校管理员','rpc5skrhgbvp2h1rim8awicu6960iny1','2021-03-09 14:53:20','2021-03-09 15:53:21');

/*Table structure for table `tongzhihuifu` */

DROP TABLE IF EXISTS `tongzhihuifu`;

CREATE TABLE `tongzhihuifu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '院校账号',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `huifuneirong` longtext COMMENT '回复内容',
  `huifushijian` datetime DEFAULT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272812836 DEFAULT CHARSET=utf8 COMMENT='通知回复';

/*Data for the table `tongzhihuifu` */

insert  into `tongzhihuifu`(`id`,`addtime`,`yuanxiaozhanghao`,`yonghuzhanghao`,`huifuneirong`,`huifushijian`) values (81,'2021-03-09 11:07:09','院校账号1','用户账号1','回复内容1','2021-03-09 11:07:09'),(82,'2021-03-09 11:07:09','院校账号2','用户账号2','回复内容2','2021-03-09 11:07:09'),(83,'2021-03-09 11:07:09','院校账号3','用户账号3','回复内容3','2021-03-09 11:07:09'),(84,'2021-03-09 11:07:09','院校账号4','用户账号4','回复内容4','2021-03-09 11:07:09'),(85,'2021-03-09 11:07:09','院校账号5','用户账号5','回复内容5','2021-03-09 11:07:09'),(86,'2021-03-09 11:07:09','院校账号6','用户账号6','回复内容6','2021-03-09 11:07:09'),(1615272812835,'2021-03-09 14:53:32','1','1','asdas','2021-03-11 00:00:00');

/*Table structure for table `tongzhituisong` */

DROP TABLE IF EXISTS `tongzhituisong`;

CREATE TABLE `tongzhituisong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '院校账号',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `yonghuzhanghao` varchar(200) DEFAULT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `tongzhineirong` longtext COMMENT '通知内容',
  `fasongshijian` datetime DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272788134 DEFAULT CHARSET=utf8 COMMENT='通知推送';

/*Data for the table `tongzhituisong` */

insert  into `tongzhituisong`(`id`,`addtime`,`yuanxiaozhanghao`,`fuzerenxingming`,`yonghuzhanghao`,`yonghuxingming`,`tongzhineirong`,`fasongshijian`) values (61,'2021-03-09 11:07:09','院校账号1','负责人姓名1','用户账号1','用户姓名1','通知内容1','2021-03-09 11:07:09'),(62,'2021-03-09 11:07:09','院校账号2','负责人姓名2','用户账号2','用户姓名2','通知内容2','2021-03-09 11:07:09'),(63,'2021-03-09 11:07:09','院校账号3','负责人姓名3','用户账号3','用户姓名3','通知内容3','2021-03-09 11:07:09'),(64,'2021-03-09 11:07:09','院校账号4','负责人姓名4','用户账号4','用户姓名4','通知内容4','2021-03-09 11:07:09'),(65,'2021-03-09 11:07:09','院校账号5','负责人姓名5','用户账号5','用户姓名5','通知内容5','2021-03-09 11:07:09'),(66,'2021-03-09 11:07:09','院校账号6','负责人姓名6','用户账号6','用户姓名6','通知内容6','2021-03-09 11:07:09'),(1615272788133,'2021-03-09 14:53:07','1','负责人姓名1','1','xx用户','aaaaaaaaaaaaa','2021-03-09 14:53:02');

/*Table structure for table `toupiaoxinxi` */

DROP TABLE IF EXISTS `toupiaoxinxi`;

CREATE TABLE `toupiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `houxuanrenxingming` varchar(200) DEFAULT NULL COMMENT '候选人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `gerenjieshao` longtext COMMENT '个人介绍',
  `zanchengpiao` int(11) DEFAULT NULL COMMENT '赞成票',
  `fanduipiao` int(11) DEFAULT NULL COMMENT '反对票',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='投票信息';

/*Data for the table `toupiaoxinxi` */

insert  into `toupiaoxinxi`(`id`,`addtime`,`houxuanrenxingming`,`xingbie`,`nianling`,`gerenjieshao`,`zanchengpiao`,`fanduipiao`,`gengxinshijian`) values (71,'2021-03-09 11:07:09','候选人姓名1','男','年龄1','个人介绍1',1,1,'2021-03-09 11:07:09'),(72,'2021-03-09 11:07:09','候选人姓名2','男','年龄2','个人介绍2',2,2,'2021-03-09 11:07:09'),(73,'2021-03-09 11:07:09','候选人姓名3','男','年龄3','个人介绍3',3,3,'2021-03-09 11:07:09'),(74,'2021-03-09 11:07:09','候选人姓名4','男','年龄4','个人介绍4',4,4,'2021-03-09 11:07:09'),(75,'2021-03-09 11:07:09','候选人姓名5','男','年龄5','个人介绍5',5,5,'2021-03-09 11:07:09'),(76,'2021-03-09 11:07:09','候选人姓名6','男','年龄6','个人介绍6',6,6,'2021-03-09 11:07:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-09 11:07:09');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `gerenziliao` varchar(200) DEFAULT NULL COMMENT '个人资料',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `danweileibie` varchar(200) DEFAULT NULL COMMENT '单位类别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615272724815 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`nianling`,`gerenziliao`,`zhaopian`,`lianxifangshi`,`danweileibie`) values (21,'2021-03-09 11:07:09','用户1','123456','用户姓名1','男','年龄1','','http://localhost:8080/springboot6yjn8/upload/yonghu_zhaopian1.jpg','联系方式1','单位类别1'),(22,'2021-03-09 11:07:09','用户2','123456','用户姓名2','男','年龄2','','http://localhost:8080/springboot6yjn8/upload/yonghu_zhaopian2.jpg','联系方式2','单位类别2'),(23,'2021-03-09 11:07:09','用户3','123456','用户姓名3','男','年龄3','','http://localhost:8080/springboot6yjn8/upload/yonghu_zhaopian3.jpg','联系方式3','单位类别3'),(24,'2021-03-09 11:07:09','用户4','123456','用户姓名4','男','年龄4','','http://localhost:8080/springboot6yjn8/upload/yonghu_zhaopian4.jpg','联系方式4','单位类别4'),(25,'2021-03-09 11:07:09','用户5','123456','用户姓名5','男','年龄5','','http://localhost:8080/springboot6yjn8/upload/yonghu_zhaopian5.jpg','联系方式5','单位类别5'),(26,'2021-03-09 11:07:09','用户6','123456','用户姓名6','男','年龄6','','http://localhost:8080/springboot6yjn8/upload/yonghu_zhaopian6.jpg','联系方式6','单位类别6'),(1615272724814,'2021-03-09 14:52:04','1','1','xx用户','性别1','年龄1','http://localhost:8080/springboot6yjn8/upload/1615272723412.docx','http://localhost:8080/springboot6yjn8/upload/danwei_zhaopian1.jpg','联系方式1','单位类别1');

/*Table structure for table `yuanxiao` */

DROP TABLE IF EXISTS `yuanxiao`;

CREATE TABLE `yuanxiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueyuanmingcheng` varchar(200) DEFAULT NULL COMMENT '学院名称',
  `ziliaowenjian` varchar(200) DEFAULT NULL COMMENT '资料文件',
  `xueyuanjianjie` longtext COMMENT '学院简介',
  `zhigongrenshu` varchar(200) DEFAULT NULL COMMENT '职工人数',
  `yuanxiaozhanghao` varchar(200) DEFAULT NULL COMMENT '院校账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='院校';

/*Data for the table `yuanxiao` */

insert  into `yuanxiao`(`id`,`addtime`,`xueyuanmingcheng`,`ziliaowenjian`,`xueyuanjianjie`,`zhigongrenshu`,`yuanxiaozhanghao`) values (11,'2021-03-09 11:07:09','学院名称1','','学院简介1','职工人数1','1'),(12,'2021-03-09 11:07:09','学院名称2','','学院简介2','职工人数2','院校账号2'),(13,'2021-03-09 11:07:09','学院名称3','','学院简介3','职工人数3','院校账号3'),(14,'2021-03-09 11:07:09','学院名称4','','学院简介4','职工人数4','院校账号4'),(15,'2021-03-09 11:07:09','学院名称5','','学院简介5','职工人数5','院校账号5'),(16,'2021-03-09 11:07:09','学院名称6','','学院简介6','职工人数6','院校账号6');

/*Table structure for table `yuanxiaoguanliyuan` */

DROP TABLE IF EXISTS `yuanxiaoguanliyuan`;

CREATE TABLE `yuanxiaoguanliyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuanxiaozhanghao` varchar(200) NOT NULL COMMENT '院校账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `fuzerenxingming` varchar(200) DEFAULT NULL COMMENT '负责人姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='院校管理员';

/*Data for the table `yuanxiaoguanliyuan` */

insert  into `yuanxiaoguanliyuan`(`id`,`addtime`,`yuanxiaozhanghao`,`mima`,`fuzerenxingming`,`xingbie`,`nianling`,`lianxifangshi`,`beizhu`) values (41,'2021-03-09 11:07:09','1','1','负责人姓名1','男',1,'联系方式1','备注1'),(42,'2021-03-09 11:07:09','院校管理员2','123456','负责人姓名2','男',2,'联系方式2','备注2'),(43,'2021-03-09 11:07:09','院校管理员3','123456','负责人姓名3','男',3,'联系方式3','备注3'),(44,'2021-03-09 11:07:09','院校管理员4','123456','负责人姓名4','男',4,'联系方式4','备注4'),(45,'2021-03-09 11:07:09','院校管理员5','123456','负责人姓名5','男',5,'联系方式5','备注5'),(46,'2021-03-09 11:07:09','院校管理员6','123456','负责人姓名6','男',6,'联系方式6','备注6');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
