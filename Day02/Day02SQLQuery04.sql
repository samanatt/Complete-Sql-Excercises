
IF EXISTS (SELECT * FROM Production.Product)
   Print 'Some Records'
ELSE
   Print 'No Records'


IF EXISTS(SELECT * FROM Production.Product WHERE COLOR = 'RED')
	PRINT 'SOME RECORDS ARE'
ELSE
	PRINT ' NO SORRY'

IF EXISTS (SELECT * FROM Production.Product WHERE ProductID = 10)
   Print 'Some Records'
ELSE
   Print 'No Records'




-----------------------------------------------------------------
IF 3 > 2
   print 'True'
ELSE 
  print 'False'


  IF 3 < 2
   print 'True'
ELSE 
  print 'False'