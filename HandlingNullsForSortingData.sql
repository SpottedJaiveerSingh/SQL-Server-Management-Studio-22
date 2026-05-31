--handling nulls for sorting the data
select 
	CustomerID,
	FirstName,
	LastName,
	isnull(Score,0)[_Score_]
	from Sales.Customers
	Order by isnull(Score,0);
--using the case and flags
select 
	CustomerID,
	FirstName,
	LastName,
	Score
	from Sales.Customers
	Order by case when Score is null then 1 else 0 end, Score;
