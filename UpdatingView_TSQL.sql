--Using T-SQL (Programming way in SQL)
--For Updating View
IF OBJECT_ID ('Sales.V_MONTHLY_SUMMARY', 'V') IS NOT NULL
	DROP VIEW Sales.V_MONTHLY_SUMMARY;
GO

CREATE VIEW Sales.V_MONTHLY_SUMMARY as
(
Select
	DATETRUNC(Month, OrderDate) OrderMonth,
	SUM(Sales) TotalSales,
	Count(OrderID ) TotalOrders,
	Sum(Quantity) TotalQuantities
	From Sales .Orders
	Group by DATETRUNC(Month, OrderDate)
)