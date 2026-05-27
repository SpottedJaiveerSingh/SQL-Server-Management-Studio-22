select * from Sales.Customers;
select * from Sales.Employees;

-->A-B

select 
	FirstName,
	LastName
from Sales.Customers

EXCEPT

select 
	FirstName,
	LastName
from Sales.Employees;



-->B-A


select 
	FirstName,
	LastName
from Sales.Employees

EXCEPT

select 
	FirstName,
	LastName
from Sales.Customers;

