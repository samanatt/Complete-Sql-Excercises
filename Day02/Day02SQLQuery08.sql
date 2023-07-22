WITH T2(id,name_kala,number_kala,color) AS 
		(SELECT ProductID,
				Name as product_name,
				ProductNumber,
				Color
		FROM Production.Product AS PP
		WHERE Color like 'Silver'
		)
SELECT * FROM T2


--STRUCTURE OF CTE
WITH T(...)AS 
   (SELECT ...
	)

WITH T2(ID_KALA, NAME_KALA, CODE_KALA, RANG) AS 
	( SELECT ProductID, Name, ProductNumber,Color
		FROM Production.Product
		WHERE Color = 'SILVER'
	)
SELECT * 
FROM T2