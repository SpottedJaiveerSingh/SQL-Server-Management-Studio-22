--LEAD LAG usage for the time series analysis, mom yoy doy.
--Analyse the month over month perfmnce by finding the % change
--in sales b/w the current and prev months
Select *,
	MonthSales-PrevMonthSales as MoMchange,
	ROUND(CAST((MonthSales-PrevMonthSales) AS FLOAT)/PrevMonthSales*100,1) as MoMpercentchange
from
	(Select
	Month(OrderDate) [Month],
	Sum(Sales) [MonthSales],
	Lag(SUM(Sales))over(Order by Month(OrderDate)) PrevMonthSales
	from Sales.Orders
	Group by Month(OrderDate))t

	--analyze customer loyalty by ranking customers 
	--based on the average number of days between orders
	Select
	CustomerID,
	AVG([Days Until Next Order]) [Average Days],
	RANK() Over (Order by COALESCE(AVG([Days Until Next Order]),999999) ) [Rank Average]
	from(
	Select OrderID, CustomerID, 
	OrderDate [Current Order Date],
	LEAD(OrderDate) OVER (Partition by CustomerID Order by OrderDate) [Next Order Date],
	DATEDIFF(day,OrderDate,LEAD(OrderDate) OVER (Partition by CustomerID Order by OrderDate)) [Days Until Next Order]
	From Sales.Orders)t
	GROUP BY CustomerID