select
	OrderDate,
	DATEADD(month, +6, OrderDate) as [OrderDate 6 months later]
from Sales.Orders;