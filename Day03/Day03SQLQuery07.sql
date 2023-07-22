/*
رتبه بندی
*/
SELECT BusinessEntityID
		,SalesQuota
		,ROW_NUMBER() OVER(ORDER BY SalesQuota DESC) as RowNumber
		,RANK() OVER(ORDER BY SalesQuota DESC) as RankWithGap
		,DENSE_RANK() OVER (ORDER BY SalesQuota DESC) as RankWithoutGap
FROM Sales.SalesPersonQuotaHistory
WHERE SalesQuota < 500000
		AND QuotaDate = '2014-03-01 00:00:00.000'
ORDER BY SalesQuota DESC
--------------------------------------------------------------------------------
SELECT BusinessEntityID,SalesQuota
		,ROW_NUMBER() OVER(ORDER BY SALESQUOTA) AS ROWN
		,RANK() OVER(ORDER BY SALESQUOTA) AS RANKK
		,DENSE_RANK() OVER (ORDER BY SALESQUOTA) AS RANKWITHOUTGAP
FROM Sales.SalesPersonQuotaHistory
WHERE SalesQuota> 50000
ORDER BY SalesQuota


SELECT *
FROM Sales.SalesPersonQuotaHistory
ORDER BY SalesQuota

