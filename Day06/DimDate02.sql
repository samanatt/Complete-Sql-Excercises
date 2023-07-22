
if exists (select * from sysobjects where name = 'DimDate') 

	Drop table [DimDate];



CREATE TABLE [dbo].[DimDate](

	[DateKey] [int] NOT NULL primary key,

	[FullDateAlternateKey] [nvarchar](10) NOT NULL,

	[CalendarYear] [smallint] NOT NULL,

	[MonthNumberOfYear] [tinyint] NOT NULL,

	[MonthName] [nvarchar](10) NOT NULL,

	[DayOfWeek] [smallint] NOT NULL,

	[DayOfWeekName] [nvarchar](30) NOT NULL,

	[CalendarSeason] [tinyint] NOT NULL,

	[SeasonName] [nvarchar](10) NULL,



	[PersianDateKey] [int] NOT NULL,

	[PersianFullDateAlternateKey] [nvarchar](10) NOT NULL,

	[PersianCalendarYear] [smallint] NOT NULL,

	[PersianMonthNumberOfYear] [tinyint] NOT NULL,

	[PersianMonthName] [nvarchar](10) NOT NULL,

	[PersianDayOfWeek] [smallint] NOT NULL,

	[PersianDayOfWeekName] [nvarchar](30) NOT NULL,

	[PersianCalendarSeason] [tinyint] NOT NULL,

	[PersianSeasonName] [nvarchar](10) NULL

) ON [PRIMARY]

GO

