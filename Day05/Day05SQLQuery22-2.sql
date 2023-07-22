SELECT *
FROM dbo.GetColoredProduct()



SELECT P.*
		,sod.OrderQty
FROM dbo.GetColoredProduct() as p
		Left Join AdventureWorks2019.Sales.SalesOrderDetail as sod on (p.ProductID = sod.ProductID)