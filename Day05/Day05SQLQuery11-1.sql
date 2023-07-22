/*
تابع
فرض کنید می خواهیم یک عدد را گرفته و دو برابر آن را برگردانیم
*/
CREATE FUNCTION FunctionSample(@a int)
RETURNS int
AS
Begin

RETURN @a * 2

End