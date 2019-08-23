/**创建数据库在线看房live;**/
SET NAMES UTF8;
DROP DATABASE IF EXISTS live;
CREATE DATABASE live CHARSET=UTF8;
USE live;

/**1.创建用户信息表**/
CREATE TABLE live_user(
   uid INT PRIMARY KEY AUTO_INCREMENT,
   uname VARCHAR(32),   #用户注册时的用户名
   upwd  VARCHAR(32),
   phone VARCHAR(16),
   avatar VARCHAR(128), #暂时未写用户头像路径
   user_name VARCHAR(32),  #用户真实姓名
   gender BOOL
);

/**2.创建首页轮播图表**/
CREATE TABLE live_carousel(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(256),
  title VARCHAR(64),  #主标题
  subtitle  VARCHAR(128),   #副标题
  details   VARCHAR(128),  #细节信息(价格,户型面积)
  href VARCHAR(128)    #图片链接
);

/*区域划分*/
CREATE TABLE live_family(
  fid  INT PRIMARY KEY AUTO_INCREMENT,
  fname VARCHAR(32)
);
INSERT INTO live_family VALUES
(NULL,"未央区"),
(NULL,"雁塔区"),
(NULL,"碑林区"),
(NULL,"新城区");


/**3.创建二手房首页信息表**/
CREATE TABLE live_product(
  pid INT  PRIMARY KEY AUTO_INCREMENT,
  fanily_id  INT,     #房源所属地区
  title VARCHAR(128),   #房源标题
  spec  VARCHAR(64),  #房源规模(两室一厅)
  size  VARCHAR(32),    #房源大小(110平方米)
  floor VARCHAR(32),    #楼层
  build_times VARCHAR(64), #建造时间
  address VARCHAR(256),  #房屋地址
  tags  VARCHAR(64),   #标签(交通便利,近地铁站)
  landlord  VARCHAR(32),    #房东
  sprice VARCHAR(32),  #房屋总价
  aprice VARCHAR(32),  #房屋均价(1平米)
  img VARCHAR(64),     #图片地址
  href VARCHAR(128)    
);
#未央区
INSERT INTO live_product VALUES
(NULL,1,"龙首原地铁口 地段好 城市新苑 两室两厅 户型方正 满三满二","二室二厅","89","低层(共23层)","2009","城市雅苑 未央-北二环西段-二环北路西段49号","近地铁站 安全性高 环境优美","孙召","95","10623元/m²","img/index/wy/01.jpg","details"),
(NULL,1,"福安公寓 温馨两室 适合在西安上班的年轻人 价位低可以按揭","二室二厅","75","中层(共24层)","2009","福安公寓 未央-方新村-方新路136号","新房房源 配套成熟 朝南坐北","王雪松","89.8","11973元/m²","img/index/wy/02.jpg","details"),
(NULL,1,"大明宫西地铁口 添好花园 两室 纯南户型 满三满二 交通便利","二室二厅","70","中层(共28层)","2008","添好花园 未央-方新村-未央大道","小区中心	南北通透	交通便利","孙召","93","13145元/m²","img/index/wy/03.jpg","details"),
(NULL,1,"佳家SPORT 唯一一套 园林社区人车分流 刚需小两室可按揭","二室二厅","66","中层(共30层)","2011","佳家SPORT 未央-北二环西段-北二环路","近地铁站 安全性高 环境优美","李诗雨","82","12303元/m²","img/index/wy/04.jpg","details"),
(NULL,1,"浐灞生态 浐灞一小学驱房 浐灞一号精装小三室 全明户型采光棒","三室二厅","96","低层(共30层)","2013","浐灞一号 未央-辛家庙-浐灞大道","新房房源 配套成熟 朝南坐北","李诗雨","125","12969元/m²","img/index/wy/05.jpg","details"),
(NULL,1,"二环边 大型社区 业主自住 坐等签约 手慢则无","二室二厅","89","低层(共31层)","2009","西瑞北国之春 未央-辛家庙-二环北路东段396号","小区中心 南北通透 交通便利","汪维","105","11680元/m²","img/index/wy/06.jpg","details"),
(NULL,1,"自家亲戚房 佳家花园两室 同行别来晒脸 园林社区 可按揭","二室二厅","80","高层(共26层)","2009","佳家SPORT 未央-北二环西段-北二环路","近地铁站 安全性高 环境优美","王雪松","94.9","11860元/m²","img/index/wy/07.jpg","details"),
(NULL,1,"鸵鸟王十字 福安公寓 精装两室 双气电梯房 交通便利 可按揭","二室二厅","104","中层(共24层)","2010","福安公寓 未央-方新村-方新路136号","新房房源	配套成熟	朝南坐北","李诗雨","100","9600元/m²","img/index/wy/08.jpg","details"),
(NULL,1,"二环金桥太阳岛 小高层精装三室 带电梯 大型社区 自带幼儿园","三室二厅","125","高层(共7层)","2012","金桥太阳岛 未央-北二环西段-北二环路","小区中心	南北通透	交通便利","王雪松","140","11185元/m²","img/index/wy/09.jpg","details"),
(NULL,1,"龙首村地铁口 时代明丰苑 两室两厅 纯南户型 精装修 可按揭","二室二厅","94","低层(共28层)","2010","时代明丰苑 未央-方新村-未央路68号","近地铁站	安全性高	环境优美","孙娟","125","13170元/m²","img/index/wy/10.jpg","details"),
(NULL,1,"鸵鸟王十字 汉城湖旁 福安公寓 两室两厅 无浪费面积 商品房","二室二厅","89","低层(共24层)","2008","福安公寓 未央-方新村-方新路136号","新房房源	配套成熟	朝南坐北","孙召","100","11125元/m²","img/index/wy/11.jpg","details"),
(NULL,1,"绿地香树花城 献给奋斗在西安的年轻人过一房两人三餐四季的生活","二室一厅","73","高层(共32层)","2017","绿地香树花城 未央-辛家庙-北辰大道,近浐灞二路","小区中心	南北通透	交通便利","王雪松","90","12288元/m²","img/index/wy/12.jpg","details"),
(NULL,1,"浐灞一号 学 区房 精 装小三室 业主诚心 坐等签约","三室一厅","96","中层(共31层)","2012","浐灞一号 未央-辛家庙-浐灞大道","近地铁站	安全性高	环境优美","汪维","130","13434元/m²","img/index/wy/13.jpg","details"),
(NULL,1,"北二环边 范家村小学 75中隔壁  精装小三室 证在可按揭","三室二厅","89","中层(共33层)","2012","荣城名苑 未央-北二环西段-明光路177号","新房房源	配套成熟	朝南坐北","李诗雨","128","14252元/m²","img/index/wy/14.jpg","details"),
(NULL,1,"品牌开发商 洋房社区 品牌家具家电业主生意失利急需钱 可按揭","二室二厅","72","高层(共33层)","2013","绿地香树花城 未央-辛家庙-北辰大道,近浐灞二路","小区中心	南北通透	交通便利","李诗雨","115","15880元/m²","img/index/wy/15.jpg","details"),
(NULL,1,"绿地香树花城 小区自带外国语学校 业主诚心出售","二室二厅","70","中层(共32层)","2014","绿地香树花城 未央-辛家庙-北辰大道,近浐灞二路","近地铁站	安全性高	环境优美","汪维","105","14949元/m²","img/index/wy/16.jpg","details"),               
(NULL,1,"绿地香树花城 两室两厅 全明户型 装修没的说 满三满二 无税","二室二厅","73","中层(共32层)","2014","绿地香树花城 未央-辛家庙-北辰大道,近浐灞二路","新房房源	配套成熟	朝南坐北","孙召","120","16400元/m²","img/index/wy/17.jpg","details"),
(NULL,1,"急售 新上超值房源 方新村西区 中装两室两厅 满三满二可按揭","二室二厅","105","高层(共6层)","2003","方新村西区 未央-文景南路-方新路33号","小区中心	南北通透	交通便利","刘春阳","95","9048元/m²","img/index/wy/18.jpg","details"),
(NULL,1,"北二环佳家花园 精装三室 三代同堂 成熟社区 适合安居乐业","三室二厅","139","中层(共22层)","2010","佳家SPORT 未央-北二环西段-北二环路","近地铁站	安全性高	环境优美","王雪松","144","10350元/m²","img/index/wy/19.jpg","details"),
(NULL,1,"未央区 学校环绕 人车分流 自带幼儿园 精装小三室 看房随时","三室二厅","90","中层(共27层)","2013","荣城名苑 未央-北二环西段-明光路177号","新房房源	配套成熟	朝南坐北","赵冰冰","125","13889元/m²","img/index/wy/20.jpg","details"),
(NULL,1,"二环边 金腰带 金仕华城 品质小区 业主诚心出售","二室一厅","92","中层(共11层)","2010","金仕华城 未央-北二环西段-北二环,近朱宏路","近地铁站	安全性高 环境优美","汪维","112","12174元/m²","img/index/wy/01.jpg","details"),
(NULL,1,"紧邻汉城湖 品质小区 业主自住 状况良好 手慢则无","二室一厅","110","低层(共31层)","2009","福安公寓 未央-方新村-方新路136号","新房房源	配套成熟 朝南坐北","汪维","100","9071元/m²","img/index/wy/02.jpg","details"),
(NULL,1,"鸵鸟王十字 福安公寓 精装一室 双气电梯房 交通便利 可按揭","一室一厅","50","中层(共28层)","2010","福安公寓 未央-方新村-方新路136号","小区中心 南北通透	交通便利","李诗雨","55","10898元/m²","img/index/wy/03.jpg","details"),
(NULL,1,"融创河景loft 买一得二 浐灞核心 复式大挑空 不限购","二室一厅","45","中层(共18层)","2016","世园大观 未央-辛家庙-灞河西路,近兴泰南路","近地铁站	安全性高	环境优美","孙朝阳","55","12222元/m²","img/index/wy/04.jpg","details"),
(NULL,1,"绿地香树花城 品质小区  业主诚心出售 随时可以看房","五室三厅","272","低层(共6层)","2014","绿地香树花城 未央-辛家庙-北辰大道,近浐灞二路","新房房源	配套成熟	朝南坐北","汪维","480","17616元/m²","img/index/wy/05.jpg","details"),
(NULL,1,"二环边 佳家花园 大型运动型社区 小区配套设施 完善","三室二厅","137","中层(共28层)","2009","佳家SPORT 未央-北二环西段-北二环路","小区中心	南北通透	交通便利","汪维","160","11630元/m²","img/index/wy/06.jpg","details"),
(NULL,1,"北二环 园林社区 进门大广场 佳家SPORT 毛坯三室可按揭","三室二厅","145","高层(共25层)","2012","佳家SPORT 未央-北二环西段-北二环路","近地铁站	安全性高	环境优美","李诗雨","145","10000元/m²","img/index/wy/07.jpg","details"),
(NULL,1,"二环边 佳家花园 好房来袭 大三室 大型运动社区 采光好","三室二厅","145","高层(共26层)","2008","佳家SPORT 未央-北二环西段-北二环路","新房房源	配套成熟	朝南坐北","孙召","156","10759元/m²","img/index/wy/08.jpg","details"),
(NULL,1,"158跳楼价 业主现场签 园林社区大三室 中间楼层可按揭","三室二厅","165","高层(共25层)","2011","佳家SPORT 未央-北二环西段-北二环路","小区中心 南北通透 交通便利","李诗雨","171","10302元/m²","img/index/wy/09.jpg","details"),
(NULL,1,"158跳楼价 业主现场签 园林社区大三室 中间楼层可按揭","一室二厅","48","高层(共25层)","2011","佳家SPORT 未央-北二环西段-北二环路","小区中心 南北通透 交通便利","李诗雨","48","10302元/m²","img/index/wy/19.jpg","details"),
(NULL,1,"紧邻汉城湖 品质小区 业主自住 状况良好 手慢则无","一室一厅","78","低层(共31层)","2009","福安公寓 未央-方新村-方新路136号","新房房源	配套成熟 朝南坐北","汪维","49","9071元/m²","img/index/wy/12.jpg","details"),
(NULL,1,"鸵鸟王十字 福安公寓 精装一室 双气电梯房 交通便利 可按揭","一室一厅","50","中层(共28层)","2010","福安公寓 未央-方新村-方新路136号","小区中心 南北通透	交通便利","李诗雨","55","10898元/m²","img/index/wy/13.jpg","details"),
(NULL,1,"融创河景loft 买一得二 浐灞核心 复式大挑空 不限购","二室一厅","45","中层(共18层)","2016","世园大观 未央-辛家庙-灞河西路,近兴泰南路","近地铁站	安全性高	环境优美","孙朝阳","55","12222元/m²","img/index/wy/14.jpg","details"),
(NULL,1,"绿地香树花城 品质小区  业主诚心出售 随时可以看房","五室三厅","272","低层(共6层)","2014","绿地香树花城 未央-辛家庙-北辰大道,近浐灞二路","新房房源	配套成熟	朝南坐北","汪维","480","17616元/m²","img/index/wy/15.jpg","details"),

#雁塔区

(NULL,2,"中介费1.5 小区一站 S教育 两室 南北通透 不临街 可按揭","二室二厅","80","高层(共7层)","2000","唐园小区 雁塔-电子正街-电子正街168号","近地铁站 安全性高 环境优美","易倩倩","80","10000元/m²","img/index/yt/01.jpg","details"),
(NULL,2,"拥金1.5 电子正街 温馨两室 繁华地段 诚心出售 房本在手","二室一厅","83","高层(共24层)","2008","怡兴大厦  雁塔-电子城-电子正街87号","新房房源	配套成熟	朝南坐北","潘绚丽","98","11807元/m²","img/index/yt/02.jpg","details"),
(NULL,2,"超低甩手 手慢则无 曲江品筑 精装俩室 业主诚心出售","二室二厅","84","高层(共33层)","2008","曲江品筑 雁塔-西影路-西影路52号","小区中心 交通便利	南北通透","屈凯","123","14624元/m²","img/index/yt/03.jpg","details"),
(NULL,2,"好消息！紫郡长安 业主自住房 精装二室 满三满二 随时看房!","二室二厅","91","中层(共32层)","2010","紫郡长安南区  雁塔-长安西路-朱雀大街南段6号","近地铁站	安全性高	环境优美","林芳","131.8","14332元/m²","img/index/yt/04.jpg","details"),
(NULL,2,"拥金1.5 电子正街 繁华地段 唐园小区 自带学校 多层一楼","三室一厅","89","低层(共7层)","2000","唐园小区  雁塔-电子正街-电子正街168号","新房房源	配套成熟	朝南坐北","潘绚丽","98","11011元/m²","img/index/yt/05.jpg","details"),
(NULL,2,"绝世好房 低于小区10 西电旁 三号线太白南路站","二室二厅","80","中层(共28层)","2011","小悉尼新都  雁塔-西斜七路-光华路","小区中心	交通便利	南北通透","朱理岳","125","15470元/m²","img/index/yt/06.jpg","details"),
(NULL,2,"南二环 地铁三号线旁 刚需两室 带学校 证满二 可按揭","二室二厅","86","中层(共30层)","2009","阳光嘉庭  雁塔-含光路-南二环 近永松路","近地铁站	安全性高	环境优美","刘敏新","115","13267元/m²","img/index/yt/07.jpg","details"),
(NULL,2,"会展中心地铁口，精装一居室，布局合理 满三满二 可按揭","一室一厅","47","高层(共30层)","2010","明德8英里  雁塔-电视塔-丈八东路6号","新房房源	配套成熟	朝南坐北","赵永增","60","12706元/m²","img/index/yt/08.jpg","details"),
(NULL,2,"急售！拥金1点5 电子城小学对面精装 标准一室一厅 配套齐全","一室一厅","51","中层(共24层)","2008","怡兴大厦  雁塔-电子城-电子正街87号","小区中心 交通便利	南北通透","余香贵","68","13333元/m²","img/index/yt/09.jpg","details"),
(NULL,2,"拥金1 5电子正街 石油大学旁 双卫双阳台 产证在手满2","二室二厅","101","中层(共18层)","2010","幸福时光  雁塔-电子正街-电子二路 近电子东路","近地铁站 安全性高 环境优美","孙望飞","115","11386元/m²","img/index/yt/10.jpg","details"),
(NULL,2,"绿地国际生态城 五湖名邸东区 精装小三室 满三满二 可按揭","二室二厅","87","中层(共33层)","2014","绿地国际生态城五湖名邸东区 雁塔-等驾坡-东月路,近花间路","新房房源	配套成熟	朝南坐北","贾彬","148","16833元/m²","img/index/yt/11.jpg","details"),
(NULL,2,"城南电视塔地铁口 刚需两室全明户型 品质社区环境优美交通便利","二室二厅","61","低层(共33层)","2014","华城泊郡 雁塔-三森国际家俱城-雁环中路,近长安南路","小区中心	交通便利	南北通透","胡雄博","91","14768元/m²","img/index/yt/12.jpg","details"),
(NULL,2,"经典南北通透 精装两室 无敌采光  证过二 华城国际 可按揭","二室二厅","83","中层(共30层)","2010","华城国际 雁塔-电视塔-长安南路82号","近地铁站	安全性高 环境优美","宋军委","128","15322元/m²","img/index/yt/13.jpg","details"),
(NULL,2,"高新区金泰 两室带指标 业主急售  捡漏","二室二厅","90","中层(共26层)","2010","金泰假日花城一期 雁塔-电子城-太白南路1号","新房房源	配套成熟	朝南坐北","于鑫","145","16038元/m²","img/index/yt/14.jpg","details"),
(NULL,2,"电视塔 紫郡长安精装大三居 南向 不临街安静 首付三成可按揭","三室二厅","131","低层(共32层)","2012","紫郡长安南区 雁塔-长安西路-朱雀大街南段6号","小区中心	交通便利 南北通透","丁正正","175","13307元/m²","img/index/yt/15.jpg","details"),
(NULL,2,"人气小区 伟丰花园 近地铁站 环境超好 抢手房源 两室精装全送","二室二厅","91","中层(共20层)","2013","伟丰花园 雁塔-明德门-朱雀路3号","近地铁站	安全性高	环境优美","王晓","125","13699元/m²","img/index/yt/16.jpg","details"),
(NULL,2,"罗曼公社住宅两房两厅证过二不临街楼层中间底价出售看房随时","二室二厅","92","低层(共28层)","2010","罗曼公社 雁塔-电子城-太白南路33号","新房房源	配套成熟	朝南坐北","张振英","120","13043元/m²","img/index/yt/17.jpg","details"),
(NULL,2,"高新管委会旁 太白南路 天正幸福里 精装两室 产权清晰无税","二室二厅","93","中层(共26层)","2012","天正幸福里 雁塔-电子城-太白南路39号","小区中心	交通便利	南北通透","周凤月","122","13089元/m²","img/index/yt/18.jpg","details"),
(NULL,2,"城南 电视塔会展中心地铁口旁 朝南大三室全明户型 满三过二","三室二厅","141","低层(共33层)","2012","紫郡长安南区 雁塔-长安西路-朱雀大街南段6号","近地铁站	安全性高	环境优美","林芳","178","12613元/m²","img/index/yt/19.jpg","details"),
(NULL,2,"中介.费1.5 中建群星汇 精装修 家具家电全送 拎包入住","二室二厅","77","高层(共33层)","2013","中建群星汇 雁塔-电子正街-东仪路","新房房源	配套成熟	朝南坐北","	陈立","130","16863元/m²","img/index/yt/20.jpg","details"),
(NULL,2,"新装修！丈八东路 裕昌大两居 南北通透 中间全明户型 诚心卖","二室二厅","101","高层(共28层)","2013","裕昌太阳城 雁塔-电子城-丈八东路123号","小区中心	交通便利	南北通透","强江涛","143","14078元/m²","img/index/yt/01.jpg","details"),
(NULL,2,"七夕特别推荐  爱她就给她一个家 三室可以按揭 证在手","三室二厅","115","低层(共28层)","2009","榕青无界 雁塔-明德门-丈八东路 近东仪路","近地铁站	安全性高	环境优美","党勇","140","12131元/m²","img/index/yt/02.jpg","details"),
(NULL,2,"世家星城 E区 标准三室 送60大花园 采光好 不临街","三室二厅","142","低层(共9层)","2010","世家星城三期E区 雁塔-明德门-长安西路","新房房源	配套成熟	朝南坐北","张维博","245","17193元/m²","img/index/yt/03.jpg","details"),
(NULL,2,"电视塔东仪路 人人乐超市旁 唐园假日 新城精装 两室 满三过二 产证在手","二室二厅","100","中层(共28层)","2010","唐园假日 雁塔-明德门-丈八东路 近东仪路","小区中心	交通便利	南北通透","王海龙","127.5","12707元/m²","img/index/yt/04.jpg","details"),
(NULL,2,"西部大道 锦业路 金地西沣公元 标准一室 大雁塔小学 随时看","一室一厅","49","高层(共33层)","2015","金地西沣公元 雁塔-电子城-西沣路 近西部大道","近地铁站	安全性高	环境优美","刘斌卓","75","15097元/m²","img/index/yt/05.jpg","details"),
(NULL,2,"低价 建工路 幸福林带旁 高绿化园林小区 天然居南区","三室二厅","113","高层(共26层)","2011","鑫龙天然居南区 雁塔-等驾坡-公园南路 近建工路","新房房源	配套成熟	朝南坐北","李琳","150","13274元/m²","img/index/yt/06.jpg","details"),
(NULL,2,"急急急！建工路商圈 精装小三室 园林小区  产证在手 可按揭","三室二厅","113","高层(共25层)","2010","鑫龙天然居南区 雁塔-等驾坡-公园南路 近建工路","小区中心	交通便利	南北通透","路超","150","13274元/m²","img/index/yt/07.jpg","details"),
(NULL,2,"高新区都市之门旁 双地铁 双气入户 民水民电 豪装loft","三室二厅","90","中层(共18层)","2018","立丰城市生活广场 雁塔-电子城-丈八东路 近子午大道","近地铁站	安全性高 环境优美","毛建霞","172","19111元/m²","img/index/yt/08.jpg","details"),
(NULL,2,"拥金1.5 电子二路 晟方佳苑精装一室一厅 拎包入住 随时看","一室一厅","38","中层(共28层)","2010","晟方佳苑 雁塔-电子城-电子二路 近无名小路","新房房源	配套成熟	朝南坐北","潘绚丽","54","14019元/m²","img/index/yt/09.jpg","details"),
(NULL,2,"高新区 高新国际学校对面 精装修  一室一厅小户型！","一室一厅","54","中层(共28层)","2017","海亮时代ONE 雁塔-电子正街-西沣路,近西沣二路","小区中心	交通便利	南北通透","毛建霞","68","12593元/m²","img/index/yt/10.jpg","details"),
(NULL,2,"不夜城 龙湖曲江盛景 急售上叠 全配 送双车库","四室二厅","283","共5层","2010","龙湖曲江盛景 雁塔-电视塔-雁南二路","近地铁站 安全性高 环境优美","梁晨","1000","35271元/m²","img/index/yt/11.jpg","details"),

#碑林区

(NULL,3,"碑林区 柿园路 兴庆公园对面 兴庆宫 新装修没住过人 可按揭","二室二厅","91","低层(共30层)","2018","兴庆宫 碑林-东关正街-新廓门33号","新房房源	配套成熟 朝南坐北","王康","126","13786元/m²","img/index/bl/01.jpg","details"),
(NULL,3,"钟楼南大街 朱雀门 六中 中行家属院二室东西通透1楼 证在手","二室二厅","85","低层(共7层)","2003","西安晚报家属院 碑林-南大街-四府街33号","小区中心	交通便利	南北通透","郭毅平","108","12706元/m²","img/index/bl/02.jpg","details"),
(NULL,3,"东门外 西京医院 五道十字 长乐坊三室 双气 市政供暖 有证","三室二厅","95","低层(共33层)","2013","长乐坊小区  碑林-长乐坊-伍道十字南街","近地铁站	安全性高 环境优美","杨玉艳","105","11039元/m²","img/index/bl/03.jpg","details"),
(NULL,3,"太乙路 曼城国际 一室经典户型 带家具家电 产证在手","一室一厅","56","高层(共32层)","2012","曼城国际 碑林-太乙路-南二环路 近太乙路","新房房源	配套成熟 朝南坐北","李文飞","85","15179元/m²","img/index/bl/04.jpg","details"),
(NULL,3,"太乙路 铁一中 丽苑小区 三室有证可按揭","三室二厅","114","高层(共25层)","2006","丽苑 碑林-太乙路-太乙路5号","小区中心 交通便利	南北通透","徐巧玲","123","10742元/m²","img/index/bl/05.jpg","details"),
(NULL,3,"不限购 钟楼 地铁口 精装 西大街 可按揭 包所有税 广济街","一室一厅","50","低层(共12层)","2008","荣民国际公寓  碑林-南大街-南广济街94号","近地铁站	安全性高	环境优美","张世民","60","11926元/m²","img/index/bl/16.jpg","details"),
(NULL,3,"东门外 东关正街 人人乐 东方星苑两室 有证 可按揭","二室二厅","85","低层(共30层)","2013","东方星苑  碑林-东关正街-东关正街109号","新房房源	配套成熟	朝南坐北","杨玉艳","99","11572元/m²","img/index/bl/07.jpg","details"),
(NULL,3,"西工大 边家村 水文巷 大学南路小学本部 东泰北区 精装两室","二室二厅","74","低层(共33层)","2010","东泰城市之光  碑林-大学南路-边东街18号","小区中心	交通便利	南北通透","陈润","165","22282元/m²","img/index/bl/08.jpg","details"),
(NULL,3,"南二环 铁五小 曼城国际 一室一厅 精装修 好户型 拎包入住","一室一厅","56","高层(共32层)","2012","曼城国际 碑林-太乙路-南二环路,近太乙路","近地铁站	安全性高	环境优美","白艳","85","15179元/m²","img/index/bl/09.jpg","details"),
(NULL,3,"曼城国际精装一室 落户直接铁五小 邻建筑科技大 第九医院","一室二厅","56","中层(共32层)","2012","曼城国际 碑林-太乙路-南二环路,近太乙路","新房房源	配套成熟	朝南坐北","郑新","85","15179元/m²","img/index/bl/10.jpg","details"),
(NULL,3,"碑林 东关正街 兴庆宫观景房 精装两室双气  有证可按揭","二室二厅","78","中层(共30层)","2012","兴庆宫 碑林-东关正街-新廓门33号","小区中心	交通便利	南北通透","杨玉艳","115","14744元/m²","img/index/bl/11.jpg","details"),
(NULL,3,"朱雀门外 环城南路 南门地铁 枫绿国际 三室精装朝南 有钥匙","三室二厅","122","高层(共34层)","2013","枫绿国际住宅小区 碑林-环城南路-朱雀大街北段132号","近地铁站	安全性高	环境优美","郭毅平","163","13281元/m²","img/index/bl/12.jpg","details"),
(NULL,3,"长安路 朱雀大街 省医院 枫绿国际精装三室 有证 可按揭","三室二厅","124","高层(共34层)","2012","合能朱阙 碑林-环城南路-朱雀大街72号","新房房源	配套成熟	朝南坐北","王增庆","162","13065元/m²","img/index/bl/13.jpg","details"),
(NULL,3,"建国路 建国4巷 26中 精装二室 落户上学 有证 可按揭","二室一厅","64","高层(共7层)","1998","建国五巷59号院 碑林-南大街-建国五巷59号","小区中心	交通便利	南北通透","杨博","78","12188元/m²","img/index/bl/14.jpg","details"),
(NULL,3,"李家村 测绘西路 家属院5层 总高7层 53平50 朝南 暖气 有证 可按揭","二室一厅","53","高层(共7层)","2000","碑林区城市管理局家属院 碑林-李家村-测绘西路95号","近地铁站	安全性高	环境优美","赵欧阳","50","9434元/m²","img/index/bl/15.jpg","details"),
(NULL,3,"菊花园3楼11朝南 可按揭有证","一室一厅","43","中层(共7层)","2001","马厂子小区 碑林-大差市-县门北巷","新房房源	配套成熟	朝南坐北","周爱丽","46","10698元/m²","img/index/bl/16.jpg","details"),
(NULL,3,"快售李家村 消防总队家属院 南北通透 三室 66平米62","三室一厅","66","高层(共6层)","2000","陕西消防总队家属院 碑林-李家村-安东街11号","小区中心	交通便利	南北通透","何宇","62","9394元/m²","img/index/bl/17.jpg","details"),
(NULL,3,"建国路小学26中 小户型 总价低 6楼 两室一厅 可按揭","二室一厅","45","高层(共6层)","2000","新兴小区 碑林-大差市-建国路,近无名路","近地铁站	安全性高	环境优美","曹旭","52","11556元/m²","img/index/bl/18.jpg","details"),
(NULL,3,"柿园路 兴庆公园北门 东方星座 三室精装 南北通透 双气有证","三室二厅","141","中层(共30层)","2006","东方星座 碑林-东关正街-柿园路196号","新房房源	配套成熟	朝南坐北","臧甜甜","155","10993元/m²","img/index/bl/19.jpg","details"),
(NULL,3,"交大对面 地铁口 房东急售 仅一套其他贵30","四室二厅","163","低层(共25层)","2008","新兴名园 碑林-西安交通大学-友谊东路8号","小区中心	交通便利	南北通透","刘西西","170","10429元/m²","img/index/bl/20.jpg","details"),
(NULL,3,"南门地铁站 文艺北路 陕歌家属院三室 有证可按揭","三室一厅","76","低层(共6层)","1995","陕歌家属院 碑林-南稍门-文艺北路","近地铁站	安全性高	环境优美","姚泽","84","10992元/m²","img/index/bl/01.jpg","details"),
(NULL,3,"新出！李家村达标准一室一厅 带租约 产权无抵押 随时过户","一室一厅","46","高层(共29层)","2008","达广场 碑林-李家村-雁塔路北段8号","新房房源	配套成熟	朝南坐北","左庆伟","66","14209元/m²","img/index/bl/02.jpg","details"),
(NULL,3,"雁塔路李家村地铁口 达广场精装二室一厅产权清晰.随时过户","二室一厅","85","低层(共30层)","2008","达广场 碑林-李家村-雁塔路北段8号","小区中心	交通便利	南北通透","刘容杰","125","14706元/m²","img/index/bl/03.jpg","details"),
(NULL,3,"东南城角太乙路 功德小区 精装双气送全套家具 价位可谈","三室二厅","135","高层(共22层)","2004","功德小区 碑林-太乙路-太乙路182号","近地铁站	安全性高	环境优美","李奎","150","11077元/m²","img/index/bl/04.jpg","details"),
(NULL,3,"小南门里 晚报家属院 南北通透 三室两厅 90平米92","三室二厅","90","高层(共6层)","2000","西安晚报家属院 碑林-南大街-四府街33号","新房房源	配套成熟	朝南坐北","李八民","92","10222元/m²","img/index/bl/05.jpg","details"),
(NULL,3,"豪华装修 一室 带家具家电 拎包入住 有证可按揭 曼城国际","一室一厅","56","高层(共32层)","2010","曼城国际 碑林-太乙路-南二环路,近太乙路","小区中心	交通便利	南北通透","宋港","85","15179元/m²","img/index/bl/16.jpg","details"),
(NULL,3,"兰蒂斯城3期 毛坯3居室 产权清晰可按揭！ 真实实拍 随时看","三室二厅","132","中层(共32层)","2015","兰蒂斯城3期 碑林-西安交通大学-交大街 近北沙坡街","近地铁站	安全性高	环境优美","左庆伟","202","15221元/m²","img/index/bl/07.jpg","details"),
(NULL,3,"东门外 柿园路东方星座 三室两厅 南向可看湖 好采光 大面积","三室二厅","141","高层(共30层)","2005","东方星座 碑林-东关正街-柿园路196号","新房房源	配套成熟	朝南坐北","葛嘉翔","156","11064元/m²","img/index/bl/08.jpg","details"),
(NULL,3,"东二环 通化门长乐公园地铁口 秦和花苑两室一口价96 急售","二室一厅","96","高层(共20层)","2007","秦和花苑 碑林-东关正街-互助路26A号","小区中心	交通便利	南北通透","程龙龙","96","9994元/m²","img/index/bl/09.jpg","details"),
(NULL,3,"房子满三满二  诚心出售  可按揭  简装两室","二室一厅","99","高层(共18层)","2009","乐居东方 碑林-西安交通大学-乐居场正街68号","近地铁站	安全性高	环境优美","史根旭","136","13693元/m²","img/index/bl/10.jpg","details"),
(NULL,3,"东门外 兴庆公园旁三室精装 可按揭 观景房 临近经九路 三中","三室二厅","138","中层(共32层)","2013","兴庆宫 碑林-东关正街-新廓门33号","新房房源	配套成熟	朝南坐北","郑七军","256","18425元/m²","img/index/bl/11.jpg","details"),
(NULL,3,"兴庆公园观景房俯瞰整个兴庆公园","二室一厅","101","高层(共24层)","2019","兴庆九号 碑林-环城南路-兴庆路","小区中心	交通便利	南北通透","史根旭","100","9901元/m²","img/index/bl/12.jpg","details"),

#新城区

(NULL,4,"新城区 胡家庙地铁口 唐韵三坊 精装两室 满三满二 看房方便","二室二厅","87","中层(共33层)","2013","唐韵三坊 新城-胡家庙-长缨东路159号","新房房源	配套成熟	朝南坐北","范博宇","120","13708元/m²","img/index/xc/01.jpg","details"),
(NULL,4,"石家街地铁口  铂廷小区 89平两室两厅115 有证可按揭","二室二厅","89","高层(共27层)","2013","铂廷 新城-含元路-含元路61号","小区中心	交通便利	南北通透","赵婷婷","121","13480元/m²","img/index/xc/02.jpg","details"),
(NULL,4,"新兴骏景园2期 两室带幼儿园 双飘窗餐客一体 胡家庙地铁口","二室二厅","92","中层(共27层)","2010","新兴骏景园二期 新城-胡家庙-金花北路369号","近地铁站	安全性高	环境优美","齐院院","110","11841元/m²","img/index/xc/03.jpg","details"),
(NULL,4,"新城区 胡家庙地铁口 陕建机集团第三社区 精装南北 有证","二室一厅","61","低层(共7层)","2003","陕建机集团第三社区 新城-胡家庙-长缨西路134号","新房房源	配套成熟	朝南坐北","樊宁","61","10000元/m²","img/index/xc/04.jpg","details"),
(NULL,4,"急售好房胡家庙 唐韵三坊 精装两室全配拎包住 超性价比","二室二厅","76","中层(共32层)","2013","唐韵三坊 新城-胡家庙-长缨东路159号","小区中心	交通便利	南北通透","王军龙","100","13053元/m²","img/index/xc/05.jpg","details"),
(NULL,4,"长缨路小学斜对面 世纪华城 二室 2层 朝南可上长缨路小学","二室一厅","58","低层(共7层)","2004","丹尼尔世纪华城 新城-胡家庙-长缨西路","近地铁站	安全性高	环境优美","	南艳","55","9483元/m²","img/index/xc/06.jpg","details"),
(NULL,4,"胡家庙 和城旁 丹尼尔世纪华城 58平两室58 有证","二室一厅","58","低层(共7层)","2003","丹尼尔世纪华城 新城-胡家庙-长缨西路","新房房源	配套成熟	朝南坐北","樊宁","58","10000元/m²","img/index/xc/07.jpg","details"),
(NULL,4,"72中学 区房长缨路小学学 区2楼58平55二室南北可按揭","二室一厅","58","低层(共7层)","2010","丹尼尔世纪华城 新城-胡家庙-长缨西路","小区中心	交通便利	南北通透","张伟","55","9483元/m²","img/index/xc/08.jpg","details"),
(NULL,4,"烟草公司家属院西一路小学附近钟楼地铁口 一室 朝南 有电梯","一室一厅","57","高层(共14层)","2003","烟草公司家属院 新城-解放路-南长巷25号","近地铁站	安全性高	环境优美","周宗林","83","14561元/m²","img/index/xc/09.jpg","details"),
(NULL,4,"胡家庙地铁口 唐韵三坊 简装三室  可按揭 看房方便 诚信卖","三室二厅","101","高层(共33层)","2013","唐韵三坊 新城-胡家庙-长缨东路159号","新房房源	配套成熟	朝南坐北","齐院院","110","10891元/m²","img/index/xc/10.jpg","details"),
(NULL,4,"长乐东路 幸福林带 两室 纯南 双气 可按揭 双地铁 看房方","二室二厅","95","中层(共30层)","2008","紫薇家天下 新城-长乐中路-长乐东路88号","小区中心	交通便利	南北通透","郑七军","116","12101元/m²","img/index/xc/11.jpg","details"),
(NULL,4,"石家街地铁口 龙记帝景湾两室 东南向全明户型 无税可按揭","二室二厅","87","低层(共32层)","2014","龙记帝景湾 新城-含元路-含元路","近地铁站	安全性高	环境优美","杨伟航","127","14566元/m²","img/index/xc/12.jpg","details"),
(NULL,4,"千亩幸福林带旁 韩森寨天马小区方正两室有证可按揭","二室一厅","73","高层(共28层)","2013","天马小区 新城-韩森寨-幸福中路","新房房源	配套成熟	朝南坐北","徐芸","91.5","12534元/m²","img/index/xc/13.jpg","details"),
(NULL,4,"长乐东路幸福林带旁 家天下 两室精装 双气 可按揭 双地铁","二室二厅","95","中层(共24层)","2008","紫薇家天下 新城-长乐中路-长乐东路88号","小区中心	交通便利	南北通透","董文娟","116","12101元/m²","img/index/xc/14.jpg","details"),
(NULL,4,"安远门地铁口 郝家巷小学 自强西路 枫韵沁园 二室精装证按","二室二厅","93","高层(共26层)","2012","枫韵沁园 新城-自强西路-自强西路82号","近地铁站	安全性高	环境优美","吴文龙","126","13519元/m²","img/index/xc/15.jpg","details"),
(NULL,4,"东二环胡家庙地铁口附近百合苑三室精装128平95有证可按揭","三室二厅","128","高层(共7层)","2004","百合苑 新城-康复路-长缨西路158号","新房房源	配套成熟	朝南坐北","刘辉","96","7500元/m²","img/index/xc/16.jpg","details"),
(NULL,4,"含元路 丰元小区 双地铁 大两室 南北通透 户型方正有证按揭","二室二厅","105","中层(共6层)","2010","丰元小区 新城-含元路-含元路","小区中心	交通便利	南北通透","徐哲","100","9524元/m²","img/index/xc/17.jpg","details"),
(NULL,4,"胡家庙地铁口 唐韵三坊和郡 两室精装 业主诚心出售 随时看房","二室二厅","74","高层(共33层)","2012","唐韵三坊 新城-胡家庙-长缨东路159号","近地铁站	安全性高	环境优美","赵冰冰","105","14069元/m²","img/index/xc/18.jpg","details"),
(NULL,4,"东二环 高端改善 精装 毗邻幸福林带 四条地铁环绕 无税","三室二厅","112","中层(共32层)","2018","融创东方宸院 新城-韩森寨-韩森路90号","新房房源	配套成熟	朝南坐北","曹彬学","182","16250元/m²","img/index/xc/19.jpg","details"),
(NULL,4,"城内解放路民乐园达广场一室稀有好户型 产证在手可按揭","一室","45","中层(共7层)","2010","解放路民乐园达广场公寓 新城-五路口-解放路","小区中心	交通便利	南北通透","彭国雄","60","13280元/m²","img/index/xc/20.jpg","details"),
(NULL,4,"石家街地铁口彩云郡园林社区精装两室南北通透落地阳台可按揭无税","二室二厅","93","高层(共28层)","2010","彩云郡 新城-含元路-东元西路8号","近地铁站	安全性高	环境优美","李娇娇","115","12343元/m²","img/index/xc/01.jpg","details"),
(NULL,4,"胡家庙地铁口 大型园林社区 骏景园 精美两居 有证无税可按揭","二室二厅","103","高层(共28层)","2010","新兴骏景园 新城-胡家庙-金花北路369号","新房房源	配套成熟	朝南坐北","徐哲","120","11565元/m²","img/index/xc/02.jpg","details"),
(NULL,4,"胡家庙地铁口 金泰社区 简装二室 纯南朝向 满三满2 可按揭","二室一厅","60","中层(共7层)","2003","金泰社区 新城-胡家庙-金花北路26号","小区中心	交通便利	南北通透","樊宁","62","10333元/m²","img/index/xc/03.jpg","details"),
(NULL,4,"胡家庙地铁口 金泰社区 简装二室 纯南朝向 满三满2 可按揭","二室一厅","60","中层(共7层)","2005","金泰社区 新城-胡家庙-金花北路26号","近地铁站	安全性高	环境优美","马建刚","62","10333元/m²","img/index/xc/04.jpg","details"),
(NULL,4,"石家街 地铁口 全明  精装 未住 可按揭 新城区 明府佳苑","三室二厅","103","高层(共29层)","2014","上和郡 新城-八府庄-东园西路11号","小区中心	交通便利	南北通透","张世民","122","11845元/m²","img/index/xc/06.jpg","details"),
(NULL,4,"业主坐等签合同 胡家庙 长缨东路 汉杰天赐良苑 精装小两房","二室一厅","62","高层(共18层)","2010","汉杰天赐良苑 新城-胡家庙-长缨路东路41号","近地铁站	安全性高	环境优美","宋林昕","76","12219元/m²","img/index/xc/07.jpg","details"),
(NULL,4,"融创东方辰园 二环主城区 精装高层洋房社区 四地铁 幸福林带","三室二厅","124","中层(共32层)","2018","融创东方宸院 新城-韩森寨-韩森路90号","新房房源	配套成熟	朝南坐北","王欠欠","210","16935元/m²","img/index/xc/08.jpg","details"),
(NULL,4,"四条地铁 二环内 融创东方宸院 精装小高层 拎包入住","三室二厅","112","低层(共18层)","2018","融创东方宸院 新城-韩森寨-韩森路90号","小区中心	交通便利	南北通透","杨婷","190","16964元/m²","img/index/xc/09.jpg","details"),
(NULL,4,"新城 太华南路 光明小区2楼 双气南北双气集中供暖","二室二厅","90","低层(共7层)","2004","光明小区 新城-含元路-太华南路461号","近地铁站 安全性高	环境优美","惠佳园","98","10889元/m²","img/index/xc/10.jpg","details"),
(NULL,4,"华山十七街坊 两室低层带花园 可按揭随时看房","二室二厅","76","低层(共7层)","2005","华山十七街坊 新城-韩森寨-康乐路","新房房源	配套成熟	朝南坐北","樊宁","83","10830元/m²","img/index/xc/11.jpg","details");

