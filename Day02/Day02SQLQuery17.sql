/*
ماه و سالهایی را نمایش دهید که تعداد کل فاکتور صادر شده در آن سال و ماه بیش از 2000
عدد باشد
*/
WITH cte_t AS
(
		SELECT DATEPART(YEAR, soh.OrderDate) as Y
				,DATEPART(MONTH,soh.OrderDate) as M
				,soh.TotalDue
		FROM Sales.SalesOrderHeader as soh
)
SELECT Y
		,M
		,SUM(TotalDue) as [جمع کل فاکتور به تفکیک سال و ماه]
		,COUNT(*) as [تعداد فاکتور صادر شده در سال و ماه]
FROM cte_t
GROUP BY Y,M
HAVING COUNT(*) > 2000
ORDER BY Y,M