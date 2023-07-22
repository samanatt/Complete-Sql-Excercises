SELECT *
FROM [dbo].[vwProduct]


UPDATE dbo.vwProduct
SET [شماره کالا] = '544546'
WHERE [شناسه یکتای کالا] = 710


DELETE FROM dbo.vwProduct
WHERE [شناسه یکتای کالا] = 711


INSERT INTO vwProduct
VALUES('1000','NewP','9999')