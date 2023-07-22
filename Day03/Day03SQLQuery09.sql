/*
گزارشی بنویسید که میزان فروش هر فصل را 
نشان دهد و همچنین در هر سطر، میزان فروش
فصل قبل
فصل متناظر سال قبل
آخرین فصل سال قبل
را نمایش دهد
*/
WITH cte_ds AS
				(
				SELECT DATEPART(YEAR,OrderDate) as Y
						,DATEPART(QUARTER,OrderDate) as Q
						,TotalDue
				FROM Sales.SalesOrderHeader
				WHERE DATEPART(YEAR,OrderDate) > 2010
				)
, cte_dsa as 
(
				SELECT Y
						,Q
						,SUM(TotalDue) as SumTotalDue
				FROM cte_ds
				GROUP BY Y,Q
)
SELECT Y
		,Q
		,SumTotalDue
		,LAG(SumTotalDue,1,null) OVER (ORDER BY Y,Q) as [فروش فصل قبل]
		,LAG(SumTotalDue,4,null) OVER (ORDER BY Y,Q) as [فروش فصل متناظر سال قبل]
		,LAG(SumTotalDue,Q,null) OVER (ORDER BY Y,Q) as [آخرین فصل سال قبل]
FROM cte_dsa
/* **************************************************************************** */
SELECT *
FROM Sales.SalesOrderHeader AS SOH

WITH CTE AS 
	(
	SELECT 
			SalesOrderID,TotalDue
			,DATEPART(YEAR,OrderDate) AS Y
			,DATEPART(QUARTER,OrderDate) AS Q
	FROM Sales.SalesOrderHeader
	WHERE DATEPART(YEAR,OrderDate) > 2010
	)
,CTE_1 AS
	(
	SELECT Y
		,Q
		,SUM(TOTALDUE) AS SUMTOTALDUE
	FROM CTE 
	GROUP BY Y,Q
	)


SELECT 
	Y,Q
	,SUMTOTALDUE
	,LAG(SUMTOTALDUE,1,NULL) OVER(ORDER BY Y,Q) AS [MAH GHABL]
	,LAG(SUMTOTALDUE,4,NULL) OVER(ORDER BY Y,Q) AS [SAL GHABL]
	,LAG(SUMTOTALDUE,Q,NULL) OVER(ORDER BY Y,Q) AS [MAH GHABL]
FROM CTE_1
