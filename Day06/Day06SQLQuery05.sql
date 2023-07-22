/*
یک 
SP
بنویسید که تعدادی 
Id
کالا را به عنوان ورودی گرفته
و 
آنها را نمایش دهد

*/
exec GetProductByIds '777,778,800,900,350'
CREATE PROCEDURE GetProductByIds(@ids nvarchar(1000))
AS
Begin
SELECT *
FROM Production.Product
WHERE CHARINDEX(','+CAST(ProductID as nvarchar(5))+',', ','+@ids+',') > 0



End