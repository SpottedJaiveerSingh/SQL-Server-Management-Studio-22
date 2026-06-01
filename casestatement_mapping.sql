select  
EmployeeID,
CASE
	WHEN Gender='M' then 'MALE'
	ELSE 'FEMALE'
END Gender
from Sales.Employees