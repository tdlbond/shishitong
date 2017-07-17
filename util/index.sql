-- MySQL dump 10.13  Distrib 5.6.33, for Win64 (x86_64)
--
-- Host: localhost    Database: demo2
-- ------------------------------------------------------
-- Server version	5.6.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

drop database if exsits demo2;
create database demo2;
use demo2;

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `apic` varchar(50) NOT NULL,
  `atitle` varchar(50) NOT NULL,
  `ainfo` varchar(100) NOT NULL,
  `adate` date DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (10,'yjy.gif','落实习近平在\"科技三会\"上的重要讲话一周年述评','新华社北京5月30日电  题：在新起点上，勇攀世界科技高峰！——落实习近平总书记在“科技三会”上的重要讲话一周年述评','2017-05-31'),(11,'ygs.png','李克强访欧三大“看点”值得期待','李克强总理将于5月31日至6月2日正式访问德国并举行中德总理年度会晤、赴布鲁塞尔举行第十九次中国—欧盟领导人会晤、对比利时进行正式访问','2017-05-31'),(12,'tsh.gif','特朗普密友涉嫌逃税13亿 曾为其总统选举提供助力','美国总统特朗普的密友兼重要捐资人托马斯·巴拉克涉嫌出售度假庄园时巨额逃税1.7亿欧元（约合13亿元人民币），在意大利受到调查','2017-05-31'),(13,'qhjg.gif','安倍与文在寅通话:非重启对话时机 或遭朝鲜利用','新华社首尔5月30日电 韩国总统文在寅与日本首相安倍晋三30日通电话，就朝鲜半岛核问题交换意见，双方表现出微妙的立场差异','2017-05-31'),(14,'ycb.gif','山东高院:于欢案二审全程直播 驳\"暗箱操作\"说法','5月27日,备受关注的于欢故意伤害案二审在山东省高级人民法院公开开庭审理','2017-05-31'),(15,'lg.gif','外国第二大黑帮头目在沈阳贩毒被逮 情节有如电影','沈阳警方抓获外国籍贩毒嫌疑人5名，缴获毒品冰毒1千克，彻底摧毁了一条由R国、H国贩毒嫌疑人组织，经中国辽宁向R国走私毒品的地下网络','2017-05-31'),(16,'jc.gif','中国电价下降1分1 节约全社会用电成本350亿元','新华社北京5月30日电 与百姓生活息息相关的电价去年以来持续下调。记者30日从国家电网公司获悉，已征收50多年的城市公用事业附加费近期被取消，此举可使我国平均每度电价降低1分1左右','2017-05-31'),(17,'haha.jpg','央视记者携带防弹衣在泰被拘 恐面临最高5年监禁','受央视中国国际电视台(CGTN)委托前往伊拉克采访的英籍华裔记者郑礼先当天在泰国机场转机时，因其行李中带有防弹背心和防毒面具被泰国警方以违反《武器管制法》为由拘留','2017-05-31'),(18,'yjh.gif','韩国警方：崔顺实女儿在飞往韩国飞机上被逮捕',' 韩联社称，韩国警方5月31日表示，在飞往韩国的大韩航空飞机上，警方逮捕了崔顺实女儿郑维罗，预计当天下午3点15分（韩国时间）到达韩国仁川机场','2017-05-31');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cpic` varchar(50) NOT NULL,
  `ctitle` varchar(50) NOT NULL,
  `cinfo` varchar(100) NOT NULL,
  `cdate` date DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (12,'cyb.jpg','创业邦','最懂创业者，离资本最近','2017-05-31'),(13,'thz.gif','拓荒族','集办公、营销、孵化功能三位一体的企业发展生态圈','2017-05-31'),(14,'yct.gif','洋葱投','洋葱投致力于为创业者打造一个全方位、宽领域、多元化的创投平台','2017-05-31'),(15,'kkd.gif','可可豆创新孵化平台','可可豆创新孵化平台隶属于可可集团','2017-05-31'),(16,'zkj.jpg','中科金','为科技企业提供多元化、多层次、全方位的金融服务','2017-05-31'),(17,'ypkj.jpg','硬派空间','位于中关村创业大街，由创业大街运营管理公司海置科创创办','2017-05-31'),(18,'ckkf.gif','车库咖啡','是中关村创业大街最早的一批主题咖啡厅之一','2017-05-31'),(19,'3wkf.gif','3W咖啡','互联网主题馆，旗下包含3W咖啡馆、3W创新传媒等','2017-05-31'),(20,'binggo.gif','binggo咖啡','咖啡店，跨界创新型孵化器','2017-05-31');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `npic` varchar(50) NOT NULL,
  `ntitle` varchar(50) NOT NULL,
  `ninfo` varchar(100) NOT NULL,
  `ndate` date DEFAULT NULL,
  PRIMARY KEY (`nid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (12,'haha.jpg','德方代表为中国总理鼓掌','5月24日，国务院总理李克强在北京中南海紫光阁会见来华出席中德高级别人文交流对话机制首次会议的德国副总理兼外交部长加布里尔','2017-06-01'),(13,'ctq.gif','FBI就特朗普女婿库什纳与俄罗斯关系发起调查','据美国哥伦比亚广播公司5月25日消息，FBI就特朗普女婿贾里德·库什纳与俄罗斯关系发起调查','2017-05-31'),(14,'cyhm.jpg','英国空军轰炸IS 炸弹上写来自曼彻斯特的爱','英国皇家空军在轰炸“伊斯兰国”(IS)的炸弹上，嘲讽写着来自曼彻斯特的爱','2017-05-31'),(15,'fm.gif','内蒙古自治区政协原副主席赵黎平被执行死刑','最高人民法院审理被告人内蒙古自治区政协原副主席赵黎平故意杀人、受贿、非法持有枪支、弹药、非法储存爆炸物死刑复核一案，近日依法裁定核准赵黎平死刑','2017-05-31'),(16,'north.gif','著名外交家顾维钧遗孀严幼韵去世 享年112岁','严幼韵，她的人生即便不能说是传奇，至少也可以说是跌宕起伏、精彩纷呈了','2017-05-31'),(17,'jgs.gif','山东检方:辱母案处警民警不构成玩忽职守 不予立案','媒体报道山东省聊城市于欢故意伤害案后，检察机关高度重视。山东省人民检察院认真贯彻最高人民检察院要','2017-05-31'),(18,'ic.gif','真人车贴走红被吐槽 司机路上“看见”已故男星','市民李先生看到的已故男星保罗·沃克的车窗贴也有网店销售。从实物图中能看出，这种车贴有可能让旁车司机吓一跳','2017-05-31'),(19,'36kr.gif','以黄大年为榜样 习近平强调3个学习','习近平近日对黄大年同志先进事迹作出重要指示。以黄大年为榜样，习近平强调3个学习','2017-05-31'),(21,'yjy.gif','HTML DOM addEventListener() 方法','addEventListener() 方法用于向指定元素添加事件句柄。使用 removeEventListener() 方法来移除 addEventListener() 方法添加的事件句柄。','2017-06-01');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (3,'admin','admin','123@qq.com'),(4,'tom','123','tom@163.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-02  9:28:57
