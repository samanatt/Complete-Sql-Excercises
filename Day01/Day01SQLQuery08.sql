SELECT SalesOrderID
		,OrderDate
		,ShipMethodID
		,SalesOrderNumber
		,SubTotal
		,TaxAmt
		,Freight
		,TotalDue
FROM [Sales].[SalesOrderHeader]
WHERE SalesOrderID = 43659



SELECT SalesOrderID
		,ProductID
		,OrderQty
		,UnitPrice
		,UnitPriceDiscount
		,LineTotal
FROM Sales.SalesOrderDetail
WHERE SalesOrderId = 43659


SELECT *
FROM Production.Product