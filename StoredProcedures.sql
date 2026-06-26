--Step 1: Write a Query
--For US Customers find the total num of customers and the average score
Select 
Count(*) TotalCustomers,
AVG(Score) AvgScore
From Sales.Customers
Where Sales.Customers.Country='USA';

--Step 2: Turning the Query into a stored procedure
CREATE PROCEDURE GetCustomerSummary as 
begin
Select 
Count(*) TotalCustomers,
AVG(Score) AvgScore
From Sales.Customers
Where Sales.Customers.Country='USA'
end;
--Step 3: Execute  the Strored Procedure
EXEC GetCustomerSummary;
--For German Customers find the total num of customers and average score

--Define Stored procedure
ALTER PROCEDURE GetCustomerSummary @Country NVARCHAR(50) = 'USA' As 
BEGIN

DECLARE @TotalCustomers INT, @AvgScore Float;

Select 
	@TotalCustomers = Count(*),
	@AvgScore=AVG(Score) 
From Sales.Customers
Where Country=@Country ;


PRINT 'Total Customers from ' + @Country + ':' + CAST(@TotalCustomers AS VARCHAR);
PRINT 'Average Score from ' + @Country + ':' + CAST(@AvgScore AS VARCHAR);

--SELECT 
--	Count(OrderID) TotalOrders,
--	Sum(Sales) TotalSales
--From Sales.Orders o
--JOIN Sales.Customers c
--On c.CustomerID=o.CustomerID
--where c.Country=@Country

END

EXEC GetCustomerSummary; 
EXEC GetCustomerSummary @Country = 'Germany';
