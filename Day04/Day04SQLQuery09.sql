/*
گزارشی بنویسید که لیست گره ها را نمایش دهد
*/
SELECT *
FROM TreeSample

/*
گزارشی بنویسید که لیست گره هاو عنوان والد آنها را را نمایش دهد

A		null
AA		A
AB		A
AC		A
AD		A
ACA		AC
ACB		AC
ACC
ACBA
ACBB
ACBAA
*/
use TAMRINI;
SELECT Tr1.Title
	,Tr1.id_parent as Parent
FROM treeSample as Tr1
left Join treeSample as Tr2 on(Tr1.id_Parent = Tr2.Id)
/*
گزارشی بنویسید که گره های ریشه و مسیر هر گره تا ریشه را نمایش دهد
A	   Null
AA	
AB		A
AC	
AD	
ACA	
ACB	
ACC
ACBA
ACBB
ACBAA ACBA->ACB->AC->A


*/

SELECT T1.Title
		,isNull(t2.Title,'')
		+isNull('->'+t3.Title,'')
		+isNull('->'+t4.Title,'')
		+isNull('->'+t5.Title,'') as RootPath
FROM TreeSample as T1
	 Left Join TreeSample as t2 on (T1.id_Parent = T2.id)
	 Left Join TreeSample as t3 on (t2.id_Parent = t3.id)
	 Left Join TreeSample as t4 on (t3.id_Parent = t4.id)
	 Left Join TreeSample as t5 on (t4.id_Parent = t5.id)

SELECT T1.Title
	+ISNULL(T2.Title,'')
	+ISNULL('->'+T3.Title,'')
	+ISNULL('->'+T4.Title,'')
	+ISNULL('->'+T5.Title,'') AS ROOT_TREE
FROM TreeSample AS T1
		LEFT JOIN TreeSample AS T2 ON (T1.id_Parent = T2.id)
		LEFT JOIN TreeSample AS T3 ON (T2.id_Parent = T3.id)
		LEFT JOIN TreeSample AS T4 ON (T3.id_Parent = T4.id)
		LEFT JOIN TreeSample AS T5 ON (T4.id_Parent = T5.id)