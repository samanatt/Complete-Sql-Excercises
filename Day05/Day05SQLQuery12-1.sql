/*
تابعی بنویسید که
Id
یک کالا را دریافت نموده و جمع تعدادی کل فروش برای آن کالا برگرداند

*/

create FUNCTION CalcProductTotalQty(@pid int)
RETURNS INT
AS
Begin


RETURN		ISNULL((
				SELECT SUM(OrderQty)
				FROM Sales.SalesOrderDetail
				WHERE ProductID = @pid
			),0)



End