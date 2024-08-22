select * from customers where country = 'usa' and city = 'seattle'


select * from orders where YEAR(OrderDate) = 1996
select * from orders where month(OrderDate) = 7
select * from orders where day(OrderDate) = 5

--PostgreSql ile karşılaştırma yaptık
select * from orders where datepart(year,OrderDate) = 1996
