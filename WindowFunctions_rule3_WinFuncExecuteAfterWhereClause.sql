--Find the total sales for each order status only for two products 101, and 102
--(this example is for the SQL execute window functions after where clause)
select 
	OrderID,OrderDate,OrderStatus,ProductID,Sales,
	Sum(Sales)over(Partition By OrderStatus) TotalSales
from sales.Orders
where ProductID in (101,102)