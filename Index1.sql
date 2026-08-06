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
DROP Index idx DBCustomers CustomerID on Sales.DBCustomers
--to show
Select 
*
From Sales.DBCustomers
Where LastName = 'Brown'

--to create nonclustered index
Create nonclustered index idx_DBCustomers_LastName
on Sales.DBCustomers (LastName)

select 