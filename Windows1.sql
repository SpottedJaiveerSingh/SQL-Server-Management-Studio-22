--find total sales of orders
select sum(Sales) TotalSales
from Sales.Orders;
--find total sales for each product
select 
ProductID,
sum(Sales) TotalSales
from Sales.Orders
group by ProductID;
--find total sales for each product
--additionally, provide details as orderid & orderdate
select
	ProductID,
	OrderID, OrderDate,
	sum(Sales) over (partition by ProductID) TotalSales
from Sales.Orders;
