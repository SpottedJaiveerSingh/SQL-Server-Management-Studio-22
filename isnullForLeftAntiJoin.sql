--left anti join = left join + is null func
--TASK: list all detailes for customers who have not placed any order
Select 
	C.* ,D.OrderID
from Sales.Customers C
left join Sales.Orders D
on C.CustomerID =D.CustomerID
where OrderID is null

