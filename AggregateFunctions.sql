--AGGREGATE FUNCTIONS
Select customer_id,
	--find total number of orders
	Count(*) totalCountofOrders,

	--find total number of orders
	Sum(sales) totalSalesOfOrders,

	--find avg sales of orders
	AVG(sales) AvgSalesOfOrders,

	--find highest sales of orders
	MAX(sales) highestSalesOfOrders,

	--find lowest sales of orders
	Min(sales) lowestSalesOfOrders
From Orders
Group by customer_id
