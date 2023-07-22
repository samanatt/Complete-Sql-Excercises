/*
گزارشی بنویسید که به تفکیک سال و ماه شمسی
میزان فروش را نمایش دهد
*/

SELECT dd.PersianCalendarYear
		,PersianMonthName
		,SUM(TotalDue)
FROM Sales.SalesOrderHeader as soh
	Left Join DimDate as dd on (soh.OrderDate = dd.FullDateAlternateKey)
GROUP BY dd.PersianCalendarYear,dd.PersianMonthName,dd.PersianMonthNumberOfYear
ORDER BY dd.PersianCalendarYear,dd.PersianMonthNumberOfYear







SELECT FORMAT(GETDATE(),'d')
		,FORMAT(GETDATE(),'D')
		,FORMAT(GETDATE(),'d','en-US')
		,FORMAT(GETDATE(),'d','en-gb')
		,FORMAT(GETDATE(),'d','fa-IR')
		,FORMAT(GETDATE(),'D','fa-IR')
		,FORMAT(GETDATE(),'d','ar')
		,FORMAT(GETDATE(),'D','ar')

------------------PERSIAN---------------
SELECT FORMAT(GETDATE(),'D','FA-IR')
		,FORMAT(GETDATE(),'d','FA-IR')



SELECT *
FROM DimDate