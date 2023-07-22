CREATE VIEW newView
AS
SELECT PName + '/'+PNumber as Title
		,Case WHEN PColor Like 'Unknown' THEN N'بدون رنگ' else N'رنگی' end as color
		,1 as newField
FROM NewP




