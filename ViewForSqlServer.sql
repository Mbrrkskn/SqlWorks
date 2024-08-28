create View UrunlerListesi
AS
select p.productname ,c.categoryname,s.companyname
from products p
inner join categories c on p.CategoryID=c.CategoryID
inner join suppliers s on s.SupplierID = p.SupplierID

select categoryname,count(*) Adet
from UrunlerListesi
GROUP BY CategoryName
