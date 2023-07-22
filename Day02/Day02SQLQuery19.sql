/*
گزارش فروش به تفکیک سال و ماه را به صورت ماتریسی نمایش دهید
طوری که در سطر سال
در ستون ماه
و در تقاطع سال و ماه میزان فروش نشان داده شود


از
Pivot
استفاده نشود 
*/
WITH srcTable_cte AS
(
SELECT	DATEPART(YEAR,OrderDate) as Y
		,DATEPART(MONTH,OrderDate) as M
		,TotalDue
FROM Sales.SalesOrderHeader
)
SELECT DISTINCT Y
		,SUM(IIF(M = 1,TotalDue,0)) as [SUMM01]
		,AVG(IIF(M = 1,TotalDue,0)) as [AVM01]
		,SUM(IIF(M = 2,TotalDue,0)) as [M02]
		,SUM(IIF(M = 3,TotalDue,0)) as [M03]
		,SUM(IIF(M = 4,TotalDue,0)) as [M04]
		,SUM(IIF(M = 5,TotalDue,0)) as [M05]
		,SUM(IIF(M = 6,TotalDue,0)) as [M06]
		,SUM(IIF(M = 7,TotalDue,0)) as [M07]
		,SUM(IIF(M = 8,TotalDue,0)) as [M08]
		,SUM(IIF(M = 9,TotalDue,0)) as [M09]
		,SUM(IIF(M = 10,TotalDue,0)) as [M10]
		,SUM(IIF(M = 11,TotalDue,0)) as [M11]
		,SUM(IIF(M = 12,TotalDue,0)) as [M12]
		,SUM(TotalDue) as YTotal
FROM srcTable_cte 
GROUP BY Y
