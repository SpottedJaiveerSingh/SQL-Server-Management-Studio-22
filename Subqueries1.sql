--Result Types
--First: Scalar Subquery
Select 
Avg(Sales)
From (Select * from Sales.Orders)t;
--Second: Row Subquery
Select 
Sales
From (Select * from Sales.Orders)t;
--Third: Table Subquery
Select 
Sales, OrderDate
From (Select * from Sales.Orders)t

--Task: Find the products that have a price
-- higher than the average price of all products

Select *
from(
Select
ProductID,
Price,
AVG(Price) Over () AvgPrice
From Sales.Products)t where 
Price>AvgPrice
--Rank Customers based on their total amount of sales
Select
*,
Rank() over (Order By TotalSales DESC)CustomerRank
From(SELECT 
CustomerID,
SUM(Sales) TotalSales
From Sales.Orders
GROUP BY CustomerID)t 
--Show the productIDs, ProductNames, Prices, And the total numner of orders
Select
ProductID,
Product,
Price,
(Select Count(*) From Sales.Orders)TotalOrders
From Sales.Products
--Show all customer details and find the total orders for each customers
Select 
*
From Sales.Customers c
Left join (
	Select
	CustomerID,
	Count(*)TotalOrders
	From Sales.Orders
	Group by CustomerID) o
on c.CustomerID=o.CustomerID
