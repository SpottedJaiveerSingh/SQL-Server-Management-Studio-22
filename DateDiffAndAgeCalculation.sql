--number of shipping days from order date:
select
	OrderDate,
	ShipDate,
	DATEDIFF(DAY, OrderDate, ShipDate) as [time of order to ship]
from Sales.Orders;
--age of employees
select
	FirstName,
	BirthDate,
	DATEDIFF(year,BirthDate, GETDATE()) as [Age of the Employee]
from Sales.Employees

	

