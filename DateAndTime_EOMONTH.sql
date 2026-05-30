select 
	CreationTime,
	EOMONTH(CreationTime) EndOfMonthDate,
	Cast(DateTrunc(Month, CreationTime) as Date )StartOfMonthDate
from Sales.Orders