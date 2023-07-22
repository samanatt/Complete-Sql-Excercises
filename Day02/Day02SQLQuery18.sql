/*
گزارش فروش به تفکیک سال و ماه را به صورت ماتریسی نمایش دهید
طوری که در سطر سال
در ستون ماه
و در تقاطع سال و ماه میزان فروش نشان داده شود

https://stackoverflow.com/questions/15297809/sql-transpose-full-table

*/
SELECT Y
		,[1]
		,[2]
		,[3]
		,[4]
		,[5]
		,[6]
		,[7]
		,[8]
		,[9]
		,[10]
		,[11]
		,[12]

FROM 
	(
	SELECT DATEPART(YEAR, soh.OrderDate) as Y
			,DATEPART(MONTH,soh.OrderDate) as M
			,soh.TotalDue
	FROM Sales.SalesOrderHeader as soh
	) as srcTable
	PIVOT
	(
	 SUM(TotalDue)
	 FOR M IN ([1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[11],[12])
	) as pvt
ORDER BY Y