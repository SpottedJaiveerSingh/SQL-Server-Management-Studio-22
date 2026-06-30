--STEP 1 Create Log Table
--Understanding the Triggers
Create table Sales.EmployeeLogs(
	LogID int identity(1,1)Primary key,
	EmployeeID int,
	LogMessage Varchar(255),
	LogDate DATE
) 
--lets do it.
