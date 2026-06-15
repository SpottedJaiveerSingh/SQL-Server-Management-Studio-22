--Find the running total of sales for each month
--USING VIEWS

--WITH CTE_MONTHLY_SUMMARY AS (
--	Select
--	DATETRUNC(Month, OrderDate) OrderMonth,
--	SUM(Sales) TotalSales,
--	Count(OrderID) TotalOrders,
--	Sum(Quantity) TotalQuantities
--	From Sales.Orders
--	Group by DATETRUNC(Month, OrderDate)
--)
Select 
OrderMonth,
TotalSales,
SUM(TotalSales) over (Order by OrderMonth) as RunningTotal
From V_MONTHLY_SUMMARY;