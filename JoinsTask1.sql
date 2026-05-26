/*Using salesdb retrieve a list of all orders
along with the related customer's products and employees Details
orderid, customername, prodname, sales, productprice, salespersons name*/
select * from Sales.Orders;
select * from Sales.Customers;
select * from Sales.Products;
select * from Sales.Employees; 
select * from Sales.OrdersArchive;
