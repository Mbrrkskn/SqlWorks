create or replace function public.Calisanlar(yil INT)
returns TABLE(Calisan varchar,ciro NUMERIC)
as 
$func$
select e.First_Name Calisan,sum(od.Quantity*od.Unit_Price*(1-Discount)) Ciro
from Employees e
inner join orders o on e.employee_id = o.employee_id
inner join Order_Details od on od.order_id = O.order_id
where date_part('year',o.order_date)=yil
group by e.First_Name
order by ciro DESC;
$func$
LANGUAGE sql;

select * from Calisanlar(1997);