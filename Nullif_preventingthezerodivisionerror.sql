--find the sales price for each order by dividing sales by quantity
--PREVENTING THE GREAT ZERO DIVION ERROR BY THE NULLIF METHOD
select 
	OrderID,
	Sales,
	Quantity
from Sales.Orders
-------------------------------------------------------------------
select 
	OrderID,
	Sales,
	Quantity,
	Sales/Nullif(Quantity,0) [Sales Price]
from Sales.Orders