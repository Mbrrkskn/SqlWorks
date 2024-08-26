select country,count(country) 
from employees
group by country
--hangib ülkeden kac adet musterım var
select country ,count(*) Adet
from customers
group by country
order by Adet desc --2 desc--count(*) desc

--hangi kategoriden kac adet urun var? --products
select category_id,count(*)
from products
group by category_id
order by 2 desc
--hangi tedarikçiden kac adet urun alıyorum --products
select supplier_id,count(*)
from products
group by supplier_id
order by 2 desc
--1997 yılında hangı ulkeye kac adet sipariş gönderdim --orders
select  ship_country , count(*) adet
from orders
--where date_part('year',order_date)=1997
group by date_part('year',order_date),ship_country
order by adet desc,yil desc
--1997 yılında en az sipariş veren ülkeler hangileridir--orders
select ship_country, count(*) adet
from orders
where date_part('year',order_date)=1997
group by ship_country
order by adet asc    
limit 3 
--1998 yılında en fazla sipariş alan calısanlarınndan ilk3'u hangisidir.prim vereceğim --orders
select employee_id, count(*) adet
from orders
where date_part('year',order_date)=1998
group by employee_id
order by adet DESC
limit 3
--kargo firmalarının taşıdığı sipariş sayısı nedir?
select ship_via, count(*) adet
from orders
group by ship_via
order by adet desc
