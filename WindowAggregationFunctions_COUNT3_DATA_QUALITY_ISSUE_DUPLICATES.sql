--aggregate functions - count()
--DATA QUALITY ISSUE-DUPLICATES
--TASK: Check whether the Table 'Orders' contains any duplicate rows
Select 
	OrderID,
	count(1) over (partition by OrderID) [CheckPK]
from Sales.Orders;
--checking this in orders archive
Select 
	OrderID,
	count(1) over (partition by OrderID) [CheckPK]
from Sales.OrdersArchive;
--Creating a subquery to get the duplicated rows
Select *
from (
	Select 
		OrderID,
		count(1) over (partition by OrderID) [CheckPK]
    from Sales.OrdersArchive
	)t WHERE [CheckPK]>1