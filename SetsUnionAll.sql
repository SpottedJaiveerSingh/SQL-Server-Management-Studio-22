select * from Sales.Customers;
select * from Sales.Employees;

select 
	FirstName,
	LastName
from Sales.Customers

UNION ALL

select 
	FirstName,
	LastName
from Sales.Employees
