CREATE PROCEDURE f2 (@a int,@result int OUTPUT)
AS
Begin
DECLARE @r int
	SET @r = 1

	WHILE @a > 1
		Begin
			SET @r = @r * @a
			SET @a = @a - 1
		End
	SET @result = @r
End