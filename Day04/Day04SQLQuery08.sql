/*
بخوایم آخرین نوع حمل که استفاده شده را بياريم
به ازای هر کالا
*/
SELECT Distinct p.Name as [عنوان کالا]
		,FIRST_VALUE(sm.Name) OVER (PARTITION BY p.Name ORDER BY soh.[OrderDate] DESC)
FROM Sales.SalesOrderDetail as sod
		Left Join Sales.SalesOrderHeader as soh on (sod.SalesOrderID = soh.SalesOrderID)
		Left Join Production.Product as p on (sod.ProductID = p.ProductID)
		Left Join Purchasing.ShipMethod as sm on (sm.ShipMethodID = soh.ShipMethodID)
ORDER BY p.Name

/*
بخوایم آخرین نوع حمل که استفاده شده را بياريم
در کل
*/
SELECT DISTINCT FIRST_VALUE(sm.Name) OVER ( ORDER BY soh.[OrderDate] DESC)
FROM Sales.SalesOrderDetail as sod
		Left Join Sales.SalesOrderHeader as soh on (sod.SalesOrderID = soh.SalesOrderID)
		LEft Join Production.Product as p on (sod.ProductID = p.ProductID)
		Left Join Purchasing.ShipMethod as sm on (sm.ShipMethodID = soh.ShipMethodID)


----------
/*
محبوبترين نوع حمل چيه؟
*/
;
WITH cte AS
(
SELECT sm.Name
		,Count(soh.ShipMethodID) as TotalCount
FROM Sales.SalesOrderHeader as soh
	 Right Join Purchasing.ShipMethod as sm on (soh.ShipMethodID = sm.ShipMethodID)
GROUP BY sm.Name
)
SELECT cte.Name
		,RANK() OVER (ORDER BY TotalCount DESC) as r
FROM cte
ORDER BY r


-----------------------------
SELECT * 
FROM Purchasing.ShipMethod

SELECT *
FROM Sales.SalesOrderHeader

WITH CTE AS 
( 
SELECT SM.NAME
		,COUNT(SOH.ShipMethodID) AS TOTAL
FROM Sales.SalesOrderHeader AS SOH
	RIGHT JOIN Purchasing.ShipMethod AS SM ON (SOH.ShipMethodID = SM.ShipMethodID)
GROUP BY SM.NAME
)
SELECT	CTE.NAME
		,RANK() OVER(ORDER BY TOTAL DESC) AS R 
FROM CTE
ORDER BY R
