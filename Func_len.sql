--length of customers name
select 
	FirstName,
	Len(FirstName) as Length
from Sales.Customers

