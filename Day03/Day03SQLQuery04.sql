﻿/*
جمع دو سفارش آخر هر مشتري
*/
WITH cte AS
(
SELECT AccountId
		,TranDate
		,TranAmt
		,ROW_NUMBER() OVER (PARTITION BY AccountId ORDER BY TranDate DESC) as rn
FROM tr
)

SELECT AccountId
		,SUM(TranAmt)
FROM cte
WHERE rn <= 2
GROUP BY AccountId

/*WITH CTTE1  AS 
( 
		SELECT * , 
		ROW_NUMBER()OVER (PARTITION BY ACCOUNTID ORDER BY TRANSDATE DESC ) AS KHAR
FROM TR
)

SELECT *,SUM(TRANAMT)
FROM CTE1
WHERE KHAR <=  2
GROUP BY ACOUNTID
*/