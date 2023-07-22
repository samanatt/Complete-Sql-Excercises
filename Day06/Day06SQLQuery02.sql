/*
گزارش زیر را در نظر بگیرید
می خواهیم لیست فاکتورها را به همراه قیمت آنها به سیستمی تحویل دهیم
ولی لیست باید با این شرایط باشد
-  هر سفارش و مبلغ آن در یک ردیف قرار بگیرد
- در رقم عبارت اعشار نباشد
-- فقط قسمت صحیح عدد درج شود
-- طول بخش صحیح عدد هم 10 رقم باشد و اگر کمتر از این مقدار شد در 
سمت چپ عدد 0 بگذارد


SO43659-0000023153
SO43660-0000001457
SO43661-0000036865
*/
WITH cte AS
(
SELECT SalesOrderNumber
		,CAST(TotalDue as nvarchar(10)) as StrTotalDue
		,CHARINDEX('.', CAST(TotalDue as nvarchar(10))) as DotPosition
FROM Sales.SalesOrderHeader
)
, CTE2 AS
(
SELECT SalesOrderNumber
		,LEFT(StrTotalDue,DotPosition - 1) as IntTotalDue
FROM cte
)
SELECT SalesOrderNumber
		+'-'
		+REPLICATE('0',10 - LEN(IntTotalDue))
		+IntTotalDue
FROM CTE2

SELECT CAST('1234' as int)+1
SELECT CAST('1234a' as int)


