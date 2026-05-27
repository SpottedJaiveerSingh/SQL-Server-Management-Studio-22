--Intersect
(select 
	Sales.Customers.FirstName as name,
	Sales.Customers.LastName as surname
from Sales.Customers)

Intersect

(select 
	Sales.Employees.FirstName ,
	Sales.Employees.LastName
from Sales.Employees)