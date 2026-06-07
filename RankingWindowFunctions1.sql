--Rank the orders based on their salaries from highest to lowest 
--row_number, rank, dense_rank
Select 
OrderID, ProductID, Sales,
ROW_NUMBER() OVER (ORDER BY Sales DESC) SalesRank_row,
RANK() OVER (ORDER BY Sales DESC) SalesRank_rank,
DENSE_RANK() OVER (ORDER BY Sales DESC) SalesRank_dense_rank
FROM Sales.Orders;


--Find the top hgiest sales for each product
--top-n-analysis
Select * from 
(Select 
OrderID, ProductID, Sales,
ROW_NUMBER() OVER ( Partition by ProductID ORDER BY Sales DESC) RankByProduct
FROM Sales.Orders)t
Where RankByProduct=1;
--Find the lowest 2 customers based on their total sales
--bottom n analysis
Select * from
(Select
CustomerID,
SUM(Sales) TotalSales,
ROW_NUMBER() over(Order by SUM(Sales)) RankCustomers
FROM Sales.Orders
GROUP BY CustomerID)t
where RankCustomers<=2;

--Assign Unique IDs to the rows of the 'Order Archive' Table
--UNIQUE ID GENERATION
Select
Row_number() Over (order by OrderID, OrderDate) UniqueID,
*
From Sales.OrdersArchive;

Select * from 
(Select
Row_number() Over (order by OrderID, OrderDate) UniqueID,
*
From Sales.OrdersArchive)t 
where UniqueID=8;
