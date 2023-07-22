SELECT CustomerID
		,OrderDate
		,TotalDue
FROM Sales.SalesOrderHeader
ORDER BY CustomerID
/*
گزارشی بنویسید که به ازای هر مشتری
مبلغ گرانترین خرید
مبلغ ارزانترین خرید
تاریخ انجام ارزانترین خرید
تاریخ انجام گرانترین خرید 

را نمایش دهد.

*/