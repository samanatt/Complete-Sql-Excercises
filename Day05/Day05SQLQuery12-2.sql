/*
گزارش بنویسید که لیست همه کالاها و جمع کل تعدادی فروش را به
ازای هر کالا نمایش دهد
*/
SELECT ProductID
		,Name
		,ProductNumber
		,dbo.CalcProductTotalQty(ProductID)
FROM Production.Product


----------------------------------------------------



SELECT p.Name
		,p.ProductNumber
		,ISNULL(SUM(sod.OrderQty),0)
FROM Production.Product as p
	LEFT JOIN Sales.SalesOrderDetail as sod on (p.ProductID = sod.ProductID)
GROUP BY p.Name,p.ProductNumber