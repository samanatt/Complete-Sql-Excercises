/*
تابعی بنویسید که عنوان یک رنگ را به عنوان ورودی دریافت کرده
و لیست کالاهای آن رنگ به همراه تعداد کل فروش را نمایش دهد
*/
CREATE FUNCTION GetProductListByColor2(@colorName nvarchar(10))
RETURNS @resultTable TABLE 
							(
							pid int
							,pName nvarchar(80)
							,PColor nvarchar(10)
							,TotalOrderQty int
							)
AS
Begin

INSERT INTO @resultTable (pid,pName,PColor,TotalOrderQty)

SELECT p.ProductID
		,p.Name
		,p.Color
		,ISNULL(SUM(sod.OrderQty),0)
FROM AdventureWorks2019.Production.Product as P
		Left Join AdventureWorks2019.Sales.SalesOrderDetail as sod on (p.ProductID  = sod.ProductID)
WHERE Color Like @colorName
GROUP BY p.ProductID,p.Name,p.Color

RETURN

End