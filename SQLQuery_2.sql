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

