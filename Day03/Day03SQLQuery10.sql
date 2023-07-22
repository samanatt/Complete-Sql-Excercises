WITH cte AS
(
SELECT id as CurrentRow
		,LEAD(id,1,null) OVER (ORDER BY id) as NextRow
FROM Numbers
)

SELECT CurrentRow + 1 as FromNumber
		,NextRow - 1 as ToNumber
FROM cte
WHERE NextRow - CurrentRow > 1