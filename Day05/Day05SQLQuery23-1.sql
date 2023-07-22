/*
تابعی بنویسید که عنوان یک رنگ را به عنوان ورودی دریافت کند
و لیست کالاهای آن رنگی را نمایش دهد
*/

CREATE FUNCTION GetProductListByColor(@colorName nvarchar(10))
RETURNS TABLE
AS
RETURN
     (

	 SELECT *
	 FROM AdventureWorks2019.Production.Product
	 WHERE Color Like @colorName
	)