SELECT *
FROM Production.Product
WHERE Name COLLATE SQL_Latin1_General_CP1_CS_AS LIKE 'Blade'

SELECT *
FROM Production.Product
WHERE Name COLLATE SQL_Latin1_General_CP1_CS_AS LIKE 'blade'

SELECT *
FROM Production.Product
WHERE Name COLLATE SQL_Latin1_General_CP1_CS_AS LIKE 'BlADe'