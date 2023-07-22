SELECT AccountId
		,TranDate
		,TranAmt
		,SUM(TranAmt) OVER(PARTITION BY AccountId ORDER BY TranDate) as RunTotalAmt
		,SUM(TranAmt) OVER(PARTITION BY AccountId) as RunTotal2
		,SUM(TranAmt) OVER() as RunTotal3
		,SUM(TranAmt) OVER(ORDER BY TranDate) as RunTotal4
		,SUM(TranAmt) OVER(ORDER BY TranAmt) as RunTotal5
		,COUNT(*) OVER(PARTITION BY AccountId ORDER BY TranDate) as trCount
		,MAX(TranAmt) OVER(PARTITION BY AccountId ORDER BY TranDate) as trMax
		,MIN(TranAmt) OVER(PARTITION BY AccountId ORDER BY TranDate) as trMin
		,AVG(TranAmt) OVER( PARTITION BY AccountId ORDER BY TranDate) as TrAvg
FROM tr
ORDER BY AccountId,TranDate
-----------------------------------------------
/*
گزارشی بنویسید که در هر ردیف شماره ردیف  و تعداد کل هر رکورد بگوییم
*/
SELECT AccountId
		,TranDate
		,TranAmt
		,ROW_NUMBER() OVER(PARTITION BY AccountId ORDER BY TranDate)
		,COUNT(*) OVER (PARTITION BY AccountId)
		,ROW_NUMBER() OVER(ORDER BY AccountId,TranDate)
		,COUNT(*) OVER()

FROM tr
ORDER BY AccountId,TranDate