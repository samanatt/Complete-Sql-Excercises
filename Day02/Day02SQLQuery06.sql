SELECT *
FROM Production.Product
WHERE Name Like 'Blade-new'


/*
همه کالاهایی را نمایش دهید که 
با 
m
شروع می شوند
*/
SELECT * 
FROM Production.Product
WHERE NAME LIKE 'M%'
--حرف بزرگ
SELECT *
FROM Production.Product
WHERE Name LIKE 'm%'


/*
همه کالاهایی را نمایش دهید که 
به 
t
ختم می شوند
*/


SELECT *
FROM Production.Product
WHERE Name LIKE '%t'

/*
همه کالاهایی را نمایش دهید که 
حرف 
r
در نام آن باشد
*/

SELECT *
FROM Production.Product
WHERE Name LIKE '%r%'

/*
همه کالاهایی را نمایش دهید که 
حرف 
r
در حرف دوم نام باشد
*/

SELECT *
FROM Production.Product
WHERE Name LIKE '_r%'

/*
همه کالاهایی را نمایش دهید که 
حرف 
r
در نام آنها  نباشد
*/

SELECT *
FROM Production.Product
WHERE Name NOT LIKE '%r%'


/*
همه کالاهایی را نمایش دهید که 
حرف 
r یا e
در حرف دوم نام باشد

*/

SELECT *
FROM Production.Product
WHERE Name LIKE '_r%' OR Name LIKE '_e%'


/*
همه کالاهایی را نمایش دهید که 
حرف 
r یا e یا a
در حرف دوم نام باشد

*/


SELECT *
FROM Production.Product
WHERE Name LIKE '_r%' OR Name LIKE '_e%' OR Name LIKE '_a%'

--راه دوم

SELECT *
FROM Production.Product
WHERE Name LIKE '_[rea]%'

/*
همه کالاهایی را نمایش دهید که 
حرف 
a تا f
در حرف دوم نام باشد

*/

SELECT *
FROM Production.Product
WHERE Name LIKE '_[abcdef]%'
--راه دوم

SELECT *
FROM Production.Product
WHERE Name LIKE '_[a-f]%'

---

/*
در نام کالا عبارت
tal
باشد

*/
SELECT *
FROM Production.Product
WHERE Name LIKE '%tal%'


/*
همه کلماتی که حرف دوم آن 
e t f
باشد

و 
حرف سوم
 a b c d e f g 

*/
SELECT *
FROM AdventureWorks2019.Production.Product
WHERE NAME LIKE '_[etf][a-g]%'

SELECT *
FROM Production.Product
WHERE Name LIKE '_[etf][a-g]%'

SELECT *
FROM Production.Product
WHERE Name LIKE '%-%'


/*
لیست کالاهایی که حرف دوم آنها
a یا b
نباشد
*/
SELECT *
FROM Production.Product
WHERE Name Like '_[^ab]%'


/*
کالاهایی را نمایش دهید که در نام آنها یک عدد 2 رقمی باشد

*/

SELECT *
FROM Production.Product
WHERE Name LIKE '%[0-9][0-9]%'