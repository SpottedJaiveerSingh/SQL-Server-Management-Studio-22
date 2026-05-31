--Handling Nulls before the mathematical operations
select 
	CustomerID,
	FirstName,
	LastName,
	Score from Sales.Customers;
--print the full names and increment the scores by +10 points:
select 
	CustomerId,
	FirstName+' '+ isnull(LastName,'') [Full name],
	isnull(Score,0)+10 [10Units Incremented Score]
	from Sales.Customers