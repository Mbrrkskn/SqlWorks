

--orders tablosuna insert atan procedure
select * from orders limit 5;

--VINET 1 numaralı eployee arasin ve 1,10,40 numaralı 
--ürünlerden 10 adet sipariş versin

select * from products where product_id in (1,10,40)

--Kayıt eklemede kullanılacak komut insert komutu
--insert into <tabloadı>(column1,column2) values(value1,value2)
insert into orders(order_id,customer_id,employee_id,order_date,required_date,shipped_date,ship_city,ship_country)
Values(1000,'VINET',1,'2024-08-20','2024-09-15','2024-08-07','Istanbul','Turkey')

insert into order_details(order_id,product_id,unit_price,quantity,Discount)
values(1000,40,25,10,0)

select * from order_details where order_id =1000
select * from orders where order_id=1000
--Update => Veri guncelleme Update <tablo_adi> Set column1 =value1,vb. Where(kosul)
update orders set ship_via=1 where order_id =1000

--delete => kayıt silmeye yarar.delete from <tablo_adi> where <kosul>

select * from shippers
delete from shippers where shipper_id =7

create or replace procedure KargoEkle (shipper_id int,firmaAdi varchar, telefon VARCHAR)
language plpgsql
as $$
DECLARE
--variable declaration
BEGIN--stored procedure body

insert into shippers (shipper_id,company_name,phone) values(fshipper_id,irmaAdi,telefon);
end; $$

call KargoEkle(7,'Mng Kargo','444 65 44')








