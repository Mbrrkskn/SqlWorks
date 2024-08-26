--Kayıt ekleme insert keyword ile olusturulur
--Kullanımı insert into <Tablo_Adi> (column1,column2,column3...)
--          values(value1,value2,value3...)

--örnek
insert into shippers(companyname,phone) 
values ('Express Kargo','0850 324 55 66')

--Update işlemi : Update <tabloismi> set column1=value1,column2=value2 vb..
--                where .....
--Genelde where şartı unutulabiliyor.
-- Bu yüzden update ve delete işlemleri yapmadan önce tablonun yada daha iyi database in backup'ini alın. Yoksa canınız çok fena yanar
select * from Shippers
update shippers set Phone ='444 22 99' where CompanyName='Express Kargo'
update shippers set ShipperID =22 where CompanyName='Speedy Express'


--Delete komutuda mutlaka where satı ile kullanılmalıdır.
--Delete from <Tablloadı> where.....
delete from shippers where CompanyName='Express Kargo'
select * from orders where ShipVia=1

--Tablo yedeğini almadan update delete çalışması yapmayın

select *
INTO yedekMusteriler
From Customers

select * from yedekMusteriler


