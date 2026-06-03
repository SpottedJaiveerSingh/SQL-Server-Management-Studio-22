--frame clause
SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS BETWEEN 2 PRECEDING and CURRENT ROW) TotalSales
FROM Sales.Orders
--shortcut COMPACT FORM
SELECT
OrderID,
OrderDate,
OrderStatus,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus ORDER BY OrderDate
ROWS 2 Preceding) TotalSales
FROM Sales.Orders
