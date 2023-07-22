/*
لیست اقلام فاکتورهایی را نمایش دهید که در آنها
کالایی به رنگ قرمز فروخته شده است
*/


--121,317
--38
--13,065
SELECT *
FROM Sales.SalesOrderDetail
WHERE ProductID IN 
					(
					 
					SELECT ProductID
					FROM Production.Product
					WHERE Color = 'Red'
					)


/*
لیست فاکتورهایی را نمایش دهید که در آنها
کالایی به رنگ قرمز فروخته شده است
*/

SELECT *
FROM Sales.SalesOrderHeader
WHERE SalesOrderID	IN 
						(
						 SELECT SalesOrderID
						FROM Sales.SalesOrderDetail
						WHERE ProductID IN 
											(
					 
											SELECT ProductID
											FROM Production.Product
											WHERE Color = 'Red'
					)

						)
					