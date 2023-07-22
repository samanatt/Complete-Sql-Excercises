--همه افرادی را نمایش دهید که متولد 1382 باشند
SELECT  *
FROM dbo.Person
WHERE BirthYear = 1382

/*

= > < >= <= <> !=

*/

--متولدین 1370 و 1380 را نمایش دهید

SELECT *
FROM dbo.Person
WHERE BirthYear = 1380 OR BirthYear = 1370


-- متولدین 1370 و  و 1374 و 1378 1380 را نمایش دهید

SELECT *
FROM dbo.Person
WHERE BirthYear = 1380 OR BirthYear = 1370 OR BirthYear = 1374 OR BirthYear = 1378 

--کوئری بالا و پاین عملکرد مشابه ای دارند
SELECT *
FROM dbo.Person
WHERE BirthYear IN (1380,1370,1374,1378)


--افرادی را نمابش دهید که متولد 1370 نباشند
SELECT *
FROM dbo.Person
WHERE BirthYear <> 1370

SELECT *
FROM dbo.Person
WHERE BirthYear != 1370

--افرادی را نمابش دهید که متولد 1370  و 1380 نباشند

SELECT *
FROM dbo.Person
WHERE BirthYear <> 1370 AND BirthYear <> 1380


SELECT *
FROM dbo.Person
WHERE  NOT (BirthYear = 1380 OR BirthYear = 1370)

SELECT *
FROM dbo.Person
WHERE BirthYear NOT IN (1380,1370)

--هر سه کوئری بالا عملکرد مشابهی دارند


/*
افرادی را نمایش دهید که سال تولد آنها قبل از 1380 باشد
*/
SELECT *
FROM dbo.Person 
WHERE BirthYear < 1380

/*
افرادی را نمایش دهید که سال تولد آنها بین 1370 و 1380 باشد و خود این دو عدد هم باشد
*/

SELECT *
FROM dbo.Person
WHERE BirthYear >= 1370 AND BirthYear <= 1380
--کوئری بالا و پایین عملکرد یکسانی را دارند

SELECT *
FROM dbo.Person
WHERE BirthYear BETWEEN 1370 AND 1380

--افرادی را نمایش دهید که سال تولد آنها کمتر از 1370 و یا بیشتر 1380 باشد
SELECT *
FROM dbo.Person
WHERE BirthYear < 1370 OR BirthYear <= 1380

SELECT *
FROM dbo.Person
WHERE NOT (BirthYear >= 1370 AND BirthYear <= 1380)

SELECT *
FROM dbo.Person
WHERE BirthYear NOT BETWEEN 1370 AND 1380

--هر سه کوئری بالا عملکرد مشابهی دارند


SELECT *
FROM dbo.Person
WHERE NationalCode = ''


SELECT *
FROM dbo.Person
WHERE NationalCode IS NULL


SELECT *
FROM dbo.Person
WHERE NationalCode IS NOT NULL


SELECT FirstName+':'+NationalCode
		,FirstName+':'+(CASE WHEN NationalCode IS NULL THEN '**' ELSE NationalCode END)
		,FirstName+':'+ISNULL(NationalCode,'***')
		,*
FROM dbo.Person

--بر اساس کد ملی مرتب سازی انجام دهیم
--ولی می خواهم نال در انتهای ردیف ها قرار گیرد
SELECT *
FROM dbo.Person
ORDER BY ISNULL(NULLIF(NationalCode,''),'999999999')



SELECT *
FROM dbo.Person
ORDER BY (CASE WHEN NationalCode IS NULL THEN 1 WHEN NationalCode = '' THEN 2 ELSE 0 END),NationalCode 
