select 
'2026-05-31' Date,
day('2026-05-31') DayFromDate,
Month('2026-05-31') MonthFromDate,
year('2026-05-31') YearFromDate;

Select 
OrderDate,
day(OrderDate) DayFromDate,
Month(OrderDate) MonthFromDate,
year(OrderDate) YearFromDate
from Sales.Orders;