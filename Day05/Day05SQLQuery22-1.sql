/*
یک تابع بنویسید که لیست کالاهای رنگ دار شامل
ستونهای اصلی رابرگرداند
*/
CREATE FUNCTION GetColoredProduct()
RETURNS TABLE
AS
RETURN

     (

	 SELECT ProductID
			,Name
			,ProductNumber
			,Color
	 FROM AdventureWorks2019.Production.Product
	 WHERE Color IS NOT NULL


	 )