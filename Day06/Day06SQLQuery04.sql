SELECT 
		',777,778,317,800,900,408,'
		,CHARINDEX(','+CAST(ProductID as nvarchar(5))+',', ',777,778,317,800,900,408,')
		,','+CAST(ProductID as nvarchar(5))+','
		,Name
FROM Production.Product
ORDER BY ProductID


SELECT *
FROM Production.Product