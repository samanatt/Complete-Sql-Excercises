/*
همه افراد و عنوان محل تولد هر کدام
*/
USE TAMRINI;
SELECT Name
	,C.Title AS City
FROM Person AS P
LEFT JOIN City AS C ON(C.id = P.id_BirthPlace)
-------------------------------------------------------------------
--کوئری بالا و پایین خروجی یکسانی راایجاد می کنند

SELECT Person.Name
		,City.Title
FROM City Right Join Person on (City.Id = Person.Id_BirthPlace)

--************************************************************************************
/*

عنوان همه شهرها و افرادی که در آن متولد شده اند
*/
SELECT Title
	,Name
FROM City AS C
LEFT JOIN Person AS P ON(C.id = P.id_BirthPlace)
--کوئری بالا و پایین خروجی یکسانی راایجاد می کنند
SELECT City.Title
		,Person.Name
FROM Person Right Join City on (City.Id = Person.Id_BirthPlace)
--************************************************************************************
/*
همه افراد  و همه شهرها را به شرطی که متولد یا محل تولد داشته باشند
*/
SELECT City.Title
		,Person.Name
FROM Person Inner Join City on (City.Id = Person.Id_BirthPlace)

--کوئری بالا و پایین خروجی یکسانی راایجاد می کنند
SELECT City.Title
		,Person.Name
FROM City Inner Join Person on (City.Id = Person.Id_BirthPlace)
--************************************************************************************

/*
همه افراد و همه شهرها را نمایش دهید
*/

SELECT City.Title
		,Person.Name
FROM Person Full Join City on (City.Id = Person.Id_BirthPlace)

--کوئری بالا و پایین خروجی یکسانی راایجاد می کنند
SELECT City.Title
		,Person.Name
FROM City Full Join Person on (City.Id = Person.Id_BirthPlace)

--************************************************************************************

/*
ارتباط همه افراد و شهرها را نظیر به نظیر نمایش دهید
*/
SELECT Title AS City
	 ,NAME AS Person
FROM City AS C
CROSS JOIN Person AS P

SELECT Person.Name
		,City.Title
FROM City Cross Join Person
ORDER BY Person.Name