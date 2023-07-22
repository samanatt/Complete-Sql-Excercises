/*
لیست فاکتورهایی را نمایش دهید که
در آن حداقل یک قلم با قیمت کل  حداقل 100 واحدپولی به فروش رفته باشد
*/
--راه اول
--19218
SELECT *
FROM Sales.SalesOrderHeader
WHERE SalesOrderID IN 
					(
					SELECT SalesOrderID
					FROM Sales.SalesOrderDetail
					WHERE LineTotal >= 100
					)
SELECT *
FROM Sales.SalesOrderHeader
WHERE SalesOrderID IN (
						SELECT SalesOrderID
						FROM Sales.SalesOrderDetail
						WHERE LineTotal > 100
						)

--راه دوم
--19218
SELECT *
FROM Sales.SalesOrderHeader as soh
WHERE EXISTS (SELECT * FROM Sales.SalesOrderDetail as sod WHERE LineTotal >= 100 AND sod.SalesOrderID = soh.SalesOrderID)

SELECT * 
FROM Sales.SalesOrderHeader AS SOH
WHERE EXISTS (SELECT *
				FROM Sales.SalesOrderDetail AS SOD
				WHERE LineTotal >100 AND SOD.SalesOrderID = SOH.SalesOrderID
				)

--راه سوم
--19218
SELECT *
FROM Sales.SalesOrderHeader as soh
WHERE 100 <= ANY (SELECT LineTotal FROM Sales.SalesOrderDetail as sod WHERE sod.SalesOrderID = soh.SalesOrderID)

SELECT *
FROM Sales.SalesOrderHeader as soh
WHERE 100 <= SOME (SELECT LineTotal FROM Sales.SalesOrderDetail as sod WHERE sod.SalesOrderID = soh.SalesOrderID)