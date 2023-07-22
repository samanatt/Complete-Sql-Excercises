INSERT INTO Car(Title)
VALUES(N'هایما')


SET IDENTITY_INSERT Car ON
INSERT INTO Car(CarTypeId,Title)
VALUES (99,N'پیش فرض')
SET IDENTITY_INSERT Car OFF


INSERT INTO Car(Title)
VALUES(N'سورن')

in


INSERT INTO Person(FirstName,LastName,CityId_BirthPlace)
VALUES('A','B',DEFAULT)