/*
یک 
SP
بنویسید که یک 
Id
کالا را به عنوان ورودی گرفته
و 
آن را نمایش دهد

*/
exec GetProductById 777

CREATE PROCEDURE GetProductById(@id int)
AS
Begin
SELECT *
FROM Production.Product
WHERE ProductID = @id


End