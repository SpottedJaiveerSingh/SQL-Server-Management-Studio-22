Select
DATETRUNC(month, CreationTime) as CreationDate,
Count(*) Count
from Sales.Orders
Group by DATETRUNC(month, CreationTime)