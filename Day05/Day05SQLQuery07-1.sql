/*
یک 
SP
بنویسید که یک ورودی گرفته و اگر مقدار ورودی
1: لیست کالا
2: لیست فاکتور
3: لیست اقلام فاکتور
در غیر اینصورت پیغامی مبنی بر عدم شناسایی نوع گزارش را نمایش دهد

*/
CREATE PROCEDURE C18SampleSp(@repType int)
AS
Begin

	IF @repType = 1
		SELECT *
		FROM Production.Product
	ELSE IF @repType = 2
		SELECT *
		FROM Sales.SalesOrderHeader
	ELSE IF @repType = 3
		SELECT *
		FROM Sales.SalesOrderDetail
	ELSE print N'نوع گزارش درخواستی وجود ندارد'

End