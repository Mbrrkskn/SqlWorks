--Union : İki farklı sorguyu tek bir sonuc olarak birleştirmeye yarar
--Sorgudaki kolon sayıları aynı olmak zorundadır.
--HEpsini gormek istersek union all ifadesini kullanamk gerekir.

select p.product_id, p.product_name 
from products p
UNION
SELECT p1.product_id, p1.product_name
from products p1
