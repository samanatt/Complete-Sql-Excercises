--طول رشته

print LEN('abcdef')

--معکوس یک رشته

print REVERSE('abcdef')

--تکرار یک کاراکتر یا یک رشته به دفعات

print REPLICATE('a',6)

print REPLICATE('abc',6)

--حالت خاص تابع فوق برای فضای خالی

print '*'+SPACE(0)+'*'
print '*'+SPACE(1)+'*'
print '*'+SPACE(10)+'*'
print '*'+SPACE(100)+'*'

--جدا سازی بخشی از یک رشته و نمایش بخش جدا شده
print SUBSTRING('abcdef',3,2)
--از نقطه دلخواه تا آخر
Declare @startPoint int = 3
		,@currentStr nvarchar(10) = 'abcdef'
print SUBSTRING(@currentStr,@startPoint,LEN(@currentStr)-@startPoint+1)


--جدا سازی از ابتدای رشته
print Left('abcdef',3)


--جدا سازی از انتها رشته
print Right('abcdef',3)

--جایگزینی بخشی از یک رشته با  رشته دیگر
print REPLACE ('This is a Test','is','**')


--برداشتن بخشی از یک رشته با کمک نقطه شروع و طول و جایگزینی با رشته جدید
print STUFF('My Son Name is xxx.',16,3,'Reza')

--اتصال چند رشته به هم
print CONCAT('A','-','B','-','C','-','D')
print CONCAT ('A',null,'B')
print 'A'+ISNULL(null,SPACE(0))+'B'

--اتصال چند رشته با کمک یک متصل کننده
print CONCAT_WS('-','AA','VB','DF','JFKGK')
