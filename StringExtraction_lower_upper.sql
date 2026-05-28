select
	FirstName,
	right(Trim(FirstName),2   ) as First_name_2
from Sales.Customers