--SELECT CompanyName
--From Suppliers
--WHERE EXISTS
--(SELECT ProductName
--From Products
--WHERE Products.SupplierID =Suppliers.SupplierID AND UnitPrice > 200);

SELECT *
From Suppliers
WHERE EXISTS
(SELECT Product_Name
From Products
WHERE Products.SupplierID =Suppliers.SupplierID AND UnitPrice > 200);
