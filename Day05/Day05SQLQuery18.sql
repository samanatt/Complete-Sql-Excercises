/*
baraye update kardan yek jadval mishe data ro ba khode jadval intersect kard baad insert into konim??

*/
INSERT INTO ColoredProduct(pid,PName,PColor)

SELECT  ProductID
		,Name
		,Color
FROM AdventureWorks2019.Production.Product
EXCEPT
SELECT pid
		,PName
		,PColor
FROM ColoredProduct