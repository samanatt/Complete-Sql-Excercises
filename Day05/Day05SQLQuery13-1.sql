/*
تابعی بنویسید که یک عدد را دریافت کرده
و فاکتوریل آن را محاسبه و به عنوان خروجی
ارائه کند

*/
CREATE FUNCTION f1(@a int)
RETURNS int
AS
Begin
	Declare @r int = 1
	/*
	Declare @r int
	SET @r = 1
	*/
	WHILE @a > 1
		Begin
			SET @r = @r * @a
			SET @a = @a - 1
		End

RETURN @r
	


End