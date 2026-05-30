select
Format(OrderDate,'MMM yy') OrderDate,
Count(*)
from Sales.Orders
group by Format(OrderDate,'MMM yy')