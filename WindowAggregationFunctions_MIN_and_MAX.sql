--MIN(), MAX()
--Find the highest and lowest sales across all orders,
--and the highest and lowest sales for each product,
--Additionally provide details such as order id and order date
Select 
	OrderID,OrderDate, Sales, 
	Min(Sales) over () [LowestSalesAcrossAllOrders],
	Max(Sales) over () [HighestSalesAcrossAllOrders],
	Min(Sales) over (Partition by ProductID) [Lowest by productID],
	Max(Sales) over (Partition by ProductID) [Highest by productID],
	Min(Coalesce(Sales,0)) over (Partition by ProductID) [Null handled Lowest by productID],
	Max(Coalesce(Sales,0)) over (Partition by ProductID) [Null handled highest by productID]
From Sales.Orders;

--Task: Show the employees who have the highest salaries
Select 
	EmployeeID,FirstName,Department, Gender,Salary,
	Max(Salary) over (Partition by Department) [Max salary by Dept],
	Max(Salary) over (Partition by Gender) [Max salary by Gender]
From Sales.Employees;
--Fetch the employee details with highest Salary:
Select * from
(
	Select *, 
	Max(Salary) Over ()[HighestSalary]
	From Sales.Employees)t
Where Salary=HighestSalary;
-- Calculate the deviation of each sale from the highest and lowest  sales amount:
Select 
	OrderID,OrderDate, Sales, 
	Min(Sales) over () [LowestSalesAcrossAllOrders],
	Max(Sales) over () [HighestSalesAcrossAllOrders],
	(Max(Sales) over () - Sales) [deviation of each sale from the highest],
	(Sales-Min(Sales) over ())   [deviation of each sale from the lowest]
From Sales.Orders;

