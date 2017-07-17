drop database if exsits demo2;
create database demo2;
use demo2;
create table news(
	nid int primary key auto_increment,
	npic varchar(50) not null,
	ntitle varchar(50) not null,
	ninfo varchar(100) not null,
	ndate date
)default charset='utf8';

create table company(
	cid int primary key auto_increment,
	cpic varchar(50) not null,
	ctitle varchar(50) not null,
	cinfo varchar(100) not null,
	cdate date
)default charset='utf8';

create table activity(
	aid int primary key auto_increment,
	apic varchar(50) not null,
	atitle varchar(50) not null,
	ainfo varchar(100) not null,
	adate date
)default charset='utf8';

create table users(
	id int primary key auto_increment,
	username varchar(20) unique not null,
	password varchar(30) not null,
	email varchar(50) not null
)default charset='utf8';

/*insert into news values
(null, 'picture', '以黄大年为榜样 习近平强调3个学习', '习近平近日对黄大年同志先进事迹作出重要指示。以黄大年为榜样，习近平强调3个学习' ,'2017/5/26'),
(null, 'picture', '李克强为何如此牵挂棚改?这有上亿人的泪水和欢欣', '一项公共政策，往前看，8年间惠及8000多万人;往后看，未来3年受益者又近5000万人' ,'2017/5/26'),
(null, 'picture', '德方代表为中国总理鼓掌', '5月24日，国务院总理李克强在北京中南海紫光阁会见来华出席中德高级别人文交流对话机制首次会议的德国副总理兼外交部长加布里尔' ,'2017/5/26'),
(null, 'picture', 'FBI就特朗普女婿库什纳与俄罗斯关系发起调查', '据美国哥伦比亚广播公司5月25日消息，FBI就特朗普女婿贾里德·库什纳与俄罗斯关系发起调查' ,'2017/5/26'),
(null, 'picture', '英国空军轰炸IS 炸弹上写来自曼彻斯特的爱', '英国皇家空军在轰炸“伊斯兰国”(IS)的炸弹上，嘲讽写着来自曼彻斯特的爱' ,'2017/5/26'),
(null, 'picture', '内蒙古自治区政协原副主席赵黎平被执行死刑', '最高人民法院审理被告人内蒙古自治区政协原副主席赵黎平故意杀人、受贿、非法持有枪支、弹药、非法储存爆炸物死刑复核一案，近日依法裁定核准赵黎平死刑' ,'2017/5/26'),
(null, 'picture', '著名外交家顾维钧遗孀严幼韵去世 享年112岁', '严幼韵，她的人生即便不能说是传奇，至少也可以说是跌宕起伏、精彩纷呈了' ,'2017/5/26'),
(null, 'picture', '山东检方:辱母案处警民警不构成玩忽职守 不予立案', '媒体报道山东省聊城市于欢故意伤害案后，检察机关高度重视。山东省人民检察院认真贯彻最高人民检察院要' ,'2017/5/26'),
(null, 'picture', '真人车贴走红被吐槽 司机路上“看见”已故男星', '市民李先生看到的已故男星保罗·沃克的车窗贴也有网店销售。从实物图中能看出，这种车贴有可能让旁车司机吓一跳' ,'2017/5/26');*/

/*insert into company values
(null, 'cyb.jpg', '创业邦', '最懂创业者，离资本最近' ,'2017/5/26'),
(null, 'thz.gif', '拓荒族', '集办公、营销、孵化功能三位一体的企业发展生态圈' ,'2017/5/26'),
(null, 'yct.gif', '洋葱投', '洋葱投致力于为创业者打造一个全方位、宽领域、多元化的创投平台' ,'2017/5/26'),
(null, 'kkd.gif', '可可豆创新孵化平台', '可可豆创新孵化平台隶属于可可集团' ,'2017/5/26'),
(null, 'zkj.jpg', '中科金', '为科技企业提供多元化、多层次、全方位的金融服务' ,'2017/5/26'),
(null, 'ypkj.jpg', '硬派空间', '位于中关村创业大街，由创业大街运营管理公司海置科创创办' ,'2017/5/26'),
(null, 'ckkf.gif', '车库咖啡', '是中关村创业大街最早的一批主题咖啡厅之一' ,'2017/5/26'),
(null, '3wkf.gif', '3W咖啡', '互联网主题馆，旗下包含3W咖啡馆、3W创新传媒等' ,'2017/5/26'),
(null, 'binggo.gif', 'binggo咖啡', '咖啡店，跨界创新型孵化器' ,'2017/5/26');*/

insert into users values (null, "admin", "admin", "123@qq.com");