SELECT AccountId
		,TranDate
		,TranAmt
		,SUM(TranAmt) OVER(	
							PARTITION BY AccountId 
							ORDER BY TranDate
						  ) as Sum1
		,SUM(TranAmt) OVER(
							PARTITION BY AccountId
							ORDER BY TranDate
							ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
							) as Sum2

		,SUM(TranAmt) OVER
							(
							PARTITION BY AccountId
							ORDER BY TranDate
							ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING
							) as Sum3
		,SUM(TranAmt) OVER
							(
							PARTITION BY AccountId
							ORDER BY TranDate
							ROWS BETWEEN 1 PRECEDING AND 2 FOLLOWING
							) as Sum4

		,MAX(TranAmt) OVER 	(
							PARTITION BY AccountId
							ORDER BY TranDate
							ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
							)
		,MAX(TranAmt) OVER 	(
							
							ORDER BY TranDate
							ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING
							)

FROM tr
ORDER BY AccountId,TranDate


