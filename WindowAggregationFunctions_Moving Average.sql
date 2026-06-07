--Calculate the average of sales for each product over time

--Calculate the moving average of sales for each product over time

--Calculate the moving average of sales for each product over time including the next order

Select 
	OrderID,
	ProductID,
	OrderDate,
	Sales,
	avg(Sales) over (Partition by ProductID) [AveragebyProduct],
	avg(Sales) over (Partition by ProductID Order by OrderDate ) [Moving Average of Sales],
	avg(Sales) over (Partition by ProductID Order by OrderDate rows between current row and 1 following ) [Moving Average of Sales including next order]
From Sales.Orders;

	