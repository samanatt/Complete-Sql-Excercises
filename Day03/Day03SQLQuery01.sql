/*
لیست کالاهایی را نمایش دهید که حداقل یک نظر با امتیاز 5 داشته باشد
*/
SELECT *
FROM Production.Product as p
WHERE 
		EXISTS (
				SELECT *
				FROM Production.ProductReview as pr
				WHERE Rating = 5 AND p.ProductID = pr.ProductID 
				)
SELECT *
FROM Production.Product AS P
WHERE 
	EXISTS ( SELECT *
	FROM Production.ProductReview AS PR
	WHERE Rating = 5 AND P.ProductID= PR.ProductID
		)
/*

در صورتیکه سال مالی فعال سیستم 1401 باشد
لیست کالاهایی را نمایش دهید که حداقل یک نظر با امتیاز 5 داشته باشد
*/

SELECT *
FROM Production.Product as p
WHERE 
		EXISTS (
				SELECT *
				FROM Production.ProductReview as pr
				WHERE Rating = 5 AND p.ProductID = pr.ProductID 
				)
		AND
		EXISTS (SELECT * FROM DBConfig.dbo.CurrentYear WHERE CurrentYear = 1401)

SELECT *
FROM Production.Product AS P
WHERE
	EXISTS( SELECT *
			FROM Production.ProductReview AS PR
			WHERE Rating >5 AND P.ProductID = PR.PRODUCTID
		)  
	AND 
	EXISTS(
			SELECT *
			FROM Production.ProductReview
			WHERE CURRENTyEAR = 1401)