/*
تابعی بنویسید که یک عدد را دریافت کرده
و فاکتوریل آن را محاسبه و به عنوان خروجی
ارائه کند


بازگشتی
*/
CREATE FUNCTION f3(@a int)
RETURNS INT
AS
BEGIN
	DECLARE @result int = 1

	IF @a > 1
		SET @result = @a * dbo.f3(@a - 1)
	ELSE
	  SET @result =  1
RETURN @result


END