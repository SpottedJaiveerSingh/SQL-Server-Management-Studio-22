--AVG()
--simple vs coalesce
Select 
	OrderID,OrderDate, Sales, 
	Avg(Sales) over () [Normal Avg],
	Avg(Sales) over (Partition by ProductID) [Normal Avg by productID],
	Avg(Coalesce(Sales,0)) over (Partition by ProductID) [Null handled avg by productid]
From Sales.Orders;


Select 
	CustomerID,LastName, Score, 
	Avg(Score) over () [Normal Avg],
	Avg(Coalesce(Score,0)) over () [Null handled avg by productid]
From Sales.Customers;

--Task: find all the rows where sales are high than the average sales across all orders
Select
* From 
(Select 
	OrderID,ProductID, Sales, 
	Avg(Coalesce(Sales,0)) over (Partition by ProductID) [AVG]
From Sales.Orders)t
Where Sales>[AVG];