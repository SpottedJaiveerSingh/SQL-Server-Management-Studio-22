select
OrderID,
OrderDate,
ShipDate,
CreationTime,
'2026-05-29' HardCoded,
getdate() TodayRightNow
from Sales.Orders
