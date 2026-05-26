/*Using salesdb retrieve a list of all orders
along with the related customer's products and employees Details
orderid, customername, prodname, sales, productprice, salespersons name*/
select 
	o.OrderID,
	o.Sales,
	c.CustomerID,
	c.FirstName as customerFirstName,
	c.LastName as customerLastName,  
	p.ProductID,
	p.Product as ProductName,
	p.Price,
	e.FirstName as SalesPersonFirstName,
	e.LastName as SalesPersonLastName
from Sales.Orders as o
LEFT JOIN Sales.Customers as c
on o.CustomerID=c.CustomerID
LEFT JOIN Sales.Products as p
on o.ProductID=p.ProductID
Left JOIN Sales.Employees as e
on e.EmployeeID=o.SalesPersonID


