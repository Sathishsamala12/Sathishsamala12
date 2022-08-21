create database MobileDetails
create table Mobile(MobileId int primary key identity(1,1),
BrandName varchar(100),
Model varchar(100),
Colour varchar(50),
Storage varchar(60),
Price int)

select * from Mobile

insert into Mobile values('Samsung','Galaxy500','Black','6GB',6587)

alter table Mobile add OS varchar(100)