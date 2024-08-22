--Tek satırlık yorum satırı
/*
Çok satırlı yorum
*/
--select veritabanındaki tabloları yada view'leri sorgulamaya yarar.
--Genel kullanımı select*from <tablo_adi>
--ornekler
--product'ları listeleyelim

select * from products;
select * from categories;
select * from shippers;
select * from employees;
select * from customers
select * from orders limit 4;
select * from order_details limit 5;
select * from products where product_id=11;

select * from suppliers;

/*
select ifadesinde * kullanılırsa tablodaki bütün feild alanları gelir
Bu genelde tercih edilmez. Cünkü fazladan network trafiğine neden olur
Bundan kaçmanın yolu ihtiyac duyulan field'ların tek tek aralarında , olmak kaydıyla belirlenmesidir.

*/

select employee_id,first_name,last_name from employees; --Bu şekilde sorgu tercih edilir
select * from employees
--Data Filtreleme : Filtreleme yapmak için where sartı kullanılır
select * from customers
--Amerikadaki musterilerin listesi
select * from customers where country = 'USA';
--Amerikadaki müşterilerin seattle olanların listesi
select * from customers where country ='USA' and city='Seattle'
--where sartında null kayıtların aranması
select * from customers where region is null

--Tarih ile ilgili alanların sorgulanması
select * from orders

select * from orders where date_part('year',Order_Date) = 1996
select * from orders where date_part('month',Order_Date) = 7
select * from orders where date_part('day',Order_Date) = 5


--Sayısal alanlarda sorgulama
select * from orders where ship_via = 3
select * from suppliers 

--Amerika dışındaki tedarikçilerin listesi
select * from suppliers where country != 'USA'

--İŞLENECEK KONULAR
--like komutu, count,sum,avg fonksiyonları, sub query
--gruplama ve having 
--join (inner,left,right,full)
--procedure,view,trigger konuları ele alınacak

--crud islemleri Create,update,delete

--Kendi database'imizi oluşturma
--Normalization 
