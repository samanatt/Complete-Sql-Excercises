CREATE VIEW vwProduct
AS
SELECT Pid as [شناسه یکتای کالا]
		,PName as [نام کالا]
		,PNumber as [شماره کالا]
FROM NewP
WHERE Pid > 700