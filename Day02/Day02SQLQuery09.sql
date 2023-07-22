SELECT ProductID
		,Name
		,ListPrice
		,Color
FROM Production.Product

------------------------------------------------
SELECT COUNT(*)
FROM Production.Product

---------------------------------
SELECT COUNT(Name)
FROM Production.Product
----------------------------------------
SELECT COUNT(Color)
FROM Production.Product
---------------
SELECT COUNT(*)
FROM Production.Product
WHERE Color IS NULL
------------------------------------------
SELECT COUNT(Distinct Color)
FROM Production.Product

SELECT DISTINCT COLOR
FROM Production.Product
------------------------------------------------------------
SELECT COUNT(ListPrice) as CountRecords
		,COUNT(Distinct ListPrice) as CountRecords2
		,MAX(ListPrice) as MaxRecords
		,MIN(ListPrice) as MinRecords
		,AVG(ListPrice) as AvgRecords
		,SUM(ListPrice) as SumRecords
		,SUM(ListPrice) as SumRecords2
		,SUM(Distinct ListPrice) as SumRecordsDistinct
FROM Production.Product


SELECT DISTINCT ListPrice
FROM Production.Product


----------------------------------------------------------

SELECT Color,
	    COUNT(ListPrice) AS COUNTRecords,
		SUM(ListPrice) AS SUMRecords,
		MAX(ListPrice) AS MAXRecords,
		MIN(ListPrice) AS MINRecords,
		AVG(ListPrice) AS AVGRecords
FROM Production.Product
GROUP BY COLOR 

SELECT Color
		,ListPrice
FROM Production.Product
ORDER BY Color,ListPrice



SELECT COUNT(DISTINCT(Color))
FROM Production.Product

SELECT COUNT(COLOR)
FROM Production.Product

SELECT DISTINCT COLOR
FROM Production.Product

SELECT ISNULL(COLOR,'NO VALUE')
FROM Production.Product



