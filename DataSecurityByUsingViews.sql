--Provide a view for EU sales team that combines details from all tables
--and excludes data related to the USA
--DATA SECURITY 
CREATE VIEW Sales.V_ORDER_DETAILS_NOT_USA AS(
	Select 
	o.OrderID,
	o.OrderDate,
	p.Product,
	p.Category,
	COALESCE(c.FirstName,'')+ ' ' + COALESCE( c.LastName,'') CustomerName,
	c.Country CustomerCountry,
	COALESCE(e.FirstName,'')+ ' ' + COALESCE( e.LastName,'') SalesName,
	e.Department,
	o.Sales,
	o.Quantity
	From Sales.Orders o
	Left join Sales.Products p
	on p.ProductID=o.ProductID
	Left join Sales.Customers c
	on c.CustomerID=o.CustomerID
	Left join Sales.Employees e
	on e.EmployeeID=o.SalesPersonID
	WHERE Country != 'USA'
);
SELECT * FROM Sales.V_ORDER_DETAILS_NOT_USA
