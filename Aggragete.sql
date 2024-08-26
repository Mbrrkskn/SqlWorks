--Bu Bölümdeki genel hatlat: Toplama fonksiyonları,Gruplsms fonksiyonları,Sayma fonksiyonları
--Count => bir tablodaki verilen degere gore kayıt sayısını bulur

select count(*) from employees --Tablodaki kayıt sayısı
select count(first_name) from employees -- 9 kayıt
select count(region) from employees --5 kayıt çıkar: null degerleri saymaz
select * from employees where region is null --null degerleri burda görebilriz
select count(distinct country) from employees --country alanını tekil sayar

--Sum => Toplama
select sum(unit_price) from products --sayısal alanlarda calısır
select sum(date_part('year',Birth_Date))/count(Birth_Date) 
from  employees --calısanların yas ortalaması


select avg(date_part('year',Birth_Date)) from employees --calısanların yas ortalaması
select avg(unit_price) from products --fiyat ortalaması
select avg(unit_price) from products where category_id = 1 --1 numaralı ürünün fiyat orrtalaması

--Yuvarlama
--Yukarı yuvarlama
select CEILING(10.5);
select CEILING(11.5);
select CEILING(12.5);
select CEILING(13.1);
--Asagı yuvarlama
select FLOOR(10.9);
select FLOOR(10.5);
select FLOOR(10.1)


--Normal yuvarlama
--Round
select Round(10.5);
select Round(11.4);
select Round(13.8);
select Round(12.1);

--Min, Max
select max(unit_price) from products
select * from products order by unit_price desc limit 3
select max(Birth_Date) from employees  --en genci bulunuyor
select max(First_Name) from employees
select min(First_Name) from employees



--siralama order by (cümlenin en sonuna konulur)
select * from employees order by first_name --artan sırada sıralar
select * from employees order by first_name desc--azalan sırada sıralar
select * from employees order by first_name desc,Birth_Date --',' ile ayrılarak ıstenıldıgı kadar field eklenebilir
select first_name,last_name,Birth_Date,title
from employees
order by 2,4 --secilen kolonların sırasına gore sıralandırılabilir

select first_name Ad, last_name Soyad,Birth_Date DogumTarih, title
from employees
order by Soyad,DogumTarih --Alliaas ile sıralama


