/*
لیست کالاهایی که تا کنون به فروش نرفته اند را نمایش دهید
*/
--504
--266
--? 238
SELECT *
FROM Production.Product
WHERE ProductID NOT IN
						(
						SELECT  ProductID
						FROM Sales.SalesOrderDetail
						)