-->Example for the SQL EXECUTE WINDOW FUNCTIONS AFTER WHERE CLAUSE
-->Find the totoal sales for each order status only for two products 101 and 102
SELECT
OrderID,
OrderDate,
OrderStatus,
ProductID,
Sales,
SUM(Sales) OVER (PARTITION BY OrderStatus) TotalSales
FROM Sales.Orders
WHERE ProductID in (101,102)