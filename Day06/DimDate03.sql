

Declare @date datetime = '1990-01-01'

Declare 

	@DateKey int, 

	@FullDateAlternateKey nvarchar(10), 

	@CalendarYear smallint, 

	@MonthNumberOfYear tinyint, 

	@MonthName nvarchar(10), 

	@DayOfWeek smallint,

	@DayOfWeekName nvarchar(30),

	@CalendarSeason tinyint, 

	@SeasonName nvarchar(10),



	@PersianDateKey int, 

	@PersianFullDateAlternateKey nvarchar(10), 

	@PersianCalendarYear smallint, 

	@PersianMonthNumberOfYear tinyint, 

	@PersianMonthName nvarchar(10), 

	@PersianDayOfWeek smallint,

	@PersianDayOfWeekName nvarchar(30),

	@PersianCalendarSeason tinyint, 

	@PersianSeasonName nvarchar(10)



While @date < '2050-01-01'

Begin

	SET @FullDateAlternateKey = convert(varchar(10), @date, 111)

	SET @DateKey = replace(@FullDateAlternateKey,'/','')

	SET @CalendarYear = substring(@FullDateAlternateKey , 1, 4)

	SET @MonthNumberOfYear = substring(@FullDateAlternateKey , 6, 2)



	SET @PersianFullDateAlternateKey = dbo.G2J (@date)  

	SET @PersianDateKey = replace(@PersianFullDateAlternateKey,'/','')

	SET @PersianCalendarYear = substring(@PersianFullDateAlternateKey , 1, 4)

	SET @PersianMonthNumberOfYear = substring(@PersianFullDateAlternateKey , 6, 2)



	If		@MonthNumberOfYear='12'	SET @MonthName='December'

	ELSE IF @MonthNumberOfYear='11' SET @MonthName='November'

	ELSE IF @MonthNumberOfYear='10' SET @MonthName='October'

	ELSE IF @MonthNumberOfYear='09' SET @MonthName='September'

	ELSE IF @MonthNumberOfYear='08' SET @MonthName='August'

	ELSE IF @MonthNumberOfYear='07' SET @MonthName='July'

	ELSE IF @MonthNumberOfYear='06' SET @MonthName='June'

	ELSE IF @MonthNumberOfYear='05' SET @MonthName='May'

	ELSE IF @MonthNumberOfYear='04' SET @MonthName='April'

	ELSE IF @MonthNumberOfYear='03' SET @MonthName='March'

	ELSE IF @MonthNumberOfYear='02' SET @MonthName='February'

	ELSE IF @MonthNumberOfYear='01' SET @MonthName='January'



	If		@PersianMonthNumberOfYear='12' SET @PersianMonthName=N'اسفند'

	ELSE IF @PersianMonthNumberOfYear='11' SET @PersianMonthName=N'بهمن'

	ELSE IF @PersianMonthNumberOfYear='10' SET @PersianMonthName=N'دی'

	ELSE IF @PersianMonthNumberOfYear='09' SET @PersianMonthName=N'آذر'

	ELSE IF @PersianMonthNumberOfYear='08' SET @PersianMonthName=N'آبان'

	ELSE IF @PersianMonthNumberOfYear='07' SET @PersianMonthName=N'مهر'

	ELSE IF @PersianMonthNumberOfYear='06' SET @PersianMonthName=N'شهریور'

	ELSE IF @PersianMonthNumberOfYear='05' SET @PersianMonthName=N'مرداد'

	ELSE IF @PersianMonthNumberOfYear='04' SET @PersianMonthName=N'تیر'

	ELSE IF @PersianMonthNumberOfYear='03' SET @PersianMonthName=N'خرداد'

	ELSE IF @PersianMonthNumberOfYear='02' SET @PersianMonthName=N'اردیبهشت'

	ELSE IF @PersianMonthNumberOfYear='01' SET @PersianMonthName=N'فروردین'



	if @MonthNumberOfYear between 1 and 3

	begin

		set @SeasonName = 'Spring'

		set @CalendarSeason = 1

	end

    else		

	if @MonthNumberOfYear between 4 and 6

	begin

		set @SeasonName = 'Summer'

		set @CalendarSeason = 2

	end

    else		

	if @MonthNumberOfYear between 7 and 9

	begin

		set @SeasonName = 'Autumn'

		set @CalendarSeason = 3

	end

    else		

	if @MonthNumberOfYear between 10 and 12

	begin

		set @SeasonName = 'Winter'

		set @CalendarSeason = 4

	end



	---------------------------

	if @PersianMonthNumberOfYear between 1 and 3

	begin

		set @PersianSeasonName = N'بهار'

		set @PersianCalendarSeason = 1

	end

    else		

	if @PersianMonthNumberOfYear between 4 and 6

	begin

		set @PersianSeasonName = N'تابستان'

		set @PersianCalendarSeason = 2

	end

    else		

	if @PersianMonthNumberOfYear between 7 and 9

	begin

		set @PersianSeasonName = N'پاییز'

		set @PersianCalendarSeason = 3

	end

    else		

	if @PersianMonthNumberOfYear between 10 and 12

	begin

		set @PersianSeasonName = N'زمستان'

		set @PersianCalendarSeason = 4

	end



	Set @DayOfWeek = datepart(dw,@date)

	Set @DayOfWeekName =  datename(dw,@date)



	Set @PersianDayOfWeek = iif(@DayOfWeek + 1 = 8, 1, @DayOfWeek + 1)

	if @PersianDayOfWeek = 1

		Set @PersianDayOfWeekName =  N'شنبه'

	else if @PersianDayOfWeek = 2

		Set @PersianDayOfWeekName =  N'یکشنبه'

	else if @PersianDayOfWeek = 3

		Set @PersianDayOfWeekName =  N'دوشنبه'

	else if @PersianDayOfWeek = 4

		Set @PersianDayOfWeekName =  N'سه شنبه'

	else if @PersianDayOfWeek = 5

		Set @PersianDayOfWeekName =  N'چهارشنبه'

	else if @PersianDayOfWeek = 6

		Set @PersianDayOfWeekName =  N'پنجشنبه'

	else if @PersianDayOfWeek = 7

		Set @PersianDayOfWeekName =  N'جمعه'



	Insert DimDate

		(

		[DateKey]

		,[FullDateAlternateKey]

		,[CalendarYear]

		,[MonthNumberOfYear]

		,[MonthName]

		,[DayOfWeek]

		,[DayOfWeekName]

		,[CalendarSeason]

		,[SeasonName]

		,[PersianDateKey]

		,[PersianFullDateAlternateKey]

		,[PersianCalendarYear]

		,[PersianMonthNumberOfYear]

		,[PersianMonthName]

		,[PersianDayOfWeek]

		,[PersianDayOfWeekName]

		,[PersianCalendarSeason]

		,[PersianSeasonName]

		)

	Values (@DateKey, @FullDateAlternateKey, @CalendarYear, @MonthNumberOfYear, @MonthName, @DayOfWeek, @DayOfWeekName, @CalendarSeason, @SeasonName,

			@PersianDateKey, @PersianFullDateAlternateKey, @PersianCalendarYear, @PersianMonthNumberOfYear, @PersianMonthName, @PersianDayOfWeek, @PersianDayOfWeekName, @PersianCalendarSeason, @PersianSeasonName)



	set @date = dateadd(d, 1, @date) 

End

