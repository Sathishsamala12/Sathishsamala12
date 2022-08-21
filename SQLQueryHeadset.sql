select *from HeadsetDetails

delete from HeadsetDetails where Id between 6 and 5678
drop table HeadsetDetails
create table HeadsetDetails(
Id int primary key identity(1,1),
BrandName varchar(100),
Model varchar (50),
Colour varchar (80),
Bluetooth varchar (50),
Price int)

insert into HeadsetDetails values('Sony','S-65','Black','Yes',25665)

SET IDENTITY_INSERT HeadsetDetails ON

create table AvailableItems(AvailableId int primary key identity(1,1),
ItemName varchar(100))
select *from AvailableItems
insert into AvailableItems values('Cucumber')

create table ShoppingBasket(BasketId int primary key identity(1,1),
ItemName varchar(100))

select *from ShoppingBasket

create table FileUpload(FileId int primary key identity(1,1),
FileName varchar(max))
select * from FileUpload

drop table FileUpload
