
/*
گزارشی بنویسید که اقلام فاکتور را شامل تعداد، مبلغ ردیف و عنوان و کد کالا و شماره فاکتور و تاریخ فاکتور نمایش دهد
*/
SELECT sod.OrderQty
		,sod.LineTotal
		,p.Name
		,p.ProductNumber
		,soh.OrderDate
		,soh.SalesOrderNumber
FROM Sales.SalesOrderDetail as sod
		Left Join Sales.SalesOrderHeader as soh on (sod.SalesOrderID = soh.SalesOrderID)
		Left Join Production.Product as p on (sod.ProductID = p.ProductID)

-------------------------------------------------------------------------
--کوئری بالا و پایین یکسان هستند

SELECT sod.OrderQty
		,sod.LineTotal
		,p.Name
		,p.ProductNumber
		,soh.OrderDate
		,soh.SalesOrderNumber
FROM Sales.SalesOrderDetail as sod
		Left Join Production.Product as p on (sod.ProductID = p.ProductID)
		Left Join Sales.SalesOrderHeader as soh on (sod.SalesOrderID = soh.SalesOrderID)
----------------------------------------------------------------------------------------
--دو کوئری بالا و کوئری پایین پایین یکسان هستند
SELECT sod.OrderQty
		,sod.LineTotal
		,p.Name
		,p.ProductNumber
		,soh.OrderDate
		,soh.SalesOrderNumber
FROM    Production.Product as p
		Right Join  Sales.SalesOrderDetail as sod  on (sod.ProductID = p.ProductID)
		Left Join Sales.SalesOrderHeader as soh on (sod.SalesOrderID = soh.SalesOrderID)

