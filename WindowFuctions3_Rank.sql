--Rank each order based on their sales from highest to the lowest
--additionally provide details like orderid and orderdate
--|BASICALLY WE ARE WORKING ON THE FRAME CLAUSE HERE|
Select 
	OrderID, OrderDate, sales,
	Rank() over ( Order by sales desc) RankSales
	From Sales.Orders;