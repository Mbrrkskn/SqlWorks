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

CREATE OR REPLACE FUNCTION public.CalisanPerformanslari()
RETURNS TABLE
(
    Calisan varchar,
    Yil int,
    Adet bigint,
    ciro float8
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        e.First_Name AS calisan,
        CAST(date_part('year', o.order_date) AS int) AS yil,
        count(*) AS Adet,
        SUM(od.Quantity * od.Unit_Price) AS ciro
    FROM
        Employees e
    INNER JOIN
        orders o ON o.Employee_ID = e.Employee_ID
    INNER JOIN
        Order_Details od ON od.Order_ID = o.Order_ID
    GROUP BY
        e.First_Name,
        CAST(date_part('year', o.order_date) AS int);
END;
$$;
 
SELECT * FROM CalisanPerformanslari();

CREATE OR REPLACE FUNCTION public.CalisanlarinPerformansi(calisanId INT)
RETURNS TABLE(
    Calisan VARCHAR,
    Yil int,
    Adet bigint,
    Ciro float8
)
LANGUAGE plpgsql
AS $$
BEGIN
  RETURN QUERY
  Select e.First_Name AS Calisan,
         date_part('year',o.order_date)
