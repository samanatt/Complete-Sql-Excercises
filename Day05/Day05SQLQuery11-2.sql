print [dbo].[FunctionSample](10)

SELECT [dbo].[FunctionSample](10)


/*
می خواهیم لیست فاکتورها و مبلغ 2 برابر شده مبلغ فاکتور را ببینبم
*/

SELECT SalesOrderNumber
		,TotalDue
		,TotalDue * 2
		,[dbo].[FunctionSample](TotalDue)
FROM AdventureWorks2019.Sales.SalesOrderHeader