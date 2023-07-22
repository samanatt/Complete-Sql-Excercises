/*
یک 
SP
بنویسید که
سه عدد را دریافت کرده و جمع آنها را چاپ کند


*/
exec Sum3Numbers 1,2,3


CREATE PROCEDURE Sum3Numbers(@a int , @b int = 10, @c int)
AS
Begin

Print @a+@b+@c

End