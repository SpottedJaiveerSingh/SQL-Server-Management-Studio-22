--STEP 1 Create Log Table
Create table Sales.EmployeeLogs(
	LogID int identity(1,1)Primary key,
	EmployeeID int,
	LogMessage Varchar(255),
	LogDate DATE
);
--STEP 2 Create Trigger on employees table
Create Trigger trg_AfterInsertEmployee on Sales.Employees
AFTER INSERT AS 
BEGIN
	INSERT INTO Sales.EmployeeLogs(EmployeeID, LogMessage, LogDate)
	SELECT 
		EmployeeID,
		'New Employee Added ='+ CAST(EmployeeID as varchar),
		GETDATE()
		FROM INSERTED
END
--STEP 3 INSERT NEW DATA INTO EMPLOYEES
Select * From Sales.EmployeeLogs
Insert into Sales.Employees
Values
(6, 'Maria', 'Doe', 'HR', '1988-01-12','F',80000,3 )
--on every addition of values trigger will trigger.
--use it on the respective applications
--
Select * From Sales.EmployeeLogs