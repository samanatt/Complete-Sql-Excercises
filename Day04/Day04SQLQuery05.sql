/*
تعداد کالاهای به فروش رفته
*/
--266
USE AdventureWorks2019;
SELECT COUNT(*)
FROM Production.Product
WHERE ProductID IN (SELECT ProductID FROM Sales.SalesOrderDetail)

--238
/*
تعداد کالاهای به فروش نرفته
*/
SELECT COUNT(*)
FROM Production.Product
WHERE ProductID NOT IN (SELECT ProductID FROM Sales.SalesOrderDetail)