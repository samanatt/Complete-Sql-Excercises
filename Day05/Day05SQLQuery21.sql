SELECT ProductID
		,Name
		,ProductNumber
		,Color
INTO Product10
FROM AdventureWorks2019.Production.Product

----------------------------------

SELECT *
FROM Product10


UPDATE Product10
SET Color = null

/*
کوئری بنویسید که از جدول کالا در دیتابیس اصلی، رنگ کالاها در جدول کالای جدید را به روز رسانی نماید

*/

UPDATE p10
SET p10.Color =p .Color
FROM Product10 as p10
	Left Join AdventureWorks2019.Production.Product as p on (p10.ProductID = p.ProductID)

