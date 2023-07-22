SELECT 1 as number
UNION ALL
SELECT 2 as number
UNION ALL
SELECT 3 as number
UNION ALL
SELECT 4 as number
UNION ALL
SELECT 5 as number

---------------------------------------------


WITH cte AS
(
SELECT 1 as number
UNION ALL
SELECT number+1
FROM cte
WHERE number < 20
)
SELECT *
FROM cte
-----
WITH CTE AS
(	SELECT 1 AS NUMBER
	UNION ALL
	SELECT NUMBER * 3
	FROM CTE
	WHERE NUMBER <30
	)
SELECT *
FROM CTE
