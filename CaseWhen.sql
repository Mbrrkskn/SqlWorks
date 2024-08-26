--case kullanımı
select first_name ,last_name,
CASE(country) 
    when 'USA' then 'Amerika' --usa ise amerika yazsın
    when 'UK' then 'Ingiltere' --uk ise ingiltere yazsın
end

--Eger ürün fiyatı 50 ucuz ise ucuz urun,50 ile 150 rasında ise ekenomik urun, 150-200 arasında ise pahalı ürün
--200 ve üzeri ise lux urun kategorisine alalım
select product_name,unit_price,
CASE
   when unit_price < 50 then 'Ucuz Ürün'
   when unit_price >=50 and unit_price <150 then 'Ekonomik ürün'
   when unit_price >=150 and unit_price <200 then 'Pahali ürün'
   else 'Lux urun'

   end UrunSegment
   from products

