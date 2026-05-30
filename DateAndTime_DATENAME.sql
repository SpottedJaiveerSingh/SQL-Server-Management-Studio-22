select 
	CreationTime,
	DateName(Month,CreationTime) Month,
	DateName(weekday,CreationTime) WeekDay
from Sales.Orders