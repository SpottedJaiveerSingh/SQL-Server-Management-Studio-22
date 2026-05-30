--Part Extraction Use Case: DATA FILTERING

--|Show all orders that are placed in month of february!!|
select *
From Sales.Orders
Where Datepart(month, OrderDate)=2;

--or--
select *
From Sales.Orders
Where month(OrderDate)=2;

--or--BUT THIS is SLOW AS STRING
select *
From Sales.Orders
Where DateName(month, OrderDate)='february';
