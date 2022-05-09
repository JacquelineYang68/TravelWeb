/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.29 : Database - travel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`travel` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `travel`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL,
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `admin` */

insert  into `admin`(`id`,`name`,`password`) values ('1088810619659923456','admin','$2a$10$VarDOmyYc3EOnk2MlpJ3AuMXZTEAWFa7I.AhNW87xaEa139S1nWTi');

/*Table structure for table `carousel` */

DROP TABLE IF EXISTS `carousel`;

CREATE TABLE `carousel` (
  `id` varchar(64) COLLATE utf8_bin NOT NULL,
  `title` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `comment` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `scenictime` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `carousel` */

insert  into `carousel`(`id`,`title`,`comment`,`scenictime`) values ('1091587235217711104','旅行踏新途','世界任我游','尽在欣悦'),('1091595724371566592','旅游黄金周','私享内部价','实惠游天下');

/*Table structure for table `gallery` */

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL,
  `img` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `title` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '标题',
  `comment` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '内容',
  `city` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '城市国家',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `gallery` */

insert  into `gallery`(`id`,`img`,`title`,`comment`,`city`) values ('1249967873299107840','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/a92f8281c40446f5b4ff15ac13da0be5-dishini.jpg','香港','迪士尼',NULL),('1249968091428081664','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/8528991bf05d44ddbaa3c7da2bc6af27-jiuyanqiao.jpg','青岛','九眼桥',NULL),('1249968199347523584','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/fc5440d6e2d84d6aa2e837e9d90022d1-tiananmen.jpg','北京','天安门',NULL);

/*Table structure for table `hotel` */

DROP TABLE IF EXISTS `hotel`;

CREATE TABLE `hotel` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL,
  `img` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '图片',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '酒店名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `miaoshu` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `bed` int(10) DEFAULT NULL COMMENT '床数',
  `day` int(10) DEFAULT '1' COMMENT '天数',
  `star` int(10) DEFAULT '0' COMMENT '评论星',
  `startdate` datetime DEFAULT NULL COMMENT '入住时间',
  `addr` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '酒店城市',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `hotel` */

insert  into `hotel`(`id`,`img`,`name`,`price`,`miaoshu`,`bed`,`day`,`star`,`startdate`,`addr`) values ('1249924967049768960','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/ed2cabcf31994fcc8822e0e8550e1a8b-aomenh.jpg','澳门巴黎人酒店','1747.00','澳门巴黎人综合度假村的兴建是得到著名“光之城”-巴黎之魅力及奇光启发，其巴黎铁塔是按原型二分之一的比例复制建成。',29,NULL,0,NULL,'澳门'),('1249926414839623680','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/3e2f815bd5ad4d7f9865930fda854fbe-beijingh.jpg','北京希尔顿酒店','2318.00','酒店地处北京闻名遐迩的繁华闹市王府井大街，毗邻众多旅游景点及购物中心，占尽城市商业及文化中心的绝佳位置。',23,NULL,0,NULL,'北京'),('1249928080410324992','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/db380c9d8e7646c299b1057a6a318a98-chengduh.jpg','成都瑞吉酒店','867.00','位于成都CBD核心区域春熙路旁的提督街99号，无论您有何需求，瑞吉管家都将随时送上贴心服务，让您心满意足。',20,NULL,0,NULL,'成都'),('1249929078688231424','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/93f651b89f9742408ce51669ab049d7d-guangzhouh.jpg','广州天河希尔顿酒店','2016.00','位于市中心的商务区的核心地段，你可以轻松抵达香港、深圳。步行即可到达东方宝泰购物广场，美国领事馆签证处，亦可漫步城区，欣赏羊城人文风光。',40,NULL,0,NULL,'广州'),('1249930026777096192','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/456ddeace5614bcea7189e91481d69c8-hangzhouh.jpg','杭州启航国际大酒店','980.00','毗邻西溪国家湿地公园、法华山公园等景点，酒店设施一应俱全，地理位置优越，交通便捷。',36,NULL,0,NULL,'杭州'),('1249931291741433856','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/232c333eae794a2886c3373aa83eed23-lasah.jpg','拉萨瑞吉度假酒店','696.00','融合西方旧世界的奢华与藏文化的深邃神秘，拉萨瑞吉度假酒店秉承瑞吉百年品牌的精致优雅，于西藏首府拉萨，为您打造世界上海拔最高的首善之地。',18,NULL,0,NULL,'拉萨'),('1249932952744538112','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/0e1d9a9211544deaa3779ecf23e19330-lijiangh.jpg','丽江金茂君悦酒店','891.00','中国金茂集团与凯悦酒店集团强强联手，鼎立匠造的又一力作，全新体验漫游慢行、深度净化身心的品质度假享受。',36,NULL,0,NULL,'丽江'),('1249934092387266560','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/138ab991365945c3a07b19f86d4df712-nanjingh.jpg','南京中心大酒店','1028.00','毗邻江宁区政府和国家级开发区江宁技术经济开发区，各类高档配套设施一应俱全，以自然舒适高效的服务诠释独特浓厚的东方底蕴，彰显国际风范。',49,NULL,0,NULL,'南京'),('1249934960134238208','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/fb877ec00fae4bc28dd35a20ed472f15-qingdaoh.jpg','青岛金沙希尔顿酒店','2301.00','酒店坐落于东方影都星光岛，毗邻万达茂、水乐园近在咫尺，无论大朋友、小朋友都能找到自己心头所爱。',61,NULL,0,NULL,'青岛'),('1249936147445231616','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/6e6148fad6e54e81a70937cf5ffe71ad-sanyah.jpg','三亚凤凰岛海洋之星度假酒店','654.00','三亚凤凰岛为三亚市地标建筑，为打造国际养生度假中心而建的人工岛屿，四面环海，风景秀丽，是三亚湾上的一颗夜明珠。',79,NULL,0,NULL,'三亚'),('1249936915946582016','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/8e06574db9d34c51befd86950e2dbc41-shanghaih.jpg','上海希尔顿酒店','2890.00','位于高速发展的虹桥经济开发区，地理位置优越，酒店周围交通便捷，四周云集各类高端时尚购物中心、娱乐设施。',98,NULL,0,NULL,'上海'),('1249937912714539008','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/77af873289674797a205643b41cc7f67-shenzhenh.jpg','深圳丽湾酒店','1428.00','该酒店是一家高端精品涉外酒店，地理位置优越，秉行“宾客至上、追求卓越、团队协作、勇于负责”的核心价值观，成为旅客愉悦的居停住所。',91,NULL,0,NULL,'深圳'),('1249938897780387840','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/df0861002bf64d75a5d93958305feecf-tianjinh.jpg','天津环亚国际马球协会大酒店','3648.00','坐落于飞速发展的滨海高新区，占地90万平方公顷，绿草如因。紧邻地标性建筑高银金融177大厦，地理位置优越，交通十分便捷。',58,NULL,0,NULL,'天津'),('1249940354747379712','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/bedd836944484d3a8f4ded67a26a210a-wuhanh.jpg','武汉万达嘉华酒店','4821.00','坐落于武汉市中央商务文化区楚河汉街核心地段，可俯瞰楚河，尽览繁华市貌。同时拥有风格迥异的各式餐厅，为您打造尊贵的味觉盛宴。',78,NULL,0,NULL,'武汉'),('1249942370865426432','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/908260507c2943b5a8cbf867705239fe-xianggangh.jpg','香港洲际酒店','898.00','该酒店是一家集住宿、餐饮、商务、会议、旅游等服务为一体的五星级大酒店。酒店拥有各类客房，拥有大型多功能会议厅。',37,NULL,0,NULL,'香港');

/*Table structure for table `hotel_orders` */

DROP TABLE IF EXISTS `hotel_orders`;

CREATE TABLE `hotel_orders` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `scenicid` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '商品id',
  `userid` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `payment` decimal(10,2) DEFAULT NULL COMMENT '总支付金额',
  `status` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `scenicname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `begin` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '入住时间',
  `end` varchar(2255) COLLATE utf8_bin DEFAULT NULL COMMENT '离开时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `hotel_orders` */

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `scenicid` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '商品id',
  `userid` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '用户id',
  `qty` int(11) DEFAULT NULL COMMENT '数量',
  `payment` decimal(10,2) DEFAULT NULL COMMENT '总支付金额',
  `status` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '状态',
  `paytime` datetime DEFAULT NULL COMMENT '支付时间',
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '电话',
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `scenicname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `orders` */

/*Table structure for table `scenic` */

DROP TABLE IF EXISTS `scenic`;

CREATE TABLE `scenic` (
  `id` varchar(64) CHARACTER SET utf8 NOT NULL COMMENT 'id',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '景点名称',
  `img` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '景点图片',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `miaoshu` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '描述',
  `comment` varchar(200) COLLATE utf8_bin DEFAULT NULL COMMENT '详情',
  `stock` int(32) DEFAULT NULL COMMENT '库存',
  `start` int(12) DEFAULT NULL COMMENT '评分',
  `contry` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '国家地区',
  `startdate` datetime DEFAULT NULL COMMENT '出发时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `scenic` */

insert  into `scenic`(`id`,`name`,`img`,`price`,`miaoshu`,`comment`,`stock`,`start`,`contry`,`startdate`) values ('1249894218120593408','澳门','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/ddcd9d11628a4fa9946e3326dcfa9487-aomen.jpg','338.00','国际自由港和世界旅游休闲中心','\n此次旅行包括的景点：澳门历史城区、大三巴牌坊、观光塔、葡京赌场、妈阁庙、谭公庙等。',17,0,'澳门','2020-04-15 07:00:00'),('1249895105492713472','北京','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/341994fcc1a240a2810bd65153596f39-beijing.jpg','507.00','最海纳百川的城市','此次旅行包括的景点：天安门广场、故宫、圆明园、颐和园、八达岭长城、明十三陵等 。',23,0,'北京','2020-04-16 08:00:00'),('1249903839073812480','成都','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/11019704b42140eaad5e8cbacadb1a40-chengdu.jpg','489.00','最具幸福感的城市','此次旅行包括的景点：都江堰、青城山、武侯祠、杜甫草堂、金沙遗址等。',43,0,'成都','2020-04-09 07:30:00'),('1249904966930546688','广州','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/3836833a2c894e0293f4d295240da6fa-guangzhou.jpg','646.00','中国通往世界的南大门','此次旅行包括的景点有：花城广场、广州塔、陈家祠、宝墨园、长隆旅游度假区、沙面、圣心大教堂等。',15,0,'广州','2020-04-10 06:45:00'),('1249906469372182528','杭州','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/ac001fc18992430ba1d2e7e4cdf11bc8-hangzhou.jpg','305.00','风景秀丽，“人间天堂”','本次旅行包括的景点：西湖、京杭大运河、西溪湿地、灵隐寺、六和塔、湘湖等。',6,0,'杭州','2020-04-24 07:15:00'),('1249907237110169600','拉萨','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/63c8a1d3e5354aa9a67a11989ee46e6c-lasa.jpg','216.00','最接近天堂的地方','本次旅行包括的景点：布达拉宫、罗布林卡、大昭寺、小昭寺、哲蚌寺、色拉寺等。',45,0,'拉萨','2020-04-30 09:00:00'),('1249907916507725824','丽江','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/afe89cb6d8f645698a0a4365c416d354-lijiang.jpg','307.00','最文艺的城市','本次旅行包括的景点：丽江古城、玉龙雪山、白沙壁画、虎跳峡、老君山、束河古镇等。',36,0,'丽江','2020-04-17 10:30:00'),('1249908873765339136','南京','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/0e72af84a62e403796a40a3d5f1a6a25-nanjing.jpg','412.00','最有历史感的城市','本次旅行包括的景点：中山陵、明孝陵、明城墙、玄武湖、夫子庙、紫金山、鸡鸣寺等。',25,0,'南京','2020-04-16 08:00:00'),('1249909987168501760','青岛','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/d3be75192bb44ff998162d8173a1387f-qingdao.jpg','268.00','最酒里酒气的城市','本次旅行包括的景点：崂山、五四广场、八大关、栈桥、青岛奥帆中心、金沙滩、大珠山等。',28,1,'青岛','2020-04-22 08:20:00'),('1249910675437010944','三亚','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/acbc9c39d3574636be80d3e4d8411267-sanya.jpg','362.00','最美的海边城市','本次旅行包括的景点：亚龙湾、三亚湾、天涯海角、南山、大小洞天、大东海、鹿回头等。',11,0,'三亚','2020-04-17 06:10:00'),('1249911293463511040','上海','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/7dc23ebce4704ca98cd35b85a29863ad-shanghai.jpg','542.00','最有魔力的城市','本次旅行包括的景点：外滩、豫园、南京路、人民广场、静安寺、新天地、迪士尼乐园等。',3,0,'上海','2020-04-29 08:00:00'),('1249912985038897152','深圳','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/92bb71d7543f4c1bac055ad2b3e29440-shenzhen.jpg','680.00','改革开放的窗口','此次旅行包括的景点：世界之窗、欢乐谷、东部华侨城、大小梅沙、中英街、大鹏所城等。',28,0,'深圳','2020-05-01 07:20:00'),('1249913772347506688','天津','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/be875dbe9af6471d92b48cedef36ccdc-tianjin.jpg','549.00','国家物流的枢纽','此次旅行包括的景点：五大道、天津之眼、盘山、古文化街、水上公园、黄崖关长城等。',79,0,'天津','2020-04-30 08:00:00'),('1249914311240073216','武汉','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/080382dfd71242c8b06bc7315f7caa1c-wuhan.jpg','396.00','最有可能成为樱花女神的地方','此次旅行包括的景点：东湖、黄鹤楼、木兰山、汉口租界、归元寺、欢乐谷、楚河汉界等。',37,0,'武汉','2020-05-08 13:10:00'),('1249915052637831168','香港','https://xinyue-storage.oss-cn-shenzhen.aliyuncs.com/images/2020-04-14/b866d92c2c2c4e2084ff2a826dfafa08-xianggang.jpg','472.00','东方之珠，美食购物天堂','此次旅行包括的景点：维多利亚港、迪士尼乐园、海洋公园、杜莎夫人蜡像馆等。',80,0,'香港','2020-04-11 10:00:00');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` varchar(120) COLLATE utf8_bin NOT NULL COMMENT 'id',
  `name` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '姓名',
  `password` varchar(120) COLLATE utf8_bin DEFAULT NULL COMMENT '密码',
  `mobile` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '手机号码',
  `email` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT '邮箱',
  `sex` char(6) COLLATE utf8_bin DEFAULT '1' COMMENT '性别，男1，女0',
  `age` int(16) DEFAULT NULL COMMENT '年龄',
  `salt` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT '盐',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`mobile`,`email`,`sex`,`age`,`salt`) values ('1249974150418976768','yjt','$2a$10$BRkSpAhhdcjIzLTHDZDXw.T.NU.MhfA4cEhJYFZUVzaNhXY0zO.qe','15643921168','1007579629@qq.com',NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
