

/*
کوئری بنویسید که دنباله اعدادی که در جدول وجود ندارند را نمایش دهد
*/



WITH cte AS
(
SELECT 1 as n
UNION ALL 
SELECT n + 1
FROM cte
WHERE n < 100

)

SELECT *
FROM cte
EXCEPT
SELECT *
FROM Number
-----------------------------------------------------
WITH CTE AS
(
	SELECT 1 AS NUM
	UNION ALL
	SELECT NUM + 1 
	FROM CTE
	WHERE NUM <100
)
SELECT *
FROM CTE
EXCEPT
SELECT *
FROM NUMBER