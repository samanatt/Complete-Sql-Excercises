SELECT AccountId
		,TranDate
		,TranAmt
		,SUM(TranAmt) OVER (PARTITION BY AccountId  ORDER BY TranDate)
		,SUM(TranAmt) OVER (PARTITION BY AccountId  ORDER BY TranDate ROWS UNBOUNDED PRECEDING)
FROM tr
ORDER BY AccountId,TranDate
