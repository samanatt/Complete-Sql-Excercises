SELECT *
FROM PersonPhone

SELECT pid
	, PhoneType
	,phoneValue
FROM PersonPhone as src
	UNPIVOT
	(
	 phoneValue
	 FOR PhoneType in ([phone1],[phone2],[phone3])
	) as p