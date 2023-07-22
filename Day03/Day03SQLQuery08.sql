SELECT AccountId
		,TranDate
		,TranAmt
		,LAG(TranAmt,1,null) OVER(PARTITION BY AccountId ORDER BY TranDate)
		,LAG(TranAmt,3,null) OVER(PARTITION BY AccountId ORDER BY TranDate)
		,LAG(TranAmt,3,-9999) OVER(PARTITION BY AccountId ORDER BY TranDate)
		,LEAD(TranAmt,1,null) OVER(PARTITION BY AccountId ORDER BY TranDate)
				,LEAD(TranAmt,1,null) OVER(ORDER BY AccountId,TranDate)
FROM tr


USE AdventureWorks2019;  
GO  
SELECT TerritoryName, BusinessEntityID, SalesYTD,   
       LAG (SalesYTD, 1, 0) OVER (PARTITION BY TerritoryName ORDER BY SalesYTD DESC) AS PrevRepSales  
FROM Sales.vSalesPerson  
WHERE TerritoryName IN (N'Northwest', N'Canada')   
ORDER BY TerritoryName;

USE AdventureWorks2019;
GO 
SELECT TERRITORYNAME , BUSINESSENTITYID, SalesYTD,
		LAG(SALESYTD, 1, 0) OVER (PARTITION BY TERRITORYNAME ORDER BY SALESYTD DESC) AS PREVREPSALES
FROM SALES.vSalesPerson
WHERE TerritoryName  IN ('NORTHWEST', 'CANADA')
ORDER BY TerritoryName