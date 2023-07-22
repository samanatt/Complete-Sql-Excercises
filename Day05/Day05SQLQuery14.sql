INSERT INTO SampleTable
VALUES(1,'A','A Des','123456')

INSERT INTO SampleTable
VALUES(2,'B',null,'444444')

INSERT INTO SampleTable
VALUES(3,null,'C Des','123456')

INSERT INTO SampleTable
VALUES('SSS','A','A Des','123456')


INSERT INTO SampleTable(id,FirstName,NationalCode)
VALUES(7,'R','54545')

INSERT INTO SampleTable(FirstName,NationalCode,id)
VALUES('M','665646',10)

INSERT INTO SampleTable(NationalCode,id)
VALUES('665646',12)



INSERT INTO SampleTable(id,FirstName)
VALUES
      (20,'Y')
	  ,(21,'T')
	  ,(22,'W')
	 



SELECT *
FROM SampleTable