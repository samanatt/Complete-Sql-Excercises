DECLARE @n int = '100000000'


SELECT @n
		,FORMAT(@n,'C')
		,FORMAT(@n,'C0')
		,FORMAT(@n,'C4')
		,FORMAT(@n,'C0','fr-FR')
		,FORMAT(@n,'###,###')

