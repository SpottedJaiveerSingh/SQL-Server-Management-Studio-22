----Select * 
----into Sales.DBCustomers
----From Sales.Customers
--Select * 
--From Sales.DBCustomers
--Where CustomerID=1

--to create clustered index
Create clustered index idx_DBCustomers_CustomerID
on Sales.DBCustomers (CustomerID)
--to delete
DROP Index idx_DBCustomers_CustomerID on Sales.DBCustomers
--to show
Select 
*
From Sales.DBCustomers
Where LastName = 'Brown'

--to create nonclustered index
Create nonclustered index idx_DBCustomers_LastName
on Sales.DBCustomers (LastName)

CREATE CLUSTERED COLUMNSTORE INDEX idx_DBCustomers_CS
on Sales.DBCustomers
CREATE NONCLUSTERED COLUMNSTORE INDEX idx_DBCustomers_FirstName
on Sales.DBCustomers (FirstName)
-------------------------------------------------------------------------------------------------------------------------------------
