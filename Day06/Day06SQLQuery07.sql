/*
یک 
SP
بنویسید که تعدادی 
Id
کالا را به عنوان ورودی گرفته
و 
آنها را نمایش دهد

*/
exec GetProductByIds2 '777,778,800,900,350'
CREATE PROCEDURE GetProductByIds2(@ids nvarchar(1000))
AS
Begin
SELECT *
FROM Production.Product
WHERE ProductID IN (SELECT CAST(Value as int) FROM string_split(@ids,','))


End