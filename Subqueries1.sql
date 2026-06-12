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
--Find the Product that have a price higher than the ag price of all products
select *
from Sales.Products
Where Price>(
			Select avg(Price)
			From Sales.Products)
--Show the details of orfers made by customers in germany
Select * from Sales.Orders
Where CustomerID IN (
					Select CustomerID From Sales.Customers
					Where Country='Germany')
--Show the details of orders made by customers not in germany
Select * from Sales.Orders
Where CustomerID IN (
					Select CustomerID From Sales.Customers
					Where Country!='Germany')
 --Find F employess whose salaries are > than the salaries of any M employess
 Select * from Sales.Employees
 Where Gender='F' AND 
 Salary >
		ANY(Select Salary
		from Sales.Employees
		Where Gender='M')
 --Find F employess whose salaries are > than the salaries of ALL M employess
 Select * from Sales.Employees
 Where Gender='F' AND 
 Salary >
		ALL(Select Salary
		from Sales.Employees
		Where Gender='M')
--Show all customer details and find total orders for each customer
Select *,
(Select COUNT(*) From Sales.Orders 
where Sales.Orders.CustomerID=Sales.Customers.CustomerID) TotalSales
From Sales.Customers
--SHow the order details for customers in germany
Select *
From Sales.Orders
Where Exists 
	(Select 1   
	From Sales.Customers
	WHere Country='Germany'
	And Sales.Orders.CustomerID=Sales.Customers.CustomerID)

