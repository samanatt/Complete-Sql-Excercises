/*
جدول را در نظر بگیرید


*/
SELECT ProductID
		,Name
		,ProductNumber
		,0 as TotalQty
INTO Product20
FROM AdventureWorks2019.Production.Product

SELECT *
FROM Product20

/*
ستون
TotalQty
را در جدول فوق، از روی مجموع 
OrderQty
در جدول 
SalesOrderDetail
به روزرسانی نمایید

*/