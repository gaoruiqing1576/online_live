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
/**3.创建二手房首页信息表**/
CREATE TABLE live_product(
  pid INT  PRIMARY KEY AUTO_INCREMENT,
  img VARCHAR(128),
  location VARCHAR(64),   #房源所属地区
  title VARCHAR(128), 
  size  VARCHAR(64),  #房源规模(两室一厅,110平方米)
  floor VARCHAR(32),    #楼层
  build times VARCHAR(64), #建造时间
  address VARCHAR(256),  #房屋地址
  main  VARCHAR(64), #特点(交通便利,近地铁)
  sprice INT,  #房屋总价
  price DECIMAL(10,2) #房屋单价(1平米)
);
/**3.创建二手房房源详情表**/
CREATE TABLE live_details(
  did INT  PRIMARY KEY AUTO_INCREMENT,

);

