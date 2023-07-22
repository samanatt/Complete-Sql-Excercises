/*
گزارشی بنویسید که بگوید در هر رنگ چه کد کالاهایی وجود دارند
Black CA-5965/CA-6738CA-7457
Silver FH-2981/FC-3982
*/


SELECT Color
		,STRING_AGG(ProductNumber,'/')
FROM Production.Product
WHERE Color is not Null
GROUP BY Color

----------------------------------------------------------------
SELECT *
FROM Production.Product

SELECT Color
		,STRING_AGG(PRODUCTNUMBER,',')
FROM Production.Product
WHERE Color IS NOT NULL
GROUP BY Color

