 --Part Extraction Use Case: DATA AGGREGATIONS


 --|How many Orders were placed each years??|
 select 
 year(Orderdate) Year,
 Count(*) count
 From Sales.Orders
 Group by year(Orderdate);

 --|How many Orders were placed each month??|
 select 
 Month(Orderdate) month,
 Count(*) count
 From Sales.Orders
 Group by month(Orderdate);
