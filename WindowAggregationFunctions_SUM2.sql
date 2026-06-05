--Find the percentage contribution of each product's sales to the total sales
Select 
orderID,productID,Sales,
Sum(Sales) over () [Total sales],
(
	round ((CAST (Sales as float)   /   Sum(Sales) over () *100),2)
														) [Percentage Contribution]
From Sales.Orders;



