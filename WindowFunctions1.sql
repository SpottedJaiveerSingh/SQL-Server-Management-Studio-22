--Find the total sales across all orders,
--Additionally provide details such as orderid, orderdate
Select 
	OrderID, OrderDate,ProductID,
	sum(sales) over () [total sales]
From Sales.Orders;
--Find the total sales across all orders by products
--Additionally provide details such as orderid, orderdate
Select 
	OrderID, OrderDate,ProductID,
	sum(sales) over (Partition by ProductID) [total sales]
From Sales.Orders;
--Altogether: 
Select 
	OrderID, OrderDate,ProductID,
	sales,
	sum(sales) over () [total sales],
	sum(sales) over (Partition by ProductID Order by sales ) [total sales by product]
From Sales.Orders;