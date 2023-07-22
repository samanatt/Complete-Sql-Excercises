WITH CDate AS
(
SELECT Y as cY
		,Q as cQ
FROM DB_18.dbo.Y
	CROSS JOIN DB_18.dbo.Q
)
,cte_ds AS 
(
SELECT cY as Y
		,cQ as Q
		,TotalDue
FROM CDate 
	Left Join Sales.SalesOrderHeader as soh on (DATEPART(YEAR,soh.OrderDate) = cY AND DATEPART(QUARTER,soh.OrderDate) = cQ)
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