create database test
use test
create table USER_ACCOUNT
(
USER_NAME VARCHAR(30) not null,
NAME NVARCHAR(30) not null,
BIRTHDAY DATE not null,
GENDER    NVARCHAR(10) not null,
ADDRESS NVARCHAR(100) not null,
PHONE_NUMBER VARCHAR(10) not null,
POSITION NVARCHAR(30) not null,
PASSWORD  VARCHAR(30) not null,
primary key (USER_NAME)
)
create table BOOK_TABLE
(
	BOOK_ID INT IDENTITY ,
	NAME_CTM NVARCHAR(50) not null,
	PHONE_CTM VARCHAR(20) not null,
	NUMBER int not null ,
	TIME DATETIME not null,
	NOTE NVARCHAR(300),
	primary key (BOOK_ID)
)
create table ListFood
(	
	FOOD_ID INT IDENTITY,
	TENMON NVARCHAR(50) not null,
	SOLUONG int not null,
	GIATIEN int not null,
	NOTE NVARCHAR(300),
	primary key (FOOD_ID)
)
create table ATTACHMENT
(
  ID          BIGINT not null,
  FILE_NAME   VARCHAR(50) not null,
  FILE_DATA   Varbinary(max) not null,
  DESCRIPTION VARCHAR(255)
  primary key (ID)
)

create table BAN
(
	ID_BAN INT IDENTITY,
	SOBAN NVARCHAR(255) not null,
	VITRI NVARCHAR(255) not null,
	primary key (ID_BAN)
)
Drop table ATTACHMENT
create table BUFFET
(
	BUFFET_ID VARCHAR(255),
	TEN NVARCHAR(255),
	GIA INT not null,
	NOTE NVARCHAR(255) ,
	primary key (BUFFET_ID)
)
create table BANGLUONG
(
	USER_NAME varchar(30) primary key,
	CHAMCONG float not null,
	HESO float not null,

)

alter table BANGLUONG
add constraint R1 foreign key (USER_NAME) references USER_ACCOUNT(USER_NAME)


create table PHANHOI
(
	ID_PHANHOI INT IDENTITY,
	TEN_KH NVARCHAR(255) not null,
	MESSAGE NVARCHAR(255) not null,
	primary key (ID_PHANHOI)
)


select BangLuong.user_name , name, ChamCong, HeSo 
from USER_ACCOUNT,BangLuong where USER_ACCOUNT.USER_NAME=BangLuong.user_name
Select * from BangLuong b where user_name='admin'
insert into BangLuong
values ('admin',30,3)

Update BangLuong set ChamCong=30, HeSo=5 where user_name='admin'

 
 


insert into user_account (USER_NAME, PASSWORD, NAME, GENDER, ADDRESS, PHONE_NUMBER, POSITION)
values ('trandan11', '123456', N'Trần Dần21', N'Nam', N'Quận Cam', '123456', N'Bảo Vệ');
drop table USER_ACCOUNT
insert into user_account (USER_NAME, NAME, BIRTHDAY, GENDER, ADDRESS, PHONE_NUMBER, POSITION, PASSWORD)
values ('admin', N'Nguyen Binh Duc','1999/11/12', N'Nam', N'Hà Nội', '0374990901', N'Quan Ly', '123456');
insert into user_account (USER_NAME, NAME, BIRTHDAY, GENDER, ADDRESS, PHONE_NUMBER, POSITION, PASSWORD)
values ('abc', N'Nguyễn Thị A','1997/10/12', N'Nữ', N'Hà Nam', '0974990901', N'Đầu Bếp', '123456');
Insert into ListFood(TENMON, SOLUONG, GIATIEN, NOTE) values (1,1,1,1)
Insert into BUFFET(BUFFET_ID, TEN, GIA, NOTE) values ('BF1','199.000','199000',N'Chỉ phục vụ buổi trưa từ T2 - T6');
Insert into BUFFET(BUFFET_ID, TEN, GIA, NOTE) values ('BF2','229.000','229000',N'Chỉ phục vụ buổi trưa từ T2 - T6');
Insert into BUFFET(BUFFET_ID, TEN, GIA, NOTE) values ('BF3','269.000','229000',N'Cả tuần');
Insert into BUFFET(BUFFET_ID, TEN, GIA, NOTE) values ('BF4','319.000','319000',N'Cả tuần');


Select * from User_Account
Select * from BOOK_TABLE
Select * from ListFood
Select * from BAN
Select * from BUFFET
Select * from BANGLUONG
Select * from PHANHOI
Update BUFFET set TEN ='qqqq', GIA='1', NOTE='1' where BUFFET_ID='1'