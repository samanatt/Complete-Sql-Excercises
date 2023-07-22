/*
داده ها را به ترتیب سال تولد نمایش دهید
*/
SELECT *
FROM dbo.Person
ORDER BY BirthYear

/*
داده ها را به ترتیب سال تولد و سپس ماه تولد نمایش دهید
*/

SELECT *
FROM dbo.Person
ORDER BY BirthYear,BirthMonth
--نتایج کوئری بالا و پایین از منظر مرتب سازی متفاوت هستند
SELECT *
FROM dbo.Person
ORDER BY BirthMonth,BirthYear


/*
داده ها را به ترتیب ماه تولد صعودی و سپس سال تولد به صورت نزولی مرتب کتید
*/

SELECT *
FROM dbo.Person
ORDER BY BirthMonth ASC,BirthYear DESC

/*
داده ها را به ترتیب سن و نزولی نمایش دهید
*/
/*
سه کوئری زیر از نظر ترتیب نمایش مشابه هم هستند
*/
SELECT 1401 - BirthYear as age
		,*
FROM dbo.Person
ORDER BY age DESC
--
SELECT 1401 - BirthYear as age
		,*
FROM dbo.Person
ORDER BY 1401 - BirthYear DESC
---
SELECT *
FROM dbo.Person
ORDER BY 1401 - BirthYear DESC

/*

داده ها را به ترتیب سطح تحصیلی مرتب نمایید
*/
SELECT *
FROM dbo.Person
ORDER BY EducationLevel
--کوئری بالا پاسخ درستی برای سوال مطرح شده نیست


SELECT *
		,(CASE	WHEN EducationLevel = 'PHD' THEN 1 
				WHEN EducationLevel = 'MSC' THEN 2
				WHEN EducationLevel = 'BSC' THEN 3
				WHEN EducationLevel = 'Diploma' THEN 4
			END) as EduLevel
FROM dbo.Person
ORDER BY EduLevel


SELECT *
FROM dbo.Person
ORDER BY (CASE	WHEN EducationLevel = 'PHD' THEN 1 
				WHEN EducationLevel = 'MSC' THEN 2
				WHEN EducationLevel = 'BSC' THEN 3
				WHEN EducationLevel = 'Diploma' THEN 4
			END)
















