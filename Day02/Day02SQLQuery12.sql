/*

فرض کنید داده های مربوط به فاکتور شامل 
سال
ماه
مبلغ را داریم

گزارشی بنویسید که مشخص کند در هر سال  به تفکیک هر ماه 
چه میزان فروش برای فاکتورهای با مبلغ بیش از  100000 داریم داشته ایم
*/
SELECT Y
		,M
		,SUM(TotalDue) as [جمع کل فاکتور به تفکیک سال و ماه]
		,COUNT(*) as [تعداد فاکتور صادر شده در سال و ماه]
FROM (
		SELECT DATEPART(YEAR, soh.OrderDate) as Y
				,DATEPART(MONTH,soh.OrderDate) as M
				,soh.TotalDue
		FROM Sales.SalesOrderHeader as soh
		WHERE TotalDue >= 100000
		) as T
GROUP BY Y,M
ORDER BY Y,M

--------------------------------



SELECT Y
		,M
		,SUM(TotalDue) as [جمع کل فاکتور به تفکیک سال و ماه]
		,COUNT(*) as [تعداد فاکتور صادر شده در سال و ماه]
FROM (
		SELECT DATEPART(YEAR, soh.OrderDate) as Y
				,DATEPART(MONTH,soh.OrderDate) as M
				,soh.TotalDue
		FROM Sales.SalesOrderHeader as soh
		) as T
WHERE TotalDue >= 100000
GROUP BY Y,M
ORDER BY Y,M