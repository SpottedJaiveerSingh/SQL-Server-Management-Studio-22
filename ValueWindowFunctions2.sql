--FIND THE LOWEST AND HIGHES SALES FROM EACH PRODUCT
--usage for 
 Select
 OrderID,ProductID,Sales,
 FIRST_VALUE(Sales) OVER ( Partition by ProductID Order by  Sales) LowestSales,
 Min(Sales) over (Partition by ProductID) LowestSales,
 LAST_VALUE(Sales) OVER ( Partition by ProductID Order by  Sales rows between current row and unbounded following) HighestSales,
 FIRST_VALUE(Sales) OVER ( Partition by ProductID Order by  Sales desc) HighestSales,
 Max(Sales) over (partition by ProductID)HighestSales 
 From Sales.Orders