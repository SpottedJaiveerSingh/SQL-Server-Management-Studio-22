--Task:Provide view that combines details from orders, products, 
--     customers, and employees
--HIDING COMPLEXITY BY USING VIEW
CREATE VIEW Sales.V_ORDER_DETAILS AS(
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
);
SELECT * FROM Sales.V_ORDER_DETAILS;