/*
haminja bekhaym bishtar va kamtar az 30 flag bezanim chejury mishe?
*/
WITH cte AS
(
SELECT Color
		,COUNT(*) as CountByColor
FROM Production.Product
WHERE Color IN ('Red','Blue','Yellow') 
GROUP BY Color
)
SELECT Color
		,CountByColor
		,(CASE WHEN CountByColor > 30 THEN 1 ELSE 0 END ) as gt30_a
		,IIF(CountByColor > 30 , 1 , 0) as gt30_b
		,(CASE WHEN CountByColor < 30 THEN 1 ELSE 0 END ) as lt30
		,(CASE WHEN CountByColor = 30 THEN 1 ELSE 0 END ) as eq30
	
FROM cte


SELECT Color , COUNT(COLOR) AS NUM
FROM Production.Product
WHERE Color IN ('RED','BLUE','BLACK')
GROUP BY Color
HAVING COUNT(COLOR) >30