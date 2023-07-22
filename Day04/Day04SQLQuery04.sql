/*
گزارشی بنویسید که اقلام فاکتور را شامل تعداد، مبلغ ردیف و عنوان و کد کالا نمایش دهد
*/
--266 productid in 121,317
SELECT p.Name
		,p.ProductNumber
		,sod.OrderQty
		,sod.LineTotal
FROM Sales.SalesOrderDetail as sod
	 Left Join Production.Product as p on (sod.ProductID = p.ProductID)


SELECT PP.Name,
	PP.ProductNumber,
	SOD.LineTotal,
	SOD.OrderQty
FROM Sales.SalesOrderDetail AS SOD
		LEFT JOIN Production.Product AS PP ON (PP.ProductID = SOD.ProductID)



	 /*
گزارشی بنویسید که همه کالاهای به فروش رفته و نرفته را شامل تعداد، مبلغ ردیف و عنوان و کد کالا نمایش دهد
به تفکیک ردیف فاکتور
*/
--266 productid in 121,317 + 238 = 121,555
SELECT p.Name
		,p.ProductNumber
		,sod.OrderQty
		,sod.LineTotal
FROM Sales.SalesOrderDetail as sod
	 Right Join Production.Product as p on (sod.ProductID = p.ProductID)
ORDER BY P.Name

 /*
گزارشی بنویسید که همه کالاهای به فروش رفته و نرفته را شامل تعداد، مبلغ ردیف و عنوان  به صورت سرجمع نمایش دهد*/

SELECT p.Name
		,IsNull(SUM(sod.OrderQty),0) as TotalOrderQty
		,IsNull(SUM(sod.LineTotal),0) as TotalLineTotal
FROM Sales.SalesOrderDetail as sod
	 Right Join Production.Product as p on (sod.ProductID = p.ProductID)	
GROUP BY p.Name
-------------------------------
--کوئری بالا و پایین خروجی یکسانی تولید می کنند

SELECT p.Name
		,IsNull(SUM(sod.OrderQty),0) as TotalOrderQty
		,IsNull(SUM(sod.LineTotal),0) as TotalLineTotal
FROM Production.Product as p
	 Left Join Sales.SalesOrderDetail as sod on (sod.ProductID = p.ProductID)	
GROUP BY p.Name
