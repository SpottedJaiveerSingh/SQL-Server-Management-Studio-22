--using create table as method in SQL server!!--CTA
--CREATE CTA
iF Object_ID ('Sales.MonthlyOrders','U') IS NOT NULL
	DROP TABLE Sales.MonthlyOrders;
GO
Select
DATENAME(Month,OrderDate) OrderMonth,
COUNT(OrderID) TotalOrders
INTO Sales.MonthlyOrders
From Sales.Orders
Group by DATENAME(Month,OrderDate);
--USE CTA
Select * from Sales.MonthlyOrders; 
--DELETE CTA
DROP Table Sales.MonthlyOrders;


