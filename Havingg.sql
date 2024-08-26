--ülkelerin siparişlerinin yıllara gore dagılımını bulalım
 select date_part('year',order_date) yil, ship_country, count(*) adet
 from orders
 --where count(*) >= 10 and count(*)<=20
 group by date_part('year',order_date),ship_country
 having count(*) >=10 and count(*) <=20
 order by adet DESC

 select * from order_details limit 20
 --En yuksek cirolu ilk 5 sipariş
 select order_id, sum(unit_price*quantity) Ciro
 from order_details
 Group by order_id
 order by Ciro desc
 limit 5

 select * from order_details where order_id=10865

 --Toplam cirosu 5000 ile 10000 arası olan siparişlerin listesini istiyorum
 select order_id, sum(unit_price*quantity) ciro
 from order_details
 Group by order_id
 having sum(unit_price*quantity) >5000 and sum(unit_price*quantity) <10000
 order by ciro desc

 --between ile cozumu 
 select order_id, sum(unit_price*quantity) ciro
 from order_details
 Group by order_id
 having sum(unit_price*quantity) between 5000 and 10000
 order by ciro desc