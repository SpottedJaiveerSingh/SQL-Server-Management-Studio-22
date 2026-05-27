--Remove the dashes  - to the slashes /
Select * from Sales.Orders;
Select 
	Replace(OrderDate,'-','.')
from Sales.Orders