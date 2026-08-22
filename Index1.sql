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
--heap
use AdventureWorksDW2025
Select *
into FactInternetSales_HP
from FactInternetSales

--Rowstore
Select *
into FactInternetSales_RS
from FactInternetSales
Create Clustered Index idx_FactInternetSales_RS_PK
On FactInternetSales_RS (SalesOrderNumber, SalesOrderLineNumber)

--Columnstore
Select *
into FactInternetSales_CS
from FactInternetSales
Create Clustered Columnstore Index idx_FactInternetSales_CS_PK
On FactInternetSales_CS


