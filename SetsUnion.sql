--key consideration for set operation: num of columns are same, and data types are same. MAKE SURE IT. 
--UNION
(select 
	Sales.Customers.FirstName,
	Sales.Customers.LastName
from Sales.Customers)

UNION

(select 
	Sales.Employees.FirstName,
	Sales.Employees.LastName
from Sales.Employees)


