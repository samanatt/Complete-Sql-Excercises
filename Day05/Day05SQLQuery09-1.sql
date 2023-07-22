CREATE PROCEDURE SampleSP (@a int)
WITH ENCRYPTION
AS
Begin


SELECT *
FROM AdventureWorks2019.Production.Product
WHERE ProductID = @a

End