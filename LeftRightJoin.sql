-- hic tasima yapmamis kargo firmalari
select s.CompanyName,count(o.OrderID)
from Shippers s
left join orders o on s.ShipperID = o.ShipVia
group by s.CompanyName
HAVING count(o.OrderID)=0

select s.CompanyName,count(o.OrderID) 
from Orders  o RIGHT  join Shippers s on s.ShipperID = o.ShipVia
group by s.CompanyName
HAVING count(o.OrderID) = 0


--left soldaki tablonun hepsini al demek
--right sağdaki tablonun hepsini al demek

--Hiç sipariş vermemiş müşterilerim kimlerdir?
select c.CompanyName , COUNT(o.OrderID) adet
from Customers c left join Orders o on c.CustomerID=o.CustomerID
GROUP BY c.CompanyName
HAVING COUNT(o.OrderID)=0

select c.CompanyName , COUNT(o.OrderID) adet
from orders o  RIGHT join Customers c on c.CustomerID=o.CustomerID
GROUP BY c.CompanyName
HAVING COUNT(o.OrderID)=0



--full outer join
select p.ProductName,c.CategoryName
from Categories c
full outer join Products p on p.CategoryID=c.CategoryID


select *
from Shippers s
join Orders o on s.ShipperID=o.ShipVia --832 row

select*
from Shippers s
full outer join Orders o on s.ShipperID =o.ShipVia --832 row

SELECT Customers.CompanyName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CompanyName;