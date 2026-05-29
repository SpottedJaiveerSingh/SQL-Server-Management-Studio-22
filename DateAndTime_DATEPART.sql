Select 
OrderDate,
Datepart(week, OrderDate) week,
Datepart(quarter, OrderDate) quarter
from Sales.Orders;