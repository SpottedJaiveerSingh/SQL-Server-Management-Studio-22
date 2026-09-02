--Working on EXECUTIONS
select *
into FactResellerSales_HP -- made a new table with heap structure
From FactResellerSales

select * 
from FactResellerSales_HP
order by SalesOrderNumber


