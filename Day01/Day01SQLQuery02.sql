SELECT FirstName
		,LastName
		,Gender
		,(Case	When Gender = 'm' Then N'آقا'
				When Gender = 'f' Then N'خانم'
		 End) as [عنوان جنسیت]
		 ,(Case When EducationLevel = 'PHD' Then N'دکترا'
				When EducationLevel = 'MSC' Then N'کارشناسی ارشد'
				When EducationLevel = 'BSC' Then N'کارشناسی'
				Else EducationLevel
			END ) as [عنوان سطح تحصیلی]
			,EducationLevel
			,[ماه تولد] = CHOOSE(BirthMonth,N'فروردین',N'اردیبهشت',N'خرداد',N'تیر',N'مرداد',N'شهریور',N'مهر',N'آبان',N'آذر',N'دی',N'بهمن',N'اسفند')
FROM dbo.Person