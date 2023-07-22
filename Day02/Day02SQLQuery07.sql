SELECT *
FROM  (SELECT ProductID
			 ,Name as ProductName
		     ,ProductNumber
		FROM Production.Product) as t
-----------------------------------------------------------



SELECT *
FROM  (SELECT ProductID
			 ,Name as ProductName
		     ,ProductNumber
		FROM Production.Product
		WHERE Color Like 'Red' ) as t
ORDER BY t.ProductID
---------------------------------------------------------
SELECT *
FROM  (SELECT ProductID
			 ,Name as ProductName
		     ,ProductNumber
			 ,Color
		FROM Production.Product) as t
WHERE t.Color Like 'Red'
-------------------------
SELECT *
FROM
(
SELECT ProductID
			 ,Name as ProductName
		     ,ProductNumber + ' p' AS NewField
		FROM Production.Product
		WHERE Color Like 'Red'
		) AS T
