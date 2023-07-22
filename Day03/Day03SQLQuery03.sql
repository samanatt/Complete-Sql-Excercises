/*
سهم هر تراکنش از جمع کل تراکنش هر گروه و کل تراکنش ها
*/
SELECT AccountId
		,TranDate
		,TranAmt
		,(TranAmt / SUM(TranAmt) OVER (PARTITION BY AccountId) ) * 100
		,(TranAmt / SUM(TranAmt) OVER () ) * 100
FROM tr


print 10 / 3
print 10 / 3.0
print 10 % 3
print floor(10/3)
print Ceiling(10/3)
print POWER(10,3)

PRINT 10/3
PRINT 10/3.0
PRINT 10 % 3
PRINT FLOOR(10/3)
PRINT CEILING(10/3)
PRINT POWER(10,3)

PRINT FLOOR(5.1/2)
PRINT CEILING(5.1/2)
5.1