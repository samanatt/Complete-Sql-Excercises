/*
همه افراد و عنوان محل تولد هر کدام
*/
SELECT Person.Name
		,City.Title
FROM Person Left Join City on (City.Id = Person.Id_BirthPlace)

/*
نکات نوشتاری
*/
----------------------------------------------

SELECT Person.Name
		,City.Title
FROM Person 
	 Left Join City on (City.Id = Person.Id_BirthPlace)
------------------------------------------------------------
SELECT Person.Name
		,City.Title
FROM Person 
	 Left Join City on City.Id = Person.Id_BirthPlace
--------------------------------------------------------------
SELECT Person.Name
		,City.Title
FROM Person 
	 Left Join City on ( Person.Id_BirthPlace = City.Id )
------------------------------------------------------------------
SELECT p.Name
		,c.Title
FROM Person as p
	 Left Join City as c on (c.Id = p.Id_BirthPlace)
------------------------------------------------------------------
SELECT   Name
		,Title
		,Person.Id as [Person Id]
		,City.Id as [City Id]
FROM Person 
	 Left Join City on (City.Id = Id_BirthPlace)
