/*
فرض کنید که جدولی با ساختار زیر دارید
*/
CREATE TABLE dbo.QProduct
	(
	id int NOT NULL IDENTITY (1, 1),
	pid int NOT NULL,
	pname nvarchar(50) NOT NULL,
	pnumber nvarchar(15) NOT NULL
	)  ON [PRIMARY]
/*
فرض کنید از جدول
Product
این جدول را پر می کنیم به صورت زیر
*/
INSERT INTO QProduct(pid,pname,pnumber)
SELECT ProductID
		,Name
		,ProductNumber
FROM AdventureWorks2019.Production.Product
WHERE ProductID > 800

----------------------------------------
INSERT INTO QProduct(pid,pname,pnumber)
SELECT ProductID
		,Name
		,ProductNumber
FROM AdventureWorks2019.Production.Product
WHERE ProductID > 950
---------------------------------------

INSERT INTO QProduct(pid,pname,pnumber)
SELECT ProductID
		,Name
		,ProductNumber
FROM AdventureWorks2019.Production.Product

----------------------------
INSERT INTO QProduct(pid,pname,pnumber)
SELECT ProductID
		,Name
		,ProductNumber
FROM AdventureWorks2019.Production.Product
WHERE ProductID < 900


--------------------------------

/*
در جدول ما رکوردهای تکراری درج شده اند
*/
SELECT *
FROM QProduct

/*
با کمک کوئری رکوردهای تکراری را به جز یک نماینده از هر کدام
حذف کنید

*/
