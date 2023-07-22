/*

فرض کنید داده های مربوط به فاکتور شامل 
سال
ماه
مبلغ را داریم

گزارشی بنویسید که مشخص کند در هر سال  به تفکیک هر ماه 
چه میزان فروش داشته ایم
*/


SELECT Y
		,M
		,SUM(TotalDue) as [جمع کل فاکتور به تفکیک سال و ماه]
		,COUNT(*) as [تعداد فاکتور صادر شده در سال و ماه]
		, SUM(TOtalDue) / COUNT(*) AS AVERAGE
FROM (
		SELECT DATEPART(YEAR, soh.OrderDate) as Y
				,DATEPART(MONTH,soh.OrderDate) as M
				,soh.TotalDue
		FROM Sales.SalesOrderHeader as soh
		) as T
GROUP BY Y,M
ORDER BY Y,M