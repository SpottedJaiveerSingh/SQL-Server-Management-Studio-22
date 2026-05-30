select 
	CreationTime,
	datetrunc(year, CreationTime) year,
	datetrunc(month, CreationTime) month,
	datetrunc(day, CreationTime) day,
	datetrunc(hour, CreationTime) hour,
	datetrunc(MINUTE, CreationTime)min,
	datetrunc(Second, CreationTime )sec
from Sales.Orders