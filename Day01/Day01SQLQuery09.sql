/*
فاکتور شناسه 
SalesOrderId = 43659
را در نظر بگیرید


لیست کالاهایی که در این فاکتور به فروش رفته اند را نمایش دهید

*/

SELECT ProductID
FROM Sales.SalesOrderDetail
WHERE SalesOrderId = 43659
------------------------------------------------------------
SELECT *
FROM Production.Product
WHERE ProductID IN
						 (
							SELECT ProductID
							FROM Sales.SalesOrderDetail
							WHERE SalesOrderId = 43659
						 )


----------------------------------------------------------------------
SELECT *
FROM Production.Product
WHERE ProductID IN
					(
						776
						,777
						,778
						,771
						,772
						,773
						,774
						,714
						,716
						,709
						,712
						,711

					)