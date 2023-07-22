/*
یک
SP
بنویسید که یک عدد صحیح مثبت را به عنوان ورودی
دریافت کند و فاکتوریل را حساب کند

*/

CREATE PROCEDURE f(@a int)
AS
Begin
	DECLARE @r int
	SET @r = 1

	WHILE @a > 1
		Begin
			SET @r = @r * @a
			SET @a = @a - 1
		End
	PRINT @r
End