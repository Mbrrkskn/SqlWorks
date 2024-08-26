select * from orders 
select * from shippers
select * from customers

--Ulkelerin yaptıgı ciroları bulalım
select c.country, SUM(od.unit_price * od.quantity) Ciro  
from orders o   
inner join order_details od on o.order_id = od.order_id  
inner join customers c on o.customer_id = c.customer_id  
group by c.country  
order by Ciro desc  
  


--Ulkelerin yaptıgı ciroları  yıllara gore dagıtalım

select c.country Ulke, DATE_PART('year',o.order_date) Yil, 
    SUM(case 
        when od.unit_price * od.quantity > 0 then od.unit_price * od.quantity  
        else 0 
        end) Ciro
from orders o 
inner join order_details od on o.order_id = od.order_id 
inner join customers c on o.customer_id = c.customer_id 
group by c.country, DATE_PART('year', o.order_date)
having  SUM(od.unit_price * od.quantity) > 1995  -- 1996'dan itibaren olduğu için, cirosu 1995'den büyük olanları filtreliyorum
order by  Ulke, Yil   


--calısanların yaptıgı ciro nedir(1997) yılı

select (e.first_name || ' ' || e.last_name) Calisan,SUM(od.unit_price * od.quantity) Ciro 
from orders o 
inner join order_details od on o.order_id = od.order_id
inner join employees e on o.employee_id = e.employee_id
where  DATE_PART('year', o.order_date) = 1997
group by Calisan  
order by Ciro desc  


--kargo firmalarının tasıdıgı sıparıslerin toplam degeri nedir

select s.company_name,SUM(od.unit_price * od.quantity) ToplamDeger
from orders o 
inner join order_details od on o.order_id = od.order_id
inner join shippers s on o.ship_via = s.shipper_id
group by s.company_name
order by ToplamDeger desc


--kategorilere gore ciro nedir
select c.category_name Kategori,SUM(od.unit_price * od.quantity) ToplamCiro
from order_details od
inner join products p on od.product_id = p.product_id
inner join categories c on p.category_id = c.category_id
group by c.category_name
order by ToplamCiro desc



--1997 yılındaki ciroların aylara göre dagılımı nedir

select DATE_PART('month', o.order_date) Ay,SUM(od.unit_price * od.quantity) ToplamCiro
from order_details od
inner join  orders o on od.order_id = o.order_id
where DATE_PART('year', o.order_date) = 1997
group by DATE_PART('month', o.order_date)
order by Ay 


