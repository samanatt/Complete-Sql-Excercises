SELECT Color
		,Sum(ListPrice)
		,MAX( SafetyStockLevel)
		,MIN(SafetyStockLevel)
FROM Production.Product
GROUP BY Color 


SELECT Color
		,MakeFlag
		,COUNT(*) AS COUNTPARAMETERS
FROM Production.Product
GROUP BY Color,MakeFlag
ORDER BY Color,MakeFlag

SELECT Color
		,MakeFlag
		,COUNT(COLOR) AS COUNT_COLOR
FROM Production.Product
GROUP BY Color, MakeFlag
ORDER BY COLOR, MakeFlag


SELECT COLOR,
		COUNT(LISTPRICE) AS NUM_LISTPRICE,
		MAX(SAFETYSTOCKLEVEL) AS MAXX,
		MIN(SAFETYSTOCKLEVEL) AS MINN
FROM Production.Product
GROUP BY COLOR
