SELECT CAST('32' as int)
SELECT CAST('32q' as int)
SELECT CONVERT(int,'32')
SELECT CONVERT(int,'32a')


SELECT *
FROM Person
WHERE ISNUMERIC(age) > 0

SELECT ISDATE('2001-01-01')
SELECT ISDATE('2001-01-0b')
--ISJSON