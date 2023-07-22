/*
گزارشی بنویسید که مشخص کند هر کالا از چه نوع حمل هایی تا کنون ارسال شده است
*/
SELECT Distinct p.Name as [عنوان کالا]
		,sm.Name as [نوع حمل]
FROM Sales.SalesOrderDetail as sod
		Left Join Sales.SalesOrderHeader as soh on (sod.SalesOrderID = soh.SalesOrderID)
		LEft Join Production.Product as p on (sod.ProductID = p.ProductID)
		Left Join Purchasing.ShipMethod as sm on (sm.ShipMethodID = soh.ShipMethodID)
ORDER BY p.Name

SELECT Distinct sm.Name as [نوع حمل]
FROM Sales.SalesOrderDetail as sod
		Left Join Sales.SalesOrderHeader as soh on (sod.SalesOrderID = soh.SalesOrderID)
		LEft Join Production.Product as p on (sod.ProductID = p.ProductID)
		Left Join Purchasing.ShipMethod as sm on (sm.ShipMethodID = soh.ShipMethodID)
 
--------------------------------------------------------------------------
select *
from Purchasing.ShipMethod

SELECT *
FROM Sales.SalesOrderDetail
----------------------------------------------------------------------------
SELECT DISTINCT PP.Name AS [نوع کالا]
				,SM.Name AS [نوع حمل]
FROM Sales.SalesOrderDetail AS SOD
		LEFT JOIN Production.Product AS PP ON (PP.ProductID = SOD.ProductID)
		LEFT JOIN Sales.SalesOrderHeader AS SOH ON (SOH.SalesOrderID = SOD.SALESORDERID)
		LEFT  JOIN Purchasing.ShipMethod AS SM ON (SM.ShipMethodID = SOH.ShipMethodID)
ORDER BY PP.Name