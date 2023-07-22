SELECT *
FROM dbo.Person
-------------------------------------------------


select *
from dbo.Person
------------------------------
SeLECt *
fRom DBO.pErSon
-------------------------------------------------

SELECT * FROM dbo.Person
----------------------------------------------------------
SELECT
*
FROM
dbo.Person

---------------------------------------------------


SELECT FirstName as [نام فرد]
		,LastName [نام خانوادگی]
		,EducationLevel 'سطح تحصیلات'
		,[کد ملی] = NationalCode
		,BirthYear as [سال تولد]
		,Gender as جنسیت
		,Phone as تلفن
FROM dbo.Person


-------------------------------------------

SELECT FirstName +' '+ LastName as [Full Name]
		,FirstName +' '+ LastName
		,FirstName
		,LastName
		,1401 - BirthYear as age
		,'1234' as NewField
		,EducationLevel
		,NationalCode
FROM Person

