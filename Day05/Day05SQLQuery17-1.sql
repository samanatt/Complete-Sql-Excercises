CREATE PROCEDURE GetColoredProductList
AS
BEGIN

SELECT ProductID
		,Name as ProductName
		,Color
FROM AdventureWorks2019.Production.Product
WHERE Color IS NOT NULL

END