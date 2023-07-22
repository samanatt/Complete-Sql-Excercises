/*
هر آیدی کالا از نظر تعدادی چه تعداد به فروش رفته است
*/

SELECT ProductID
		,SUM(OrderQty)
FROM Sales.SalesOrderDetail
GROUP BY ProductID

/*
هر عنوان کالا از نظر تعدادی چه تعداد به فروش رفته است
*/
select PP.Name AS ProductionName 
	,SUM(ORDERQTY) as NumOfSalesPerProduct
from Production.Product as PP
		left join Sales.SalesOrderDetail as sod on( pp.ProductID = sod.ProductID)
group by pp.Name
------------------------------------------------
SELECT PP.Name
		,SUM(OrderQty)
FROM Production.Product AS PP LEFT JOIN 
	Sales.SalesOrderDetail AS SOD ON (PP.ProductID = SOD.ProductID)
GROUP BY PP.Name


