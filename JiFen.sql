##Ա����
create table Emp (
  EmpNo int auto_increment primary key,#Ա�����(EmpNo)	varchar	30	��	����	��������
  EmpName varchar(30) not null,#����(EmpName)	varchar	30	��		
  EmpSex varchar(2) not null,#�Ա�(EmpSex)	varchar	2	��		ֻ��Ϊ:��,Ů
  IDcard varchar(18) not null,#���֤(IDcard)	varchar	18	��		
  DepartmentNo int not null,#����(DepartmentNo)	int	30	��	���	���Ӳ��ű�
  Positivedates timestamp not null,#ת������(Positivedates)	Time	Null	��	
  EmpPhone varchar(11) not null,#�绰(EmpPhone)	varchar	11	��		
  intergralNo int not null,#����(intergralNo)	varchar	20	��	���	���ӻ��ֱ�
  position int not null, #ְλ(position)	int	2	��	�û�Ȩ������	1: ��ͨԱ��2: ���� 3:�ۺϲ�����4:У��
  empType int not null #�ж��û�״̬���Ƿ��¼
);
##���ű�
create table Department(
  depaNo int auto_increment primary key,#���ű��(depaNo)	int	10	��	����	��������Ա����
  depaName varchar(30) not null,#��������(depaName)	varchar	30	��		
  parentDepa int#�ϼ�����(parentDepa)	int	10	��		�����ϼ����ţ��ɲ�д
);
##������ϸ��
create table Integralschedule(
  intergralScheduleNo int auto_increment primary key,#���ּ�¼���(intergralScheduleNo)	int	������	��	����	����
  empNo int not null,#Ա�����(empNo)	varchar	30	��		������ʾ����Ա��
  intergralChange varchar(300) not null,#���ֱ䶯ԭ��(intergralChange)	varchar	300	��		
  Changeint int not null,#������ֵ�����(Changeint)	int	������	��		��Ϊ���������ڼӼ�����
  ChangeDate timestamp not null,#���ֱ䶯ʱ��(ChangeDate)	Time		��		��ѯ���־���䶯ʱ��
  IntegralNo int not null,#���ֱ���(IntegralNo)	varchar	20	��		���ӻ��ֱ������ѯ
  reviewer int not null,#�����(reviewer)	varchar	30	��		���ּӼ��������
  IntegralTypeNo int not null#���ֱ䶯�������(IntegralTypeNo)	int	30	��	���	
);
##������˱�
create table IntegralAudit(
  IntegralAuditNo int auto_increment primary key,#������˱��(IntegralAuditNo)	int	������	��	����	����
  empNo int not null,#Ա�����(empNo)	varchar	30	��		������ʾ����Ա��
  intergralChange varchar(300) not null,#���ֱ䶯ԭ��(intergralChange)	varchar	300	��		
  Changeint int not null,#������ֵ�����(Changeint)	int	������	��		��Ϊ���������ڼӼ�����
  reviewer int not null,#�����(reviewer)	varchar	30	��		���ּӼ��������
  IntegralTypeNo int not null,#���ֱ䶯�������(IntegralTypeNo)	int	30	��	���	
  AuditType int not null,#���״̬(AuditType)	int	2	��		�����ж����״̬
  AuditOpinion varchar(300)#��������(AuditOpinion)	varchar	300	��		
);
##���ֱ�
create table Integral (
IntergralNo int auto_increment primary key,#���ֱ��(intergralNo)	varchar	20	��	����	ͨ��Ա����Ļ����ֶ�����
TotalIntegral int  not null,##�ܻ���(totalIntegral)	int	300	��		����Ϊ������Ϊ��
HaveIntegral int not null,#���û���(HaveIntegral)	int	������	��		����Ϊ������Ϊ��
RemainingPoints int not null,#ʣ�����(remainingPoints)	int		��		����Ϊ������Ϊ��
LastChangeTime timestamp not null#�����ֱ䶯ʱ��(lastChangeTime)	Time		��		���ھ����ѯ
);
##�������ͱ�
create table IntegralType (
IntegralTypeNo int auto_increment primary key,#�������ͱ��(?IntegralTypeNo)	int	30	��	����	����
IntegralTypeName varchar(10) not null#������������(IntegralTypeName)	varchar	10	��		
);
##��Ʒ��
create table Commodity (
CommodityNo int  auto_increment primary key,#��Ʒ���(?CommodityNo)	varchar	20	��	����	��������
price  DOUBLE not null,#��Ʒ�۸�(price)	Double	10	��		
NeedIntegral int not null,#��Ʒ�������(NeedIntegral)	int	������	��		
Commoditytitle varchar(50) not null,##��Ʒ����(Commoditytitle)	varchar	50	��		
Commoditydetails varchar(300) not null,#��Ʒ����(Commoditydetails)	varchar	300	��		��Ʒ��������
Commodityinventory int not null,#��Ʒ���(Commodityinventory)	int	30	��		����Ϊ������Ϊ��
CommodityTypeNo int not null,#��Ʒ������(CommodityTypeNo)	int	30	��	���	������Ʒ�����
commodityType int not null#�ж���Ʒ״̬���ϼ�/�¼�
);
##��Ʒ�����
create table CommodityType (
CommodityTypeNo int auto_increment primary key,##��Ʒ������(?CommodityTypeNo)	int	30	��	����	����
CommodityTypeName varchar(30) not null,#��Ʒ��������(CommodityTypeName)	Double	10	��		
SuperCommodityType int not null,#��Ʒ�ϼ�����(SuperCommodityType)	int	30	��		
CommodityRank int not null#���ͼ���(CommodityRank)	int	2	��		�������ּ�
);
###��Ʒ���۱�
create table CommodityReview (
 CommodityReviewNo int auto_increment primary key,#��Ʒ���۱��(CommodityReviewNo)	int	������	��	����	
 CommodityNo int not null,#����������Ʒ���(CommodityNo)	varchar	20	��	���	
 ReviewContent varchar(300) not null,#####��������(ReviewContent)	varchar	300	��		
 EmpNo int not null,#����Ա��(EmpNo)	varchar	30	��	���	
 ReviewTime timestamp not null,##��Ʒ����ʱ��(ReviewTime)	varchar	300	��	
 imagerNo int #��ƷͼƬ����(imagerNo)	int	30	��	���	
);
##ͼƬ��
create table Imager (
imagerNo int auto_increment primary key,##ͼƬ���(?imagerNo)	int	30	��	����	����
imagerUrl varchar(300) not null,#ͼƬ·��(imagerUrl)	varchar	10	��		
Imageclassification varchar(20) not null,#ͼƬ��������(Imageclassification)	varchar	20	��		��������ͼƬ��;
ImagerDescription varchar(300) ,#ͼƬ����(imagerDescription)	varchar	300	��		
ImagerId int#ͼƬ�������(ImagerId)	varchar	30	��		
);
#ע:ͼƬ�������ͣ�
#1����ƷͼƬ2���û�ͼƬ3���ֲ�ͼƬ4����Ʒ����ͼƬ
#ͼƬ�������:
#1����������������������Ӧ��ID

##������
create table Orders(
  OrderNo int auto_increment primary key,#�������(?OrderNo)	int	30	��	����	����
  OrderIntegral varchar(10) not null,#�������û���(OrderIntegral)	varchar	10	��		
  OrderCommodityNo int not null,#������Ʒ(OrderCommodityNo)	varchar	20	��	���
  OrderTime timestamp not null,#��������ʱ��(OrderTime)	Date		��		
  OrderStatus int not null,#����״̬(OrderStatus)	int	1	��		1Ϊ���ύ 2Ϊ����ȡ 3Ϊ����ȡ
  EmpNo int #�µ���(EmpNo)	varchar	30	��	���	
);
##���ﳵ��
CREATE TABLE shoppingCar(
	carNo int auto_increment primary key,#���ﳵ���(?carNo)	int	30	��	����	����
  shoppingEmpNo int not null,#���ﳵ�û�(shoppingEmpNo)	int	not null	��		���
  shoppingCommodityNo int not null,#��Ʒ���(shoppingCommodityNo)	 int not null	��	
  commoditySum int not null#��Ʒ����(commoditySum)	int not null		��		
)
