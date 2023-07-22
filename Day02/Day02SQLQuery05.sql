SELECT *
FROM T


/*

اگر همه مقادیر جدول کمتر  از عدد 5 باشد
True
و

در غیر اینصورت
False
نمایش دهید
*/


IF 5 > ALL(SELECT Id FROM T)
  Print 'True'
ELSE
	Print 'False'


IF 3 > ALL(SELECT Id FROM T)
  Print 'True'
ELSE
	Print 'False'

	/*

اگر حداقل یک جدول کمتر  از عدد 3 باشد
True
و

در غیر اینصورت
False
نمایش دهید
*/

IF 3 > ANY(SELECT Id FROM T)
  Print 'True'
ELSE
	Print 'False'