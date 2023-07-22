/*

فرض کنید داده های مربوط به فاکتور شامل 
سال
ماه
مبلغ را داریم

گزارشی بنویسید که مشخص کند در هر سال  به تفکیک هر ماه 
چه میزان فروش داشته ایم
*/
--راه دوم

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
ORDER BY Y,M
------------------------------------------------------------------------------------

WITH CTE_SAMAN AS
(	SELECT DATEPART(YEAR,SOH.OrderDate) AS Y
			,DATEPART(MONTH,SOH.OrderDate) AS M
			,soh.TotalDue
	FROM Sales.SalesOrderHeader AS SOH

)

SELECT Y,
		M,
			SUM(TotalDue) AS SUM_TOTAL
FROM CTE_SAMAN
GROUP BY Y,M
ORDER BY Y,M




