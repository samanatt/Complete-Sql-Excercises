

--سه رکورد اول را نمایش دهید


SELECT TOP 3 *
FROM dbo.Person
ORDER BY FirstName
-- دو کوئری بالا و پایین سه رکورد اول را بر اساس ترتیبی که در آنها مشخص شده ایت را نمایش می دهد
SELECT TOP 3 *
FROM dbo.Person
ORDER BY BirthMonth


--چهل درصد اول داده ها را نمایش دهید
SELECT TOP 40 PERCENT *
FROM dbo.Person
ORDER BY FirstName


--اگر رکوردها را به بخش های 2 تایی تقسیم کنیم، بخش دوم را نمایش دهید، مرتب سازی بر اساس نام
SELECT  *
FROM dbo.Person
ORDER BY FirstName
OFFSET 2 ROW
FETCH NEXT 2 ROWS ONLY
-------------------------------------------------------------------
SELECT  *
FROM dbo.Person
ORDER BY FirstName
OFFSET 2 ROW


