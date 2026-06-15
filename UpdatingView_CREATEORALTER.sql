--CREATE OR REPLACE 
--Use when youre updating something!!!
CREATE OR ALTER VIEW Sales.V_MONTHLY_SUMMARY as
(
Select
	DATETRUNC(Month, OrderDate) OrderMonth,
	SUM(Sales) TotalSales,
	Count(OrderID) TotalOrders,
	Sum(Quantity) TotalQuantities
	From Sales .Orders
	Group by DATETRUNC(Month, OrderDate)
)
--Or Drop and recreate. 
  