--aggregate functions - count()
--TASK: Count the number of orders
Select Count(1) from Sales.Orders;
--Additionally provide details such as order id and order date
Select 
	OrderID, OrderDate,
	Count(*) over () [Number of Orders]
	from Sales.Orders;
--partition by customers
Select 
	OrderID, OrderDate,CustomerID,
	Count(*) over (Partition by CustomerID) [Number of Orders by customers]
	from Sales.Orders;