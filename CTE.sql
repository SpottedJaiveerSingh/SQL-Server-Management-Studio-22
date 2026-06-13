--CTE
--Step1 FInd the total sales per customer
WITH CTE_TOTAL_SALES as 
(
Select
	CustomerID,
	SUM(Sales) as TotalSales
From Sales.Orders
Group  by CustomerID),
--Step2 FInd the last order date per customer
--Multiple Standalone CTE by comma usage
CTE_LAST_ORDER as 
(
Select CustomerID,
MAX(OrderDate) as Last_Order
From Sales.Orders
Group by CustomerID
)
--STEP3 RANK CUSTOMERS BASED ON TOTAL SALES PER CUSTOMER
--NESTED CTE
,CTE_Customer_Rank as 
(
SELECT 
CustomerID,
TotalSales,
RANK() over (Order By TotalSales DESC) as CustomerRank
From CTE_TOTAL_SALES
)
--STEP 4 SEGMENT CUSTOMERS BASED ON THEIR TOTAL SALES
,CTE_CUSTOMER_SEGMENT AS 
(
Select CustomerID,
TotalSales,
CASE WHEN TotalSales>100 THEN 'HIGH'
	WHEN TotalSales>50 THEN 'MEDIUM'
	ELSE 'LOW'
	END CustomerSegments
FROM CTE_TOTAL_SALES
)
--main query
Select 
c.CustomerID,
c.FirstName,c.LastName,
CTE_TOTAL_SALES.TotalSales,
Last_Order,
CustomerRank,
CustomerSegments 
From  Sales.Customers c
LEFT JOIN CTE_TOTAL_SALES
on CTE_TOTAL_SALES.CustomerID=c.CustomerID
LEFT JOIN CTE_LAST_ORDER
on CTE_LAST_ORDER.CustomerID=c.CustomerID
LEFT JOIN CTE_Customer_Rank
on CTE_Customer_Rank.CustomerID=c.CustomerID
LEFT JOIN CTE_CUSTOMER_SEGMENT
On CTE_CUSTOMER_SEGMENT.CustomerID=c.CustomerID;

--Recursve CTE
--TASK: GENERATE A SEQ OF NUMS FROM 1 to 20
With SEQ as 
(
	Select 
	1 AS MyNumber

	UNION ALL

	Select 
	MyNumber+1
	FROM SEQ
	WHERE MyNumber<20
)
Select *
From SEQ;

----------------------
--Show the employee hierarchy by displaying each employees;s level
--within the orgnanisation
With CTE_EMP_HIERARCHY AS (
Select 
	EmployeeID,
	FirstName,
	ManagerID,
	1 AS LEVEL
From Sales.Employees
Where ManagerID is NULL

UNION ALL

Select
	Sales.Employees.EmployeeID,
	Sales.Employees.FirstName,
	Sales.Employees.ManagerID,
	LEVEL+1
From Sales.Employees
INNER JOIN CTE_EMP_HIERARCHY
on Sales.Employees.ManagerID=CTE_EMP_HIERARCHY.EmployeeID

)
Select *
From CTE_EMP_HIERARCHY