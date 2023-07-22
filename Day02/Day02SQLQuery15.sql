--راه اول و بهتر
SELECT Color,
		COUNT(*) as CountByColor
FROM Production.Product
WHERE Color IN ('Red','Blue','Yellow') 
GROUP BY Color
HAVING COUNT(*) > 30
ORDER BY CountByColor

SELECT COLOR,
		COUNT(*) AS NUMOFCOLOR
FROM Production.Product
WHERE COLOR IN('RED','YELLOW','BLUE')
GROUP BY COLOR
HAVING COUNT(*) > 20
ORDER BY NUMOFCOLOR DESC

SELECT Color,
		COUNT(*) AS ColorNum

FROM Production.Product
WHERE Color IN ('Red' , 'Blue' , 'Yellow')
GROUP BY COLOR
HAVING COUNT(*) >= 30
ORDER BY ColorNum
-- راه دوم و فقط تمرینی


WITH cte AS 
(
SELECT Color
		,COUNT(*) as CountByColor
FROM Production.Product
WHERE Color IN ('Red','Blue','Yellow') 
GROUP BY Color
)
SELECT *
FROM cte
WHERE CountByColor > 30