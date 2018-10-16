----员工表
create table Emp (
  EmpNo int auto_increment primary key,--员工编号(EmpNo)	varchar	30	否	主键	条件自增
  EmpName varchar(30) not null,--姓名(EmpName)	varchar	30	否		
  EmpSex varchar(2) not null,--性别(EmpSex)	varchar	2	否		只能为:男,女
  IDcard varchar(18) not null,--身份证(IDcard)	varchar	18	否		
  DepartmentNo int not null,--部门(DepartmentNo)	int	30	是	外键	链接部门表
  Positivedates timestamp not null,--转正日期(Positivedates)	Time	Null	否	
  EmpPhone varchar(11) not null,--电话(EmpPhone)	varchar	11	否		
  intergralNo int not null,--积分(intergralNo)	varchar	20	否	外键	链接积分表
  position int not null --职位(position)	int	2	否	用户权限限制	1: 普通员工2: 经理 3:综合部经理4:校长
);
----部门表
create table Department(
  depaNo int auto_increment primary key,--部门编号(depaNo)	int	10	否	主键	用于链接员工表
  depaName varchar(30) not null,--部门名称(depaName)	varchar	30	否		
  parentDepa int--上级部门(parentDepa)	int	10	是		链接上级部门，可不写
);
----积分明细表
create table Integralschedule(
  intergralScheduleNo int auto_increment primary key,--积分记录编号(intergralScheduleNo)	int	不限制	否	主键	自增
  empNo int not null,--员工编号(empNo)	varchar	30	否		用于显示具体员工
  intergralChange varchar(300) not null,--积分变动原因(intergralChange)	varchar	300	否		
  Changeint int not null,--变更积分的数量(Changeint)	int	不限制	否		可为负数，用于加减积分
  ChangeDate timestamp not null,--积分变动时间(ChangeDate)	Time		否		查询积分具体变动时间
  IntegralNo int not null,--积分表编号(IntegralNo)	varchar	20	否		链接积分表，方便查询
  reviewer int not null,--审核人(reviewer)	varchar	30	否		积分加减的审核人
  IntegralTypeNo int not null--积分变动所属类别(IntegralTypeNo)	int	30	否	外键	
);
----积分审核表
create table IntegralAudit(
  IntegralAuditNo int auto_increment primary key,--积分审核编号(IntegralAuditNo)	int	不限制	否	主键	自增
  empNo int not null,--员工编号(empNo)	varchar	30	否		用于显示具体员工
  intergralChange varchar(300) not null,--积分变动原因(intergralChange)	varchar	300	否		
  Changeint int not null,--变更积分的数量(Changeint)	int	不限制	否		可为负数，用于加减积分
  reviewer int not null,--审核人(reviewer)	varchar	30	否		积分加减的审核人
  IntegralTypeNo int not null,--积分变动所属类别(IntegralTypeNo)	int	30	否	外键	
  AuditType int not null,--审核状态(AuditType)	int	2	否		用于判断意见状态
  AuditOpinion varchar(300)--审核人意见(AuditOpinion)	varchar	300	是		
);
----积分表
create table Integral (
IntergralNo int auto_increment primary key,--积分编号(intergralNo)	varchar	20	否	主键	通过员工表的积分字段链接
TotalIntegral int  not null,--总积分(totalIntegral)	int	300	否		不可为负，可为零
HaveIntegral int not null,--已用积分(HaveIntegral)	int	不限制	否		不可为负，可为零
RemainingPoints int not null,--剩余积分(remainingPoints)	int		否		不可为负，可为零
LastChangeTime timestamp not null--最后积分变动时间(lastChangeTime)	Time		否		用于具体查询
);
----积分类型表
create table IntegralType (
IntegralTypeNo int auto_increment primary key,--积分类型编号(?IntegralTypeNo)	int	30	否	主键	自增
IntegralTypeName varchar(10) not null--积分类型名称(IntegralTypeName)	varchar	10	否		
);
----商品表
create table Commodity (
CommodityNo int  auto_increment primary key,--商品编号(?CommodityNo)	varchar	20	否	主键	条件自增
price  int(38,2) not null,--商品价格(price)	Double	10	否		
NeedIntegral int not null,--商品所需积分(NeedIntegral)	int	不限制	否		
Commoditytitle varchar(50) not null,--商品标题(Commoditytitle)	varchar	50	否		
Commoditydetails varchar(300) not null,--商品详情(Commoditydetails)	varchar	300	否		商品具体详情
Commodityinventory int not null,--商品库存(Commodityinventory)	int	30	否		不可为负，可为零
CommodityTypeNo int not null--商品分类编号(CommodityTypeNo)	int	30	否	外键	链接商品分类表
);
----商品分类表
create table CommodityType (
CommodityTypeNo int auto_increment primary key,--商品分类编号(?CommodityTypeNo)	int	30	否	主键	自增
CommodityTypeName varchar(30) not null,--商品类型名称(CommodityTypeName)	Double	10	否		
SuperCommodityType int not null,--商品上级分类(SuperCommodityType)	int	30	否		
CommodityRank int not null--类型级别(CommodityRank)	int	2	否		用于类别分级
);
----商品评论表
create table CommodityReview (
 CommodityReviewNo int auto_increment primary key,--商品评论编号(CommodityReviewNo)	int	不限制	否	主键	
 CommodityNo int not null,--评论所属商品编号(CommodityNo)	varchar	20	否	外键	
 ReviewContent varchar(300) not null,--评论内容(ReviewContent)	varchar	300	否		
 EmpNo int not null,--评论员工(EmpNo)	varchar	30	否	外键	
 ReviewTime timestamp not null,--商品评论时间(ReviewTime)	varchar	300	否	
 imagerNo int --商品图片描述(imagerNo)	int	30	是	外键	
);
----图片表
create table Imager (
imagerNo int auto_increment primary key,--图片编号(?imagerNo)	int	30	否	主键	自增
imagerUrl varchar(300) not null,--图片路径(imagerUrl)	varchar	10	否		
Imageclassification varchar(20) not null,--图片所属类型(Imageclassification)	varchar	20	否		用于区分图片用途
ImagerDescription varchar(300) ,--图片描述(imagerDescription)	varchar	300	是		
ImagerId int--图片所属编号(ImagerId)	varchar	30	否		
);
--注:图片所属类型：
--1：商品图片2：用户图片3：轮播图片4：商品评论图片
--图片所属编号:
--1：根据所属类型来赋予相应表ID

----订单表
create table Orders(
  OrderNo int auto_increment primary key,--订单编号(?OrderNo)	int	30	否	主键	自增
  OrderIntegral varchar(10) not null,--订单所用积分(OrderIntegral)	varchar	10	否		
  OrderCommodityNo int not null,--订单商品(OrderCommodityNo)	varchar	20	否	外键
  OrderTime timestamp not null,--订单生成时间(OrderTime)	Date		否		
  OrderStatus int not null,--订单状态(OrderStatus)	int	1	否		1为已提交 2为待领取 3为已领取
  EmpNo int --下单人(EmpNo)	varchar	30	否	外键	
);
